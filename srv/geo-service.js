const cds = require("@sap/cds");
const LOG = cds.log("geo-service");

module.exports = async (srv) => {
  const {
    BusinessPartner,
    BusinessPartnerAddress,
    CustomerProcesses: Customers,
  } = srv.entities;
  const graphAPI = await cds.connect.to("sap.s4");
  const graphCC = await cds.connect.to("GRAPH_CC");
  const messaging = await cds.connect.to("messaging");
  const BP_CREATED =
    "sap.s4.beh.businesspartner.v1.BusinessPartner.Created.v1";
  srv.on("READ", BusinessPartner, (req) => graphAPI.tx(req).run(req.query));

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
      await updateBPCountry(customerId);
      
    } catch (error) {
      LOG.error("Error in message listener: ", error);
    }

  });

  updateBPCountry = async (customerId) => {
    const bp = await graphCC.run(
      SELECT.one("customerCountry")
        .from(BusinessPartnerAddress)
        .where({ customerId })
    );
    if (!bp) return;
    await UPDATE(Customers)
      .where({ customerId })
      .with({ customerCountry: bp.customerCountry });
    LOG.info("-- Updated Customer with Country --");
  };

  srv.on("READ", Customers, async (req, next) => {
    const data = await next();
    const customers = Array.isArray(data) ? data : [data];
    return await mapDataFromGraph(customers);
  });

  srv.on("EDIT", Customers, async (req, next) => {
    const data = await next();
    const customers = Array.isArray(data) ? data : [data];
    return await mapDataFromGraph(customers);
  });

  async function mapDataFromGraph(customers) {
    const bpIDs = customers.map((bp) => bp.customerId);
    LOG.info("Request information for ::: ", bpIDs);
    let bpAddress = await graphAPI.run(
      SELECT.from(BusinessPartner, (bp) => {
        bp.customerName,
          bp.customerId,
          bp.customerLanguage,
          bp.to_BusinessPartnerAddress((addresses) => {
            addresses.customerCity,
              addresses.customerCountry,
              addresses.to_EmailAddress((email) => {
                email.email;
              });
            addresses.to_PhoneNumber((phone) => {
              phone.customerPhone;
            });
          });
      }).where({ customerId: bpIDs })
    );
    bpAddress = bpAddress.map((bp) => ({
      customerId: bp.customerId,
      customerName: bp.customerName,
      customerCity: bp.to_BusinessPartnerAddress[0]?.customerCity,
      customerMail: bp.to_BusinessPartnerAddress[0]?.to_EmailAddress[0]?.email,
      customerLanguage: bp.customerLanguage,
      customerPhone:
        bp.to_BusinessPartnerAddress[0]?.to_PhoneNumber[0]?.customerPhone,
    }));
    LOG.debug("bp === ", bpAddress);

    // Convert in a map for easier lookup
    const businessPartnerMap = {};
    for (const businessPartner of bpAddress) {
      businessPartnerMap[businessPartner.customerId] = businessPartner;
    }
    customers.forEach((cust) => {
      Object.assign(cust, businessPartnerMap[cust.customerId]);
    });

    return customers;
  }
};
