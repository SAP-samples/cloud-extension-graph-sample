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
      criticality        : Integer default 1;
      backendEventTime   : Timestamp @cds.on.insert : $now;
      backendUrl         : String;
      backendEventType   : String;
      backendEventSource : String;
      status             : Association to Status;
      customerCondition  : Association to Conditions;
};

entity Conditions : CodeList {
  key conditionId : Integer;
      criticality : Integer;
}

entity Status : CodeList {
  key statusId    : Integer;
      criticality : Integer;
}