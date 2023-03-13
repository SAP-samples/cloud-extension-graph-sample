module.exports = cds.service.impl( async (srv) => {
    const LOG = cds.log("shipment-service");
    const {Shipments} = srv.entities;
    const GeoService = await cds.connect.to("GeoService");
    const customAPI = await cds.connect.to("custom.ns");
    

    GeoService.on('CustomerReplicate', async (event) => {

        LOG.info("--- Welcome Kit shipment --- ");
        LOG.debug("data from event :: ", event.data);
        const data = event.data;

        const payload = {
            customerId: data.customerId,
            status: 'DISPATCHED',
            title: 'Welcome Kit'
        }

        await customAPI.run(INSERT.into(Shipments).entries(payload))
    });

})