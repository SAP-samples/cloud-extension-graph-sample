/* checksum : 294fca40071af443e00dbf480172261a */
/** Logistics partner with delivery details of artifacts to the customers */
using {sap.s4 as s4} from './sap.s4.cds';
@cds.persistence.skip : true
entity custom.ns.Logistics {
  /** Qualified identifier */
  key displayId : LargeString;
  /** A unique identifier that represents a customer. */
  customerId : LargeString;
  status : LargeString;
  title : LargeString;
  criticality : Integer;
  deliveryPartner : LargeString;
  /** Date and time the delivery is expected. */
  @odata.Precision : 0
  @odata.Type : 'Edm.DateTimeOffset'
  expectedDelivery : DateTime;
  @cds.ambiguous : 'missing on condition?'
  // _businessPartner : Association to one sap.s4.A_BusinessPartner {  };
  _businessPartner  : Association to one s4.A_BusinessPartner on _businessPartner.BusinessPartner = customerId;
  name : LargeString;
};

@cds.external : true
service custom.ns {};

