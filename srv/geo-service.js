const cds = require("@sap/cds");
const { data } = require("hdb/lib/protocol");
const LOG = cds.log("geo-service");

module.exports = cds.service.impl(async (srv) => {
  const {
    BusinessPartner,
    BusinessPartnerAddress,
    CustomerProcesses: Customers,
    CorporateAccount,
    Logistics,
    LogisticsPartner
  } = srv.entities;
  const graphAPI = await cds.connect.to("sap.s4");
  const graphCC = await cds.connect.to("GRAPH_CC");
  const messaging = await cds.connect.to("messaging");
  const sapGraph = await cds.connect.to("sap.graph");
  const sapCxsales = await cds.connect.to("sap.c4c");
  const customAPI = await cds.connect.to("custom.ns");
  const shipmentStatus = {
    "SHIPPED": 1,
    "DISPATCHED": 2,
    "DELIVERED": 3
  }
  const BP_CREATED =
    "sap.s4.beh.businesspartner.v1.BusinessPartner.Created.v1";
  srv.on("READ", BusinessPartner, (req) => graphAPI.tx(req).run(req.query));
  srv.on("READ", BusinessPartnerAddress, (req) => graphAPI.tx(req).run(req.query));
  srv.on("READ", "EmployeeCollection", (req) => sapCxsales.run(req.query));


  messaging.on(BP_CREATED, async (msg) => {
    try {
      LOG.info("<< event caught", msg.data);
      const customerId = msg.data.BusinessPartner;
      const payload = {
        customerId,
        status_statusId: 1,
        customerCondition_conditionId: 1,
        criticality: 0,
        backendEventType: msg.headers?.type || "-",
        backendEventSource: msg.headers?.source || "-",
        backendEventTime: msg.headers?.time,
      };
      await INSERT.into(Customers).entries(payload);
      const validCountry = await updateBPCountry(customerId);
      if (validCountry)
        await srv.emit("CustomerReplicate", payload);

    } catch (error) {
      LOG.error("Error in message listener: ", error);
    }

  });


  updateBPCountry = async (customerId) => {

    const bupa = await graphCC.run(
      SELECT.one(BusinessPartner, (bp) => {
          bp.to_BusinessPartnerAddress(address => {
            address('customerCountry')
          })
      }).where({ customerId })
    )
    if (!bupa) return;
    let {to_BusinessPartnerAddress:[{customerCountry}]} = bupa
    if (!customerCountry) return
    await UPDATE(Customers)
      .where({ customerId })
      .with({ customerCountry });
    LOG.info("-- Updated Customer with Country --");
    return bupa;
  };

  srv.on("READ", Customers, async (req, next) => {
    const data = await next();
    const customers = Array.isArray(data) ? data : [data];
    return customers[0] ? await mapDataFromGraph(customers) : customers;
  });

  srv.on("EDIT", Customers, async (req, next) => {
    const data = await next();
    const customers = Array.isArray(data) ? data : [data];
    return customers[0] ? await mapDataFromGraph(customers, true) : customers;
    // return customers;
  });

  srv.before("UPDATE", Customers, async (req) => {
    // Determine changes and update to source system
    await determineChanges(req.data, req.query["_activeData"], req);
  });

  srv.on("READ", Logistics, async (req) => {

    const [{customerId}] = req.params;
    const data =  await customAPI.run(SELECT.from(LogisticsPartner).where({ "customerId": customerId }));
    data.$count = data.length
    if(data.length) {
      setShipmentCriticality(data)
    }
    return data;
  });

  function setShipmentCriticality(data) {
    data.map(obj =>  obj.criticality = shipmentStatus[data.status] || 4)
    return data;
  }

  async function determineChanges(incoming, source, req) {
    if (source.deliveryPoint == null && incoming.deliveryPoint != null) {
      // Update to S/4 system
      await addDeliveryPoint(req, incoming);
    }
    else if (incoming.deliveryPoint !== source.deliveryPoint) {
      // Second update
      req.error(400, "Please contact S/4HANA Cloud administrator for change in delivery point");
    }

    if (source.salesEmployee_empID == null && incoming.salesEmployee_empID != null) {
      // Update to Sales cloud system
      await addAccountTeam(req, incoming);
    }
    else if (incoming.salesEmployee_empID !== source.salesEmployee_empID) {
      // second update
      req.error(400, "Please contact Sales cloud administrator for change in Account Team");
    }
  }

  async function addAccountTeam(req, data) {
    if (data.cxsalesId && data.cxsalesObjectId && data.salesEmployee_empID) {
      const payload = {
        "PartyRoleCode": "142",
        "EmployeeID": data.salesEmployee_empID,
        "MainIndicator": true
      }
      const res = await sapCxsales.post(`/CorporateAccountCollection('${data.cxsalesObjectId}')/CorporateAccountTeam`, payload);
      LOG.debug("Response from sales cloud :: ", res);
    }
    else {
      req.error(400, "SalesCloud system information not available in the record");
    }
  }

  async function addDeliveryPoint(req, data) {
    if (data.deliveryPoint) {
      const payload = {
        "UnloadingPointName": data.deliveryPoint,
        "CustomerFactoryCalenderCode": "01",
        "Customer": data.customerId,
        "IsDfltBPUnloadingPoint": true
      }

      const res = await graphCC.post(`/A_BusinessPartner/${data.customerId}/to_Customer/to_CustomerUnloadingPoint`, payload);
      LOG.debug("Response from S/4 :: ", res);
    }
  }

  async function mapDataFromGraph(customers, isEdit) {

    const bpIDs = customers.map((bp) => bp.cxsalesId).filter(n => n);
    LOG.info("Request information for ::: ", bpIDs);
    // if(bpIDs.length ==0 && req?.query.SELECT.columns.findIndex(({ expand, ref }) => expand && ref[0] === 'salesEmployee') > 0) return await getAccountTeam(customers);
    if (bpIDs.length == 0) return isEdit? customers[0]:customers;
    let bpAddress = await prepareExpandedQuery(sapGraph, CorporateAccount, bpIDs);
    bpAddress = await contextMapper(bpAddress, filterDefaultPoint, customerFallback);
    LOG.debug("bp === ", bpAddress);
    // Convert in a map for easier lookup
    customers = converToMap(bpAddress, customers);
    return isEdit?customers[0]: customers;
  }

  function filterDefaultPoint(data) {
    let deliveryPointObj = data?.filter(o => o.IsDfltBPUnloadingPoint == true);
    return deliveryPointObj ? deliveryPointObj[0]?.UnloadingPointName : null;
  }

  async function customerFallback(bp) {
    // When _s4 is null or connectivity failiure
    let fallBackID = await cds.run(SELECT.one(Customers, c => c.customerId).where({ cxsalesId: bp.displayId }));
    return fallBackID?.customerId;
  }

});
function converToMap(bpAddress, customers) {
  const businessPartnerMap = {};
  for (const businessPartner of bpAddress) {
    businessPartnerMap[businessPartner.customerId] = businessPartner;
  }
  customers.forEach((cust) => {
    Object.assign(cust, businessPartnerMap[cust.customerId]);
  });
  return customers
}

async function prepareExpandedQuery(sapGraph, CorporateAccount, bpIDs) {
  return await sapGraph.run(SELECT.from(CorporateAccount, (c) => {
    c('*'),
      c.addresses(address => {
        address('*'),
          address.phoneNumbers(phone => {
            phone('*');
          }),
          address.emailAddresses(email => {
            email('*');
          });
      }),
      c._s4(bp => {
        bp('*'),
          bp.to_Customer(cust => {
            cust.to_CustomerUnloadingPoint(point => {
              point('*');
            })
            // .where({ 'IsDfltBPUnloadingPoint': true });
          });
      }),
      c._c4c(cx => {
        cx.CorporateAccountTeam(team => {
          team.EmployeeBasicData(empData => {
            empData('EmployeeID'),
              empData('FormattedName'),
              empData('Email');
          });
        });
      });
  }).where({ "displayId": bpIDs }));
}

async function contextMapper(bpAddress, filterDefaultPoint, customerFallback) {
  bpAddress = await Promise.all(bpAddress.map(async (bp) => ({
    customerName: bp.formattedName,
    customerCity: bp.addresses[0]?.city,
    customerLanguage: bp.language,
    customerPhone: bp.addresses[0]?.phoneNumbers[0]?.number,
    customerMail: bp.addresses[0]?.emailAddresses[0]?.address,
    deliveryPoint: filterDefaultPoint(bp._s4?.to_Customer?.to_CustomerUnloadingPoint),
    customerId: bp._s4?.customerId || await customerFallback(bp),
    salesEmployee: bp._c4c?.CorporateAccountTeam[0] ? {
      empID: bp._c4c?.CorporateAccountTeam[0]?.EmployeeBasicData?.EmployeeID,
      name: bp._c4c?.CorporateAccountTeam[0]?.EmployeeBasicData?.FormattedName,
      email: bp._c4c?.CorporateAccountTeam[0]?.EmployeeBasicData?.Email,
    } : null,
    salesEmployee_empID: bp._c4c?.CorporateAccountTeam[0]?.EmployeeBasicData?.EmployeeID
  })));
  return bpAddress;
}

