module.exports = cds.service.impl( async (srv) => {

    const LOG = cds.log("c4c-service");
    const GeoService = await cds.connect.to("GeoService");
    const bupaSrv = await cds.connect.to("sap.s4");
    const c4cSrv = await cds.connect.to("sap.c4c");
    const {BusinessPartner, CustomerProcesses} = GeoService.entities;
    const {Customer, Mapper} = srv.entities;


    srv.on("READ", Customer, (req)=> c4cSrv.run(req.query) );

    GeoService.on('CustomerReplicate', async (event) => {

        LOG.info("--- Received event for the replication --- ");
        LOG.debug("data from event :: ", event.data);
        const data = event.data;
        const bpFromS4 = await moreDetails(data);
        const c4cCustomer = await replicateCustomer(bpFromS4);
        const mapping = await mapExternalID(bpFromS4, c4cCustomer);
        await cds.run(UPDATE(CustomerProcesses).where({customerId: data.customerId}).with({"cxsalesId": c4cCustomer.accountId, "cxsalesObjectId":c4cCustomer.objectId}));

    });


    const moreDetails = async (data) => {
        const BP = await bupaSrv.run(SELECT.one(BusinessPartner, bp => {
            bp('*'),
            bp.to_BusinessPartnerAddress(addresses => {
            addresses('*'),
            addresses.to_PhoneNumber(phone => {
                phone('*')
              }),
            addresses.to_EmailAddress(email => {
                email('*')
              })
            })
        }).where({customerId: data.customerId}));

        return BP;
    }

    const replicateCustomer = async (data) => {
        const createdCustomer = await c4cSrv.run(INSERT.into (Customer, [
            { 
                name : data.customerName,
                roleCode : "CRM000",
                country: data.to_BusinessPartnerAddress[0]?.customerCountry,
                city: data.to_BusinessPartnerAddress[0]?.customerCity,
                street: data.to_BusinessPartnerAddress[0]?.customerStreet,
                postalCode: data.to_BusinessPartnerAddress[0]?.customerPostalCode,
                language: data.to_BusinessPartnerAddress[0]?.customerLanguage,
                email: data.to_BusinessPartnerAddress[0]?.to_EmailAddress[0]?.email,
                phone: data.to_BusinessPartnerAddress[0]?.to_PhoneNumber[0]?.customerPhone,
                indicator: true
            }
            ]));
            LOG.info("CreatedCustomer in Sales Cloud :: ", createdCustomer);
            return createdCustomer;
    }

    const mapExternalID = async (bpFromS4, c4cCustomer) => {
        const createdMapping = await c4cSrv.run(INSERT.into (Mapper, [
            { 
              s4ObjectId: bpFromS4.customerId,
              schemeCode: "888",
              c4cObjectId: c4cCustomer.accountId, //customerId for IndividualCustomer
              systemId: "GRAPH_S4"
            }
         ]));
         return createdMapping;
    }

});