using my.logistics as my from '../db/data-model';

service FioriService {

     @odata.draft.enabled
    entity DeliveryApp as projection on my.Delivery;

}