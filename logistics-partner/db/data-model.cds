namespace my.logistics;
using {cuid} from '@sap/cds/common';

entity Delivery:cuid {
    customerId: String;
    status: String;
    expectedDelivery: DateTime;
    deliveryPartner: String;
    title: String;
    criticality: Integer;
}