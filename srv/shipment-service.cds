using {custom.ns as shipment} from './external/custom.ns';

service ShipmentService {

    entity Shipments as projection on shipment.Logistics;

}