using my.logistics as my from '../db/data-model';

service LogisticsService {
    entity Delivery as projection on my.Delivery;

    @odata.draft.enabled
    entity DeliveryApp as projection on my.Delivery;
}