const cds = require("@sap/cds");

module.exports = async srv => {
  const { BusinessPartner, BusinessPartnerAddress, CustomerProcesses: Customers } = srv.entities;
  const graphAPI = await cds.connect.to("sap.s4");
  const graphCC = await cds.connect.to("GRAPH_CC");
  const messaging = await cds.connect.to("messaging");
  const BP_CREATED = "sap/S4HANAOD/g999/ce/sap/s4/beh/businesspartner/v1/BusinessPartner/Created/v1";
  srv.on("READ", BusinessPartner, req => graphAPI.tx(req).run(req.query));

  messaging.on(BP_CREATED, async (msg) => {
    console.log("<< event caught", msg.data);
    let BUSINESSPARTNER = msg.data.BusinessPartner;
    let payload = {
      customerId: BUSINESSPARTNER,
      status_statusId: 1,
      customerCondition_conditionId: 1,
      criticality: 0,
      backendEventType: msg.headers?.type || '-',
      backendEventSource: msg.headers?.source || '-',
      backendEventTime: msg.headers?.time
    }
    await cds.run(INSERT.into(Customers).entries(payload));
    await updateBPCountry(BUSINESSPARTNER);
  });

  updateBPCountry = async (BUSINESSPARTNER) => {
    const bp = await graphCC.run(SELECT.one(BusinessPartnerAddress).where({ customerId: BUSINESSPARTNER }));
    const updateCountry = await cds.run(UPDATE(Customers).where({ customerId: BUSINESSPARTNER }).with({ "customerCountry": bp.customerCountry }));
    console.log("-- Updated Customer with Country --");
  }

  srv.on("READ", Customers, async (req, next) => {

    const data = await next();
    const customers = Array.isArray(data) ? data : [data];
    return await mapDataFromGraph(customers);

  });

  srv.on('EDIT', Customers, async (req, next) => {
    const data = await next();
    const customers = Array.isArray(data) ? data : [data];
    return await mapDataFromGraph(customers);
  });

  async function mapDataFromGraph(customers) {

    const bpIDs = customers.map(bp => bp.customerId);
    console.log("Request information for ::: ", bpIDs);
    let bpAddress = await graphAPI.run(SELECT.from(BusinessPartner, bp => {
      bp('customerName'),
        bp('customerId'),
        bp('customerLanguage')
      bp.to_BusinessPartnerAddress(addresses => {
        addresses('customerCity')
        addresses('customerCountry')
        addresses.to_EmailAddress(email => {
          email('email')
        })
        addresses.to_PhoneNumber(phone => {
          phone('customerPhone')
        })
      })
    }).where({ customerId: bpIDs }));
    bpAddress = bpAddress.map(bp => {
      return {
        "customerId": bp.customerId,
        "customerName": bp.customerName,
        "customerCity": bp.to_BusinessPartnerAddress[0]?.customerCity,
        "customerMail": bp.to_BusinessPartnerAddress[0]?.to_EmailAddress[0]?.email,
        "customerLanguage": bp.customerLanguage,
        "customerPhone": bp.to_BusinessPartnerAddress[0]?.to_PhoneNumber[0]?.customerPhone
      }
    });
    console.log("bp === ", bpAddress);

    // Convert in a map for easier lookup
    const businessPartnerMap = {};
    for (const businessPartner of bpAddress) {
      businessPartnerMap[businessPartner.customerId] = businessPartner;
    }
    customers.forEach(cust => {
      Object.assign(cust, businessPartnerMap[cust.customerId]);
    });

    return customers;

  }

}
