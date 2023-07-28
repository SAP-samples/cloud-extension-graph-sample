namespace my.georel.graph;

using { sap.common.CodeList } from '@sap/cds/common';

entity CustomerProcesses {
  key processId          : UUID;
      customerName       : String;
  key customerId         : String;
      customerPhone      : String;
      customerLanguage   : String;
      customerCountry    : String;
      customerMail       : String;
      customerCity       : String;
      comment            : String(1111);
      deliveryPoint      : String;
      cxsalesId          : String;
      cxsalesObjectId    : String;
      criticality        : Integer default 1;
      backendEventTime   : Timestamp @cds.on.insert : $now;
      backendUrl         : String;
      backendEventType   : String;
      backendEventSource : String;
      status             : Association to Status;
      customerCondition  : Association to Conditions;
      _logistics         : Composition of many Logistics on _logistics.customerId = $self.customerId;
};
entity Conditions : CodeList {
  key conditionId : Integer;
      criticality : Integer;
}

entity Status : CodeList {
  key statusId    : Integer;
      criticality : Integer;
}

entity Logistics {
  key displayId: String;
      customerId: String;
      status: String;
      expectedDelivery: DateTime @readonly;
      deliveryPartner: String @readonly;
      title: String;
      criticality: Integer;
}