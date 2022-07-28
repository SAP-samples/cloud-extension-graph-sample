/* checksum : 59944405022d4398155aaa896becd16d */
@cds.persistence.skip : true
entity sap.c4c.BusinessAttributeCollection {
  key ObjectID : String(70);
  BusinessAttributeID : String(30);
  FormatCode : String(4);
  CharacterNumberValue : Integer;
  DecimalNumberValue : Integer;
  MeasureUnitCode : String(5);
  DefaultValue : String(255);
  StatusCode : String(1);
  BusinessAttributeDescriptionForLogonLanguage : String(255);
  BusinessAttributeDescriptionLanguageCode : String(2);
  MandatoryIndicator : Boolean;
  MultivalueIndicator : Boolean;
  NegativeAllowedIndicator : Boolean;
  CaseSensitiveIndicator : Boolean;
  IntervalAllowedIndicator : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  BusinessAttributeCharacteristic : Association to many sap.c4c.BusinessAttributeCharacteristicCollection {  };
  @cds.ambiguous : 'missing on condition?'
  BusinessAttributeDescription : Association to many sap.c4c.BusinessAttributeDescriptionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  BusinessAttributeValueList : Association to many sap.c4c.BusinessAttributeValueListCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.BusinessAttributeFormatCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.BusinessAttributeMeasureUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.BusinessAttributeStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.BusinessAttributeBusinessAttributeDescriptionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.BusinessAttributeCharacteristicCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  BusinessAttributeID : String(30);
  CharacteristicCode : String(2);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  BusinessAttribute : Association to one sap.c4c.BusinessAttributeCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.BusinessAttributeCharacteristicCharacteristicCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.BusinessAttributeDescriptionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  BusinessAttributeID : String(30);
  Description : String(255);
  DescriptionLanguageCode : String(2);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  BusinessAttribute : Association to one sap.c4c.BusinessAttributeCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.BusinessAttributeDescriptionDescriptionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.BusinessAttributeValueListCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  BusinessAttributeID : String(30);
  BusinessAttributeValueID : String(30);
  BusinessAttributeValueDescriptionForLogonLanguage : String(255);
  BusinessAttributeValueDescriptionLanguageCode : String(2);
  DefaultValueIndicator : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  BusinessAttribute : Association to one sap.c4c.BusinessAttributeCollection {  };
  @cds.ambiguous : 'missing on condition?'
  BusinessAttributeValueListDescription : Association to many sap.c4c.BusinessAttributeValueListDescriptionCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.BusinessAttributeValueListBusinessAttributeValueDescriptionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.BusinessAttributeValueListDescriptionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  BusinessAttributeValueID : String(30);
  BusinessAttributeID : String(30);
  ValueDescription : String(255);
  ValueDescriptionLanguageCode : String(2);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  BusinessAttribute : Association to one sap.c4c.BusinessAttributeCollection {  };
  @cds.ambiguous : 'missing on condition?'
  BusinessAttributeValueList : Association to one sap.c4c.BusinessAttributeValueListCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.BusinessAttributeValueListDescriptionValueDescriptionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.BusinessAttributeSetCollection {
  key ObjectID : String(70);
  BusinessAttributeSetID : String(18);
  BusinessObjectTypeCode : String(15);
  OrganisationRelevanceIndicator : Boolean;
  PersonRelevanceIndicator : Boolean;
  StatusCode : String(1);
  BusinessAttributeSetDescriptionForLogonLanguage : String(40);
  BusinessAttributeSetDescriptionLanguageCode : String(2);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  BusinessAttributeSetAttributeAssignment : Association to many sap.c4c.BusinessAttributeSetAttributeAssignmentCollection {  };
  @cds.ambiguous : 'missing on condition?'
  BusinessAttributeSetDescription : Association to many sap.c4c.BusinessAttributeSetDescriptionCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.BusinessAttributeSetBusinessObjectTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.BusinessAttributeSetStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.BusinessAttributeSetBusinessAttributeSetDescriptionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.BusinessAttributeSetDescriptionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  BusinessAttributeSetID : String(18);
  BusinessAttributeSetBusinessObjectTypeCode : String(15);
  Description : String(40);
  DescriptionLanguageCode : String(2);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  BusinessAttributeSet : Association to one sap.c4c.BusinessAttributeSetCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.BusinessAttributeSetDescriptionBusinessAttributeSetBusinessObjectTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.BusinessAttributeSetDescriptionDescriptionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.BusinessAttributeSetAttributeAssignmentCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  BusinessAttributeSetID : String(18);
  BusinessAttributeSetBusinessObjectTypeCode : String(15);
  BusinessAttributeID : String(30);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  BusinessAttributeSet : Association to one sap.c4c.BusinessAttributeSetCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _BusinessAttribute : Association to one sap.c4c.BusinessAttributeCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.BusinessAttributeSetAttributeAssignmentBusinessAttributeSetBusinessObjectTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.BusinessAttributeAssignmentCollection {
  key ObjectID : String(70);
  BusinessPartnerID : String(10);
  RegisteredProductID : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  BusinessAttributeAssignmentItem : Association to many sap.c4c.BusinessAttributeAssignmentItemCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _BusinessPartner : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _RegisteredProduct : Association to one sap.c4c.RegisteredProductCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.BusinessAttributeAssignmentItemCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  BusinessPartnerID : String(10);
  RegisteredProductID : String(40);
  BusinessAttributeSetID : String(18);
  BusinessAttributeSetBusinessObjectTypeCode : String(15);
  BusinessAttributeID : String(30);
  BusinessAttributeValue : String(255);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  BusinessAttributeAssignment : Association to one sap.c4c.BusinessAttributeAssignmentCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _BusinessPartner : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _RegisteredProduct : Association to one sap.c4c.RegisteredProductCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _BusinessAttributeSet : Association to one sap.c4c.BusinessAttributeSetCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _BusinessAttribute : Association to one sap.c4c.BusinessAttributeCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.BusinessAttributeAssignmentItemBusinessAttributeSetBusinessObjectTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.AppointmentCollection {
  key ObjectID : String(70);
  DocumentType : String(4);
  DocumentTypeText : LargeString;
  ID : String(35);
  Subject : String(765);
  LifeCycleStatusCode : String(2);
  LifeCycleStatusCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  StartDate : Timestamp;
  StartDatetimeZoneCode : String(10);
  StartDatetimeZoneCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EndDate : Timestamp;
  EnddatetimeZoneCode : String(10);
  EnddatetimeZoneCodeText : LargeString;
  OrganizerUUID : UUID;
  OrganizerPartyID : String(60);
  Owner : UUID;
  PrimaryContact : UUID;
  OwnerPartyID : String(60);
  FullDayIndicator : Boolean;
  Category : String(4);
  CategoryText : LargeString;
  Account : UUID;
  MainAccountPartyID : String(60);
  MainContactPartyID : String(60);
  Location : String(480);
  Priority : String(1);
  PriorityText : LargeString;
  SalesTerritoryUUID : UUID;
  SalesTerritoryID : String(6);
  SalesTerritoryName : String(40);
  SalesOrganisation : String(20);
  DistributionChannel : String(2);
  DistributionChannelText : LargeString;
  Division : String(2);
  DivisionText : LargeString;
  VisitTourPlanUUID : UUID;
  InformationSensitivityCode : String(1);
  InformationSensitivityCodeText : LargeString;
  AccountName : String(480);
  AdditionalLocationName : String(765);
  ChangedBy : String(480);
  CompletionPercent : Decimal(5, 2);
  CreatedBy : String(480);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  DataOriginTypeCode : String(3);
  DataOriginTypeCodeText : LargeString;
  GroupwareItemID : String(765);
  OrganizerEmailURI : String(254);
  OrganizerName : String(480);
  OrganizerPartyName : String(255);
  OwnerName : String(480);
  Phone : String(40);
  PrimaryContactName : String(480);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ReportedDateTime : Timestamp;
  UUID : UUID;
  AvailabilityCode : String(2);
  AvailabilityCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastChangeDateTime : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  VisitTypeCode : String(4);
  VisitTypeCodeText : LargeString;
  OccurrenceDate : Date;
  RecurrenceActGroupwareID : String(765);
  RecurringBusinessActivityNodeID : UUID;
  CollaborationChannelCode : String(2);
  CollaborationChannelCodeText : LargeString;
  CollaborationURL : LargeString;
  Draft : Boolean;
  CreatedBySSI : String(3);
  CreatedBySSIText : LargeString;
  dataloader1_KUT : String(120);
  @cds.ambiguous : 'missing on condition?'
  AppointmentAttachmentFolder : Association to many sap.c4c.AppointmentAttachmentFolderCollection {  };
  @cds.ambiguous : 'missing on condition?'
  AppointmentBTDReference : Association to many sap.c4c.AppointmentBTDReferenceCollection {  };
  @cds.ambiguous : 'missing on condition?'
  AppointmentInvolvedParties : Association to many sap.c4c.AppointmentInvolvedPartiesCollection {  };
  @cds.ambiguous : 'missing on condition?'
  AppointmentOtherParties : Association to many sap.c4c.AppointmentOtherPartiesCollection {  };
  @cds.ambiguous : 'missing on condition?'
  AppointmentTextCollection : Association to many sap.c4c.AppointmentTextCollectionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _OrganizerParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _OwnerParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _MainAccountParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _MainContactParty : Association to one sap.c4c.ContactCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesTerritory : Association to one sap.c4c.SalesTerritoryCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.AppointmentDocumentTypeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.AppointmentLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.AppointmentStartDatetimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.AppointmentEnddatetimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.AppointmentCategoryCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.AppointmentPriorityCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.AppointmentDistributionChannelCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.AppointmentDivisionCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.AppointmentInformationSensitivityCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.AppointmentDataOriginTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.AppointmentAvailabilityCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.AppointmentVisitTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.AppointmentCollaborationChannelCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.AppointmentCreatedBySSICollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.AppointmentInvolvedPartiesCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ID : String(35);
  PartyID : String(60);
  RoleCode : String(10);
  RoleCodeText : LargeString;
  RoleCategoryCode : String(3);
  RoleCategoryCodeText : LargeString;
  PartyTypeCode : String(15);
  PartyTypeCodeText : LargeString;
  MainIndicator : Boolean;
  Address : String(480);
  EMail : String(255);
  Name : String(480);
  PartyEmailURI : String(254);
  PartyUUID : UUID;
  PartyName : String(255);
  Phone : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  StartDate : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Appointment : Association to one sap.c4c.AppointmentCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.AppointmentInvolvedPartiesRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.AppointmentInvolvedPartiesRoleCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.AppointmentInvolvedPartiesPartyTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.AppointmentOtherPartiesCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  AppointmentID : String(35);
  PartyUUID : UUID;
  PartyID : String(60);
  RoleCategoryCode : String(3);
  RoleCategoryCodeText : LargeString;
  RoleCode : String(10);
  RoleCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Appointment : Association to one sap.c4c.AppointmentCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.AppointmentOtherPartiesRoleCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.AppointmentOtherPartiesRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.AppointmentBTDReferenceCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  AppointmentID : String(35);
  ID : String(35);
  TypeCode : String(15);
  TypeCodeText : LargeString;
  BTDRoleCode : String(3);
  BTDRoleCodeText : LargeString;
  ActivityGroupCode : String(4);
  ActivityGroupCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Appointment : Association to one sap.c4c.AppointmentCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.AppointmentBTDReferenceTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.AppointmentBTDReferenceBTDRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.AppointmentBTDReferenceActivityGroupCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.AppointmentTextCollectionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  AppointmentID : String(35);
  Text : LargeString;
  LanguageCode : String(2);
  LanguageCodeText : LargeString;
  TypeCode : String(5);
  TypeCodeText : LargeString;
  AuthorName : String(40);
  AuthorUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  UpdatedOn : Timestamp;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  GroupCode : String(4);
  GroupCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Appointment : Association to one sap.c4c.AppointmentCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.AppointmentTextCollectionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.AppointmentTextCollectionTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.AppointmentTextCollectionGroupCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.AppointmentAttachmentFolderCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  AppointmentID : String(35);
  Binary : LargeBinary;
  CategoryCode : String(1);
  CategoryCodeText : LargeString;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  DocumentLink : LargeString;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastUpdatedOn : Timestamp;
  LinkWebURI : LargeString;
  MimeType : LargeString;
  Name : LargeString;
  ParentObjectID : String(70);
  TypeCode : String(5);
  TypeCodeText : LargeString;
  UUID : UUID;
  @cds.ambiguous : 'missing on condition?'
  _Appointment : Association to one sap.c4c.AppointmentCollection on _Appointment.ObjectID = ParentObjectID;
};

@cds.persistence.skip : true
entity sap.c4c.AppointmentAttachmentFolderCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.AppointmentAttachmentFolderTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EMailCollection {
  key ObjectID : String(70);
  ID : String(35);
  Subject : String(765);
  Status : String(2);
  StatusText : LargeString;
  Category : String(4);
  CategoryText : LargeString;
  PriorityCode : String(1);
  PriorityCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  DateTime : Timestamp;
  DateTimetimeZoneCode : String(10);
  DateTimetimeZoneCodeText : LargeString;
  TransmissionStatusCode : String(2);
  TransmissionStatusCodeText : LargeString;
  OwnerPartyID : String(60);
  Account : UUID;
  MainAccountPartyID : String(60);
  PrimaryContact : UUID;
  MainContactPartyID : String(60);
  Direction : String(1);
  DirectionText : LargeString;
  SalesTerritoryID : String(6);
  SalesTerritoryName : String(40);
  Campaign : UUID;
  ResponseOption : String(35);
  SentimentTypeCode : String(2);
  SentimentTypeCodeText : LargeString;
  DocumentType : String(4);
  DocumentTypeText : LargeString;
  TicketID : String(36);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  DataOriginTypeCode : String(3);
  DataOriginTypeCodeText : LargeString;
  AccountName : String(480);
  GroupwareItemID : String(765);
  MessageFromEmailURI : String(254);
  MessageFromName : String(255);
  MessageFromPartyID : String(60);
  MessageFromPartyName : String(480);
  MessageFromPartyUUID : UUID;
  OwnerName : String(480);
  OwnerUUID : UUID;
  PrimaryContactName : String(480);
  UUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastChangeDateTime : Timestamp;
  CreatedBySSI : String(3);
  CreatedBySSIText : LargeString;
  dataloader1_KUT : String(120);
  @cds.ambiguous : 'missing on condition?'
  EMailAttachments : Association to many sap.c4c.EMailAttachmentsCollection {  };
  @cds.ambiguous : 'missing on condition?'
  EMailBTDReference : Association to many sap.c4c.EMailBTDReferenceCollection {  };
  @cds.ambiguous : 'missing on condition?'
  EMailCcRecipients : Association to many sap.c4c.EMailCcRecipientsCollection {  };
  @cds.ambiguous : 'missing on condition?'
  EMailInvolvedParties : Association to many sap.c4c.EMailInvolvedPartiesCollection {  };
  @cds.ambiguous : 'missing on condition?'
  EMailNotes : Association to many sap.c4c.EMailNotesCollection {  };
  @cds.ambiguous : 'missing on condition?'
  EMailSenderParty : Association to many sap.c4c.EMailSenderPartyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  EMailToRecipients : Association to many sap.c4c.EMailToRecipientsCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _OwnerParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _MainAccountParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _MainContactParty : Association to one sap.c4c.ContactCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesTerritory : Association to one sap.c4c.SalesTerritoryCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _MessageFromParty : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.EMailStatusCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EMailCategoryCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EMailPriorityCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EMailDateTimetimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EMailTransmissionStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EMailDirectionCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EMailSentimentTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EMailDocumentTypeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EMailDataOriginTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EMailCreatedBySSICollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EMailInvolvedPartiesCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  EMailID : String(35);
  PartyUUID : UUID;
  PartyID : String(60);
  PartyTypeCode : String(15);
  PartyTypeCodeText : LargeString;
  RoleCode : String(10);
  RoleCodeText : LargeString;
  MainIndicator : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  EMail : Association to one sap.c4c.EMailCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.EMailInvolvedPartiesPartyTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EMailInvolvedPartiesRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EMailSenderPartyCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  EMailID : String(35);
  PartyID : String(60);
  PartyName : String(480);
  EMailValue : String(255);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  EMail : Association to one sap.c4c.EMailCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.EMailToRecipientsCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  EMailParentID : String(35);
  PartyID : String(60);
  Name : String(480);
  NameLanguageCode : String(2);
  NameLanguageCodeText : LargeString;
  EMailID : String(255);
  Phone : String(40);
  Address : String(480);
  MessageToName : String(255);
  MessageToEmailID : String(254);
  PartyUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  EMail : Association to one sap.c4c.EMailCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _EMailParent : Association to one sap.c4c.EMailCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.EMailToRecipientsNameLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EMailCcRecipientsCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  EMailParentID : String(35);
  PartyID : String(60);
  Name : String(480);
  NameLanguageCode : String(2);
  NameLanguageCodeText : LargeString;
  EMailID : String(255);
  Phone : String(40);
  Address : String(480);
  MessageCCEMailID : String(254);
  MessageCCName : String(255);
  PartyUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  EMail : Association to one sap.c4c.EMailCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _EMailParent : Association to one sap.c4c.EMailCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.EMailCcRecipientsNameLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EMailBTDReferenceCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ID : String(35);
  TypeCode : String(15);
  TypeCodeText : LargeString;
  RoleCode : String(3);
  RoleCodeText : LargeString;
  EMailID : String(35);
  EmailBusinessSystemID : String(60);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  EmailBusinessSystemID2 : String(32);
  @cds.ambiguous : 'missing on condition?'
  EMail : Association to one sap.c4c.EMailCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.EMailBTDReferenceTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EMailBTDReferenceRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EMailNotesCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  EMailID : String(35);
  Text : LargeString;
  TypeCode : String(5);
  TypeCodeText : LargeString;
  AuthorName : String(40);
  AuthorUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  UpdatedOn : Timestamp;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  LanguageCode : String(2);
  LanguageCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  EMail : Association to one sap.c4c.EMailCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.EMailNotesTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EMailNotesLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EMailAttachmentsCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  Binary : LargeBinary;
  CategoryCode : String(1);
  CategoryCodeText : LargeString;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  DocumentLink : LargeString;
  EMailID : String(35);
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastUpdatedOn : Timestamp;
  LinkWebURI : LargeString;
  MimeType : LargeString;
  Name : LargeString;
  ParentObjectID : String(70);
  TypeCode : String(5);
  TypeCodeText : LargeString;
  UUID : UUID;
  @cds.ambiguous : 'missing on condition?'
  _EMail : Association to one sap.c4c.EMailCollection on _EMail.ObjectID = ParentObjectID;
};

@cds.persistence.skip : true
entity sap.c4c.EMailAttachmentsCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EMailAttachmentsTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PhoneCallCollection {
  key ObjectID : String(70);
  ID : String(35);
  Subject : String(765);
  OrganizerPartyID : String(60);
  Status : String(2);
  StatusText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  StartDateTime : Timestamp;
  StartDateTimeZoneCode : String(10);
  StartDateTimeZoneCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EndDateTime : Timestamp;
  EndDatetimeZoneCode : String(10);
  EndDatetimeZoneCodeText : LargeString;
  OwnerPartyID : String(60);
  Account : UUID;
  MainAccountPartyID : String(60);
  PrimaryContact : UUID;
  MainContactPartyID : String(60);
  InitiatorCode : String(1);
  InitiatorCodeText : LargeString;
  Category : String(4);
  CategoryText : LargeString;
  Priority : String(1);
  PriorityText : LargeString;
  SalesTerritory : UUID;
  SalesTerritoryID : String(6);
  SalesTerritoryName : String(40);
  SalesOrganisation : String(20);
  DistributionChannel : String(2);
  DistributionChannelText : LargeString;
  DivisionCode : String(2);
  DivisionCodeText : LargeString;
  DocumentType : String(4);
  DocumentTypeText : LargeString;
  ActivityList : UUID;
  ResponseOptionID : String(10);
  AccountFormattedName : String(480);
  CampaignDescription : String(80);
  CampaignUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  CreatedByFormattedName : String(480);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  OwnerFormattedName : String(480);
  OwnerUUID : UUID;
  Phone : String(40);
  PrimaryContactFormattedName : String(480);
  ResponseOptionDescription : String(80);
  UUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastChangeDateTime : Timestamp;
  DataOriginTypeCode : String(3);
  DataOriginTypeCodeText : LargeString;
  GroupwareItemID : String(765);
  CreatedByUUID : UUID;
  CreatedBySSI : String(3);
  CreatedBySSIText : LargeString;
  dataloader1_KUT : String(120);
  @cds.ambiguous : 'missing on condition?'
  PhoneCallAttachmentFolder : Association to many sap.c4c.PhoneCallAttachmentFolderCollection {  };
  @cds.ambiguous : 'missing on condition?'
  PhoneCallBTDReference : Association to many sap.c4c.PhoneCallBTDReferenceCollection {  };
  @cds.ambiguous : 'missing on condition?'
  PhoneCallNotes : Association to many sap.c4c.PhoneCallNotesCollection {  };
  @cds.ambiguous : 'missing on condition?'
  PhoneCallParticipants : Association to many sap.c4c.PhoneCallParticipantsCollection {  };
  @cds.ambiguous : 'missing on condition?'
  PhoneCallParties : Association to many sap.c4c.PhoneCallPartiesCollection {  };
  @cds.ambiguous : 'missing on condition?'
  PhoneCallWorklistItem : Association to many sap.c4c.PhoneCallWorklistItemCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _OrganizerParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _OwnerParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _MainAccountParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _MainContactParty : Association to one sap.c4c.ContactCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesTerritory : Association to one sap.c4c.SalesTerritoryCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.PhoneCallStatusCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PhoneCallStartDateTimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PhoneCallEndDatetimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PhoneCallInitiatorCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PhoneCallCategoryCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PhoneCallPriorityCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PhoneCallDistributionChannelCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PhoneCallDivisionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PhoneCallDocumentTypeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PhoneCallDataOriginTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PhoneCallCreatedBySSICollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PhoneCallPartiesCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  PhoneCallID : String(35);
  PartyUUID : UUID;
  PartyID : String(60);
  PartyTypeCode : String(15);
  PartyTypeCodeText : LargeString;
  RoleCode : String(10);
  RoleCodeText : LargeString;
  RoleCategoryCode : String(3);
  RoleCategoryCodeText : LargeString;
  MainIndicator : Boolean;
  Address : String(480);
  Email : String(255);
  Name : String(480);
  PartyEmailURI : String(254);
  PartyName : String(255);
  Phone : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  StartDateTime : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  PhoneCall : Association to one sap.c4c.PhoneCallCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.PhoneCallPartiesPartyTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PhoneCallPartiesRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PhoneCallPartiesRoleCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PhoneCallParticipantsCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  PhoneCallID : String(35);
  PartyID : String(60);
  Name : String(480);
  NameLanguageCode : String(2);
  NameLanguageCodeText : LargeString;
  EMailID : String(255);
  Phone : String(40);
  Address : String(480);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  PhoneCall : Association to one sap.c4c.PhoneCallCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _EMail : Association to one sap.c4c.EMailCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.PhoneCallParticipantsNameLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PhoneCallWorklistItemCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ActivityWorklistItemUUID : UUID;
  ActivityWorklistItemTypeCode : String(5);
  ActivityWorklistItemTypeCodeText : LargeString;
  ExecutedIndicator : Boolean;
  WorkitemInactive : Boolean;
  OfflineDeterminedWorklistItemIndicator : Boolean;
  TaskID : String(35);
  SurveyID : String(35);
  PhoneCallID : String(35);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  PhoneCall : Association to one sap.c4c.PhoneCallCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Task : Association to one sap.c4c.TasksCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Survey : Association to one sap.c4c.SurveyCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.PhoneCallWorklistItemActivityWorklistItemTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PhoneCallBTDReferenceCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ID : String(35);
  TypeCode : String(15);
  TypeCodeText : LargeString;
  BTDRoleCode : String(3);
  BTDRoleCodeText : LargeString;
  PhoneCallID : String(35);
  PhoneCallBusinessSystemID : String(60);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  PhoneCall : Association to one sap.c4c.PhoneCallCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.PhoneCallBTDReferenceTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PhoneCallBTDReferenceBTDRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PhoneCallNotesCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  PhoneCallID : String(35);
  Text : LargeString;
  LanguageCode : String(2);
  LanguageCodeText : LargeString;
  TypeCode : String(5);
  TypeCodeText : LargeString;
  AuthorName : String(40);
  AuthorUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  UpdatedOn : Timestamp;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  PhoneCall : Association to one sap.c4c.PhoneCallCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.PhoneCallNotesLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PhoneCallNotesTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PhoneCallAttachmentFolderCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  Binary : LargeBinary;
  CategoryCode : String(1);
  CategoryCodeText : LargeString;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  DocumentLink : LargeString;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastUpdatedOn : Timestamp;
  LinkWebURI : LargeString;
  MimeType : LargeString;
  Name : LargeString;
  ParentObjectID : String(70);
  PhoneCallID : String(35);
  TypeCode : String(5);
  TypeCodeText : LargeString;
  UUID : UUID;
  @cds.ambiguous : 'missing on condition?'
  _PhoneCall : Association to one sap.c4c.PhoneCallCollection on _PhoneCall.ObjectID = ParentObjectID;
};

@cds.persistence.skip : true
entity sap.c4c.PhoneCallAttachmentFolderCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PhoneCallAttachmentFolderTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.TasksCollection {
  key ObjectID : String(70);
  DocumentType : String(4);
  DocumentTypeText : LargeString;
  ID : String(35);
  Subject : String(765);
  Status : String(2);
  StatusText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  StartDateTime : Timestamp;
  StartDatetimeZoneCode : String(10);
  StartDatetimeZoneCodeText : LargeString;
  ActivityList : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  DueDateTime : Timestamp;
  DueDatetimeZoneCode : String(10);
  DueDatetimeZoneCodeText : LargeString;
  PlannedDuration : String(20);
  ActualDuration : String(20);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CompletionDateTime : Timestamp;
  MainEmployeeResponsiblePartyID : String(60);
  MainAccountPartyID : String(60);
  MainContactPartyID : String(60);
  ProcessorPartyID : String(60);
  CompletionPercent : Decimal(5, 2);
  Category : String(4);
  CategoryText : LargeString;
  PriorityCode : String(1);
  PriorityCodeText : LargeString;
  SalesTerritoryID : String(6);
  SalesTerritoryName : String(40);
  SalesOrganisationID : String(20);
  DistributionChannelCode : String(2);
  DistributionChannelCodeText : LargeString;
  DivisionCode : String(2);
  DivisionCodeText : LargeString;
  Account : String(480);
  AccountUUID : UUID;
  DataOriginTypeCode : String(3);
  DataOriginTypeCodeText : LargeString;
  Owner : String(480);
  OwnerUUID : UUID;
  PrimaryContact : String(480);
  PrimaryContactUUID : UUID;
  Processor : String(480);
  ProcessorEmailURI : String(254);
  ProcessorPartyName : String(255);
  ProcessorUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ReportedDateTime : Timestamp;
  UUID : UUID;
  ChangedBy : String(480);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastChangeDateTime : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  CreatedBySSI : String(3);
  CreatedBySSIText : LargeString;
  dataloader1_KUT : String(120);
  @cds.ambiguous : 'missing on condition?'
  TasksAttachmentFolder : Association to many sap.c4c.TasksAttachmentFolderCollection {  };
  @cds.ambiguous : 'missing on condition?'
  TasksBTDReference : Association to many sap.c4c.TasksBTDReferenceCollection {  };
  @cds.ambiguous : 'missing on condition?'
  TasksInvolvedParties : Association to many sap.c4c.TasksInvolvedPartiesCollection {  };
  @cds.ambiguous : 'missing on condition?'
  TasksTextCollection : Association to many sap.c4c.TasksTextCollectionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _MainEmployeeResponsibleParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _MainAccountParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _MainContactParty : Association to one sap.c4c.ContactCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ProcessorParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesTerritory : Association to one sap.c4c.SalesTerritoryCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesOrganisation : Association to one sap.c4c.OrganisationalUnitCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.TasksDocumentTypeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.TasksStatusCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.TasksStartDatetimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.TasksDueDatetimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.TasksCategoryCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.TasksPriorityCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.TasksDistributionChannelCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.TasksDivisionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.TasksDataOriginTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.TasksCreatedBySSICollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.TasksInvolvedPartiesCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  TaskID : String(35);
  PartyID : String(60);
  PartyName : String(480);
  RoleCode : String(10);
  RoleCodeText : LargeString;
  PartyTypeCode : String(15);
  PartyTypeCodeText : LargeString;
  MainIndicator : Boolean;
  Address : String(480);
  EMail : String(255);
  PartyEmailURI : String(254);
  Party : String(255);
  PartyUUID : UUID;
  Phone : String(40);
  RoleCategoryCode : String(3);
  RoleCategoryCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  StartDateTime : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Tasks : Association to one sap.c4c.TasksCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.TasksInvolvedPartiesRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.TasksInvolvedPartiesPartyTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.TasksInvolvedPartiesRoleCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.TasksBTDReferenceCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  TaskID : String(35);
  ID : String(35);
  TypeCode : String(15);
  TypeCodeText : LargeString;
  BTDRoleCode : String(3);
  BTDRoleCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Tasks : Association to one sap.c4c.TasksCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.TasksBTDReferenceTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.TasksBTDReferenceBTDRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.TasksTextCollectionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  TaskID : String(35);
  Text : LargeString;
  LanguageCode : String(2);
  LanguageCodeText : LargeString;
  TypeCode : String(5);
  TypeCodeText : LargeString;
  AuthorName : String(40);
  AuthorUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  UpdatedOn : Timestamp;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Tasks : Association to one sap.c4c.TasksCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.TasksTextCollectionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.TasksTextCollectionTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.TasksAttachmentFolderCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  Binary : LargeBinary;
  CategoryCode : String(1);
  CategoryCodeText : LargeString;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  DocumentLink : LargeString;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastUpdatedOn : Timestamp;
  LinkWebURI : LargeString;
  MimeType : LargeString;
  Name : LargeString;
  ParentObjectID : String(70);
  TaskID : String(35);
  TypeCode : String(5);
  TypeCodeText : LargeString;
  UUID : UUID;
  @cds.ambiguous : 'missing on condition?'
  _Task : Association to one sap.c4c.TasksCollection on _Task.ObjectID = ParentObjectID;
};

@cds.persistence.skip : true
entity sap.c4c.TasksAttachmentFolderCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.TasksAttachmentFolderTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.VisitCollection {
  key ObjectID : String(70);
  ID : String(35);
  Subject : String(765);
  Status : String(2);
  StatusText : LargeString;
  PriorityCode : String(1);
  PriorityCodeText : LargeString;
  Account : UUID;
  MainAccountPartyID : String(60);
  AccountPartyName : String(255);
  PrimaryContactUUID : UUID;
  MainContactPartyID : String(60);
  PrimaryContactPartyName : String(255);
  Owner : UUID;
  OwnerPartyID : String(60);
  OwnerEmailURI : String(254);
  OwnerPartyName : String(255);
  FormattedName : String(480);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  StartDateTime : Timestamp;
  StartTimeZoneCode : String(10);
  StartTimeZoneCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EndDateTime : Timestamp;
  EndTimeZoneCode : String(10);
  EndTimeZoneCodeText : LargeString;
  AllDayEvent : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ActualStartDateTime : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ActualEndDateTime : Timestamp;
  Organizer : UUID;
  OrganizerPartyID : String(60);
  OrganizerPartyName : String(255);
  OrganizerEmailURI : String(254);
  SalesTerritoryID : String(6);
  SalesTerritoryName : String(40);
  SalesOrganisationID : String(20);
  DistributionChannel : String(2);
  DistributionChannelText : LargeString;
  Division : String(2);
  DivisionText : LargeString;
  PerfectStoreIndicator : Boolean;
  VisitType : String(4);
  VisitTypeText : LargeString;
  AddressSnapshotUUID : UUID;
  Location : String(480);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  DataOriginTypeCode : String(3);
  DataOriginTypeCodeText : LargeString;
  AdditionalLocationName : String(765);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreationDateTime : Timestamp;
  GroupwareItemID : String(765);
  Route : UUID;
  Tour : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ReportedDateTime : Timestamp;
  UUID : UUID;
  MarkedForDeletion : Boolean;
  MarkedForDeletionDate : Date;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastChangeDateTime : Timestamp;
  RecurringBusinessActivityNodeID : UUID;
  RecurrenceActGroupwareID : String(765);
  OccurrenceDate : Date;
  StartGeoCoordinatesAltitudeMeasure : Decimal(31, 14);
  StartGeoCoordinatesLatitudeMeasure : Decimal(31, 14);
  StartGeoCoordinatesLongitudeMeasure : Decimal(31, 14);
  EndGeoCoordinatesAltitudeMeasure : Decimal(31, 14);
  EndGeoCoordinatesLatitudeMeasure : Decimal(31, 14);
  EndGeoCoordinatesLongitudeMeasure : Decimal(31, 14);
  OutOfRangeCheckIn : Boolean;
  Draft : Boolean;
  CollaborationChannelCode : String(2);
  CollaborationChannelCodeText : LargeString;
  CollaborationURL : LargeString;
  CreatedBySSI : String(3);
  CreatedBySSIText : LargeString;
  dataloader1_KUT : String(120);
  @cds.ambiguous : 'missing on condition?'
  VisitAttachment : Association to many sap.c4c.VisitAttachmentCollection {  };
  @cds.ambiguous : 'missing on condition?'
  VisitBTDReference : Association to many sap.c4c.VisitBTDReferenceCollection {  };
  @cds.ambiguous : 'missing on condition?'
  VisitParty : Association to many sap.c4c.VisitPartyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  VisitTextCollection : Association to many sap.c4c.VisitTextCollectionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  VisitWorklistItem : Association to many sap.c4c.VisitWorklistItemCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _MainAccountParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _MainContactParty : Association to one sap.c4c.ContactCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _OwnerParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _OrganizerParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesTerritory : Association to one sap.c4c.SalesTerritoryCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesOrganisation : Association to one sap.c4c.OrganisationalUnitCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.VisitStatusCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.VisitPriorityCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.VisitStartTimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.VisitEndTimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.VisitDistributionChannelCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.VisitDivisionCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.VisitVisitTypeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.VisitDataOriginTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.VisitCollaborationChannelCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.VisitCreatedBySSICollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.VisitPartyCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  VisitID : String(35);
  PartyID : String(60);
  PartyName : String(255);
  FormattedPhoneNumber : String(40);
  Email : String(254);
  RoleCode : String(10);
  RoleCodeText : LargeString;
  PartyTypeCode : String(15);
  PartyTypeCodeText : LargeString;
  AddressSnapshotUUID : UUID;
  MainIndicator : Boolean;
  PartyUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Visit : Association to one sap.c4c.VisitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.VisitPartyRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.VisitPartyPartyTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.VisitWorklistItemCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  VisitID : String(35);
  ActivityWorklistItemUUID : UUID;
  ActivityWorklistItemTypeCode : String(5);
  ActivityWorklistItemTypeCodeText : LargeString;
  TaskID : String(35);
  SurveyID : String(35);
  OfflineDeterminedWorklistItemIndicator : Boolean;
  ExecutedIndicator : Boolean;
  WorkitemInactive : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Visit : Association to one sap.c4c.VisitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Task : Association to one sap.c4c.TasksCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Survey : Association to one sap.c4c.SurveyCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.VisitWorklistItemActivityWorklistItemTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.VisitBTDReferenceCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  VisitID : String(35);
  ID : String(35);
  ItemUUID : UUID;
  TypeCode : String(15);
  TypeCodeText : LargeString;
  BTDRoleCode : String(3);
  BTDRoleCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Visit : Association to one sap.c4c.VisitCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.VisitBTDReferenceTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.VisitBTDReferenceBTDRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.VisitTextCollectionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  VisitID : String(35);
  Text : LargeString;
  LanguageCode : String(2);
  LanguageCodeText : LargeString;
  TypeCode : String(5);
  TypeCodeText : LargeString;
  AuthorName : String(40);
  AuthorUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  UpdatedOn : Timestamp;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Visit : Association to one sap.c4c.VisitCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.VisitTextCollectionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.VisitTextCollectionTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.VisitAttachmentCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  Binary : LargeBinary;
  CategoryCode : String(1);
  CategoryCodeText : LargeString;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  DocumentLink : LargeString;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastUpdatedOn : Timestamp;
  LinkWebURI : LargeString;
  MimeType : LargeString;
  Name : LargeString;
  ParentObjectID : String(70);
  TypeCode : String(5);
  TypeCodeText : LargeString;
  UUID : UUID;
  VisitID : String(35);
  @cds.ambiguous : 'missing on condition?'
  _Visit : Association to one sap.c4c.VisitCollection on _Visit.ObjectID = ParentObjectID;
};

@cds.persistence.skip : true
entity sap.c4c.VisitAttachmentCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.VisitAttachmentTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContactCollection {
  key ObjectID : String(70);
  ContactID : String(10);
  ContactUUID : UUID;
  ExternalID : String(100);
  ExternalSystem : String(32);
  StatusCode : String(2);
  StatusCodeText : LargeString;
  TitleCode : String(4);
  TitleCodeText : LargeString;
  AcademicTitleCode : String(4);
  AcademicTitleCodeText : LargeString;
  AdditionalAcademicTitleCode : String(4);
  AdditionalAcademicTitleCodeText : LargeString;
  NamePrefixCode : String(4);
  NamePrefixCodeText : LargeString;
  FirstName : String(40);
  LastName : String(40);
  AdditionalFamilyName : String(40);
  Initials : String(10);
  MiddleName : String(40);
  Name : String(480);
  GenderCode : String(1);
  GenderCodeText : LargeString;
  MaritalStatusCode : String(1);
  MaritalStatusCodeText : LargeString;
  LanguageCode : String(2);
  LanguageCodeText : LargeString;
  NickName : String(40);
  BirthDate : Date;
  BirthName : String(40);
  ContactPermissionCode : String(1);
  ContactPermissionCodeText : LargeString;
  ProfessionCode : String(4);
  ProfessionCodeText : LargeString;
  PerceptionOfCompanyCode : String(2);
  PerceptionOfCompanyCodeText : LargeString;
  DeviatingFullName : String(80);
  AccountID : String(10);
  AccountUUID : UUID;
  AccountFormattedName : String(480);
  Building : String(10);
  Floor : String(10);
  Room : String(10);
  JobTitle : String(40);
  FunctionCode : String(4);
  FunctionCodeText : LargeString;
  DepartmentCode : String(4);
  DepartmentCodeText : LargeString;
  Department : String(40);
  VIPContactCode : String(1);
  VIPContactCodeText : LargeString;
  Phone : String(40);
  Mobile : String(40);
  Fax : String(40);
  Email : String(255);
  EmailInvalidIndicator : Boolean;
  BestReachedByCode : String(3);
  BestReachedByCodeText : LargeString;
  FormattedPostalAddressDescription : String(480);
  BusinessAddressCountryCode : String(3);
  BusinessAddressCountryCodeText : LargeString;
  BusinessAddressStateCodeTextUpdatable : LargeString;
  BusinessAddressHouseNumber : String(10);
  BusinessAddressStreet : String(60);
  BusinessAddressCity : String(40);
  BusinessAddressStreetPostalCode : String(10);
  BusinessAddressStateCode : String(6);
  BusinessAddressStateCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreationOn : Timestamp;
  CreatedBy : String(480);
  CreatedByIdentityUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ChangedOn : Timestamp;
  ChangedBy : String(480);
  ChangedByIdentityUUID : UUID;
  ContactOwnerID : String(20);
  ContactOwnerUUID : UUID;
  NormalisedPhone : String(40);
  NormalisedMobile : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  ContactAttachmentFolder : Association to many sap.c4c.ContactAttachmentFolderCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ContactInternationalVersion : Association to many sap.c4c.ContactInternationalVersionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ContactIsContactPersonFor : Association to many sap.c4c.ContactIsContactPersonForCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ContactOwnerEmployeeBasicData : Association to one sap.c4c.EmployeeBasicDataCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ContactPersonalAddress : Association to many sap.c4c.ContactPersonalAddressCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ContactTextCollection : Association to many sap.c4c.ContactTextCollectionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CorporateAccount : Association to one sap.c4c.CorporateAccountCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ContactStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContactTitleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContactAcademicTitleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContactAdditionalAcademicTitleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContactNamePrefixCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContactGenderCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContactMaritalStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContactLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContactContactPermissionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContactProfessionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContactPerceptionOfCompanyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContactFunctionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContactDepartmentCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContactVIPContactCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContactBestReachedByCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContactBusinessAddressCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContactBusinessAddressStateCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContactPersonalAddressCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ContactID : String(10);
  MainPersonalAddress : Boolean;
  FormattedPostalAddressDescription : String(480);
  CountryCode : String(3);
  CountryCodeText : LargeString;
  StateCode : String(6);
  StateCodeText : LargeString;
  CareOfName : String(40);
  AddressLine1 : String(40);
  AddressLine2 : String(40);
  HouseNumber : String(10);
  Street : String(60);
  AddressLine4 : String(40);
  AddressLine5 : String(40);
  City : String(40);
  StreetPostalCode : String(10);
  POBox : String(10);
  POBoxPostalCode : String(10);
  TimeZoneCode : String(10);
  TimeZoneCodeText : LargeString;
  Phone : String(40);
  Mobile : String(40);
  Fax : String(40);
  EMail : String(255);
  WebSite : String(1280);
  NormalisedPhone : String(40);
  NormalisedMobile : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Contact : Association to one sap.c4c.ContactCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ContactPersonalAddressCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContactPersonalAddressStateCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContactPersonalAddressTimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContactAttachmentFolderCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ContactInternalID : String(10);
  UUID : UUID;
  Name : LargeString;
  CategoryCode : String(1);
  CategoryCodeText : LargeString;
  TypeCode : String(5);
  TypeCodeText : LargeString;
  LinkWebURI : LargeString;
  MimeType : LargeString;
  DocumentLink : LargeString;
  Binary : LargeBinary;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastUpdatedOn : Timestamp;
  Title : LargeString;
  SizeInkB : Decimal(31, 14);
  OutputRelevanceIndicator : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  _Contact : Association to one sap.c4c.ContactCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ContactAttachmentFolderCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContactAttachmentFolderTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContactTextCollectionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ContactID : String(10);
  Text : LargeString;
  LanguageCode : String(2);
  LanguageCodeText : LargeString;
  AuthorName : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(480);
  CreatedByIdentityID : String(40);
  CreatedByTechnicalUserIndicator : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  UpdatedOn : Timestamp;
  LastUpdatedBy : String(480);
  LastUpdatedByIdentityID : String(40);
  LastUpdatedByTechnicalUserIndicator : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Contact : Association to one sap.c4c.ContactCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _CreatedByIdentity : Association to one sap.c4c.BusinessUserCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _LastUpdatedByIdentity : Association to one sap.c4c.BusinessUserCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ContactTextCollectionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContactInternationalVersionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  ContactID : String(10);
  InternationalVersionCode : String(1);
  InternationalVersionCodeText : LargeString;
  TitleCode : String(4);
  TitleCodeText : LargeString;
  AcademicTitleCode : String(4);
  AcademicTitleCodeText : LargeString;
  AdditionalAcademicTitleCode : String(4);
  AdditionalAcademicTitleCodeText : LargeString;
  FirstName : String(40);
  MiddleName : String(40);
  LastName : String(40);
  AdditionalFamilyName : String(40);
  Initials : String(10);
  NickName : String(40);
  Name : String(480);
  Building : String(10);
  Floor : String(10);
  Room : String(10);
  JobTitle : String(40);
  Department : String(40);
  @cds.ambiguous : 'missing on condition?'
  Contact : Association to one sap.c4c.ContactCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ContactInternationalVersionInternationalVersionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContactInternationalVersionTitleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContactInternationalVersionAcademicTitleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContactInternationalVersionAdditionalAcademicTitleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContactIsContactPersonForCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  ContactID : String(10);
  AccountID : String(10);
  AccountFormattedName : String(480);
  ReverseMainIndicator : Boolean;
  DepartmentCode : String(4);
  DepartmentCodeText : LargeString;
  FunctionCode : String(4);
  FunctionCodeText : LargeString;
  VIPReasonCode : String(1);
  VIPReasonCodeText : LargeString;
  JobTitle : String(40);
  Department : String(40);
  Building : String(10);
  Floor : String(10);
  Room : String(10);
  Email : String(255);
  EmailInvalidIndicator : Boolean;
  Fax : String(40);
  Mobile : String(40);
  Phone : String(40);
  BestReachedByCode : String(3);
  BestReachedByCodeText : LargeString;
  OrganisationAddressUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  CorporateAccount : Association to one sap.c4c.CorporateAccountCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Contact : Association to one sap.c4c.ContactCollection on _Contact.ObjectID = ParentObjectID;
};

@cds.persistence.skip : true
entity sap.c4c.ContactIsContactPersonForDepartmentCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContactIsContactPersonForFunctionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContactIsContactPersonForVIPReasonCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContactIsContactPersonForBestReachedByCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractCollection {
  key ObjectID : String(70);
  ID : String(35);
  BuyerID : String(35);
  MainBusinessProcessVariantTypeCode : String(4);
  ProcessingTypeCode : String(4);
  ContractDeterminationCoveredObjectsRelevanceCode : String(2);
  TemplateIndicator : Boolean;
  Name : String(255);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreationDateTime : Timestamp;
  CreationIdentityUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastChangeDateTime : Timestamp;
  LastChangeIdentityUUID : UUID;
  Date : Date;
  ValidityStartDate : Date;
  ValidityEndDate : Date;
  TimeZoneCode : String(10);
  DocumentLanguageCode : String(2);
  IncludeBusinessPartnerHierarchyIndicator : Boolean;
  IncludeReleaseAuthorisedPartiesIndicator : Boolean;
  ServiceLevelObjectiveID : String(40);
  ServiceLevelObjectiveUUID : UUID;
  ServiceLevelObjectiveName : String(40);
  CancellationReasonCode : String(4);
  InvoiceScheduleStartDate : Date;
  InvoiceScheduleEndDate : Date;
  InvoiceScheduleInvoicingInAdvanceIndicator : Boolean;
  InvoiceScheduleHorizonDateCalculationFunctionCode : String(2);
  InvoiceScheduleNextInvoiceDateCalculationFunctionCode : String(2);
  ContractLifeCycleStatusCode : String(2);
  ConsistencyStatusCode : String(2);
  ReplicationProcessingStatusCode : String(2);
  ApprovalStatusCode : String(2);
  ExternalContractLifeCycleStatusCode : String(2);
  ExternalContractReferenceProcessingStatusCode : String(2);
  ExternalContractInvoiceProcessingStatusCode : String(2);
  BuyerPartyID : String(60);
  BuyerPartyUUID : UUID;
  BuyerPartyName : String(480);
  BuyerPartyMainContactPartyID : String(60);
  BuyerPartyMainContactPartyUUID : UUID;
  BuyerPartyMainContactPartyName : String(480);
  ProductRecipientPartyID : String(60);
  ProductRecipientPartyUUID : UUID;
  ProductRecipientPartyName : String(480);
  BillToPartyID : String(60);
  BillToPartyUUID : UUID;
  BillToPartyName : String(480);
  PayerPartyID : String(60);
  PayerPartyUUID : UUID;
  PayerPartyName : String(480);
  SellerPartyID : String(60);
  SellerPartyUUID : UUID;
  SellerPartyName : String(480);
  AdministratorPartyID : String(60);
  AdministratorPartyEmployeeID : String(20);
  AdministratorPartyUUID : UUID;
  AdministratorPartyName : String(480);
  EmployeeResponsiblePartyID : String(60);
  EmployeeResponsiblePartyEmployeeID : String(20);
  EmployeeResponsiblePartyUUID : UUID;
  EmployeeResponsiblePartyName : String(480);
  ContractingUnitPartyID : String(60);
  ContractingUnitPartyUUID : UUID;
  ContractingUnitPartyName : String(480);
  SalesUnitPartyID : String(60);
  SalesUnitPartyUUID : UUID;
  SalesUnitPartyName : String(480);
  SalesOrganisationID : String(20);
  SalesOrganisationUUID : UUID;
  SalesOrganisationName : String(40);
  DistributionChannelCode : String(2);
  DivisionCode : String(2);
  SalesOfficeID : String(20);
  SalesOfficeUUID : UUID;
  SalesOfficeName : String(40);
  SalesGroupID : String(20);
  SalesGroupUUID : UUID;
  SalesGroupName : String(40);
  TerritoryID : String(6);
  TerritoryUUID : UUID;
  TerritoryName : String(40);
  DeliveryPriorityCode : String(2);
  IncotermsClassificationCode : String(3);
  IncotermsTransferLocationName : String(28);
  CurrencyCode : String(3);
  CashDiscountTermsCode : String(4);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  PriceDateTime : Timestamp;
  ExternalPriceDocumentCalculationStatusCode : String(2);
  ExternalPriceDocumentPricingProcedureCode : String(6);
  GrossAmount : Decimal(28, 6);
  GrossAmountCurrencyCode : String(3);
  NetAmount : Decimal(28, 6);
  NetAmountCurrencyCode : String(3);
  InvoiceScheduleNetAmount : Decimal(28, 6);
  InvoiceScheduleNetAmountCurrencyCode : String(3);
  RequestExternalPricing : Boolean;
  Transfer : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  ContractAttachmentFolder : Association to many sap.c4c.ContractAttachmentFolderCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ContractCoveredObject : Association to many sap.c4c.ContractCoveredObjectCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ContractExternalPriceComponent : Association to many sap.c4c.ContractExternalPriceComponentCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ContractItem : Association to many sap.c4c.ContractItemCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ContractParty : Association to many sap.c4c.ContractPartyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ContractReference : Association to many sap.c4c.ContractReferenceCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ContractText : Association to many sap.c4c.ContractTextCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _BuyerParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _BuyerPartyMainContactParty : Association to one sap.c4c.ContactCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ProductRecipientParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _BillToParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _PayerParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SellerParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _AdministratorParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _AdministratorPartyEmployee : Association to one sap.c4c.EmployeeCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _EmployeeResponsibleParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _EmployeeResponsiblePartyEmployee : Association to one sap.c4c.EmployeeCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ContractingUnitParty : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesUnitParty : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesOrganisation : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesOffice : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesGroup : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Territory : Association to one sap.c4c.SalesTerritoryCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ContractMainBusinessProcessVariantTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractProcessingTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractContractDeterminationCoveredObjectsRelevanceCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractTimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractDocumentLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractCancellationReasonCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractInvoiceScheduleHorizonDateCalculationFunctionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractInvoiceScheduleNextInvoiceDateCalculationFunctionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractContractLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractConsistencyStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractReplicationProcessingStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractApprovalStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractExternalContractLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractExternalContractReferenceProcessingStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractExternalContractInvoiceProcessingStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractDistributionChannelCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractDivisionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractDeliveryPriorityCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractIncotermsClassificationCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractCashDiscountTermsCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractExternalPriceDocumentCalculationStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractExternalPriceDocumentPricingProcedureCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractGrossAmountCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractNetAmountCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractInvoiceScheduleNetAmountCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractCoveredObjectCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ContractID : String(35);
  SerialID : String(30);
  ProductID : String(60);
  ProductUUID : UUID;
  ProductDescription : String(40);
  ProductCategoryInternalID : String(20);
  ProductCategoryUUID : UUID;
  ProductCategoryDescription : String(80);
  InstallationPointID : String(40);
  InstallationPointUUID : UUID;
  InstalledBaseID : String(40);
  InstalledBaseUUID : UUID;
  InstalledBaseDescription : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Contract : Association to one sap.c4c.ContractCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Product : Association to one sap.c4c.ProductCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ProductCategory : Association to one sap.c4c.ProductCategoryHierarchyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _InstallationPoint : Association to one sap.c4c.InstallationPointCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _InstalledBase : Association to one sap.c4c.InstalledBaseCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ContractPartyCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ContractID : String(35);
  PartyID : String(60);
  PartyEmployeeID : String(20);
  PartyUUID : UUID;
  PartyName : String(480);
  PartyTypeCode : String(15);
  RoleCode : String(10);
  MainIndicator : Boolean;
  CountryCode : String(3);
  StateCode : String(6);
  CareOfName : String(240);
  AddressLine1 : String(240);
  AddressLine2 : String(240);
  HouseNumber : String(100);
  Street : String(360);
  AddressLine4 : String(240);
  AddressLine5 : String(240);
  District : String(240);
  City : String(240);
  DifferentCity : String(240);
  StreetPostalCode : String(100);
  County : String(240);
  CompanyPostalCode : String(100);
  POBoxIndicator : Boolean;
  POBox : String(100);
  POBoxPostalCode : String(100);
  POBoxDeviatingCountryCode : String(3);
  POBoxDeviatingStateCode : String(6);
  POBoxDeviatingCity : String(240);
  TimeZoneCode : String(10);
  Latitude : Decimal(31, 14);
  Longitude : Decimal(31, 14);
  Building : String(10);
  Floor : String(10);
  Room : String(10);
  Phone : String(350);
  Mobile : String(350);
  Fax : String(350);
  Email : String(765);
  WebSite : String(1280);
  CorrespondenceLanguageCode : String(2);
  BestReachedByCode : String(3);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Contract : Association to one sap.c4c.ContractCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _PartyEmployee : Association to one sap.c4c.EmployeeCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ContractPartyPartyTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractPartyRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractPartyCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractPartyStateCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractPartyPOBoxDeviatingCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractPartyPOBoxDeviatingStateCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractPartyTimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractPartyCorrespondenceLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractPartyBestReachedByCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ContractID : String(35);
  ID : String(10);
  ParentItemID : String(10);
  ParentItemUUID : UUID;
  ProcessingTypeCode : String(4);
  DeterminationRelevanceCode : String(2);
  ReleaseControlCode : String(2);
  Description : String(40);
  ValidityStartDate : Date;
  ValidityEndDate : Date;
  WarrantyGoodwillCode : String(2);
  InvoiceScheduleStartDate : Date;
  InvoiceScheduleEndDate : Date;
  InvoiceScheduleInvoicingInAdvanceIndicator : Boolean;
  InvoiceScheduleNextInvoiceDateCalculationFunctionCode : String(2);
  InvoiceScheduleHorizonDateCalculationFunctionCode : String(2);
  CancellationReasonCode : String(4);
  ContractLifeCycleStatusCode : String(2);
  ConsistencyStatusCode : String(2);
  ExternalContractLifeCycleStatusCode : String(2);
  ExternalContractReferenceProcessingStatusCode : String(2);
  ExternalContractInvoiceProcessingStatusCode : String(2);
  ProductID : String(60);
  ProductUUID : UUID;
  ProductDescription : String(40);
  Quantity : Decimal(31, 14);
  QuantityUnitCode : String(3);
  TargetQuantity : Decimal(31, 14);
  TargetQuantityUnitCode : String(3);
  TotalPeriodReleaseQuantity : Decimal(31, 14);
  TotalPeriodReleaseQuantityUnitCode : String(3);
  TotalPeriodOpenQuantity : Decimal(31, 14);
  TotalPeriodOpenQuantityUnitCode : String(3);
  TargetStatusCode : String(2);
  DeliveryPriorityCode : String(2);
  IncotermsClassificationCode : String(3);
  IncotermsTransferLocationName : String(28);
  CashDiscountTermsCode : String(4);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  PriceDateTime : Timestamp;
  NetAmount : Decimal(28, 6);
  NetAmountCurrencyCode : String(3);
  NetPriceAmount : Decimal(28, 6);
  NetPriceAmountCurrencyCode : String(3);
  InvoiceScheduleNetAmount : Decimal(28, 6);
  InvoiceScheduleNetAmountCurrencyCode : String(3);
  ProductRecipientPartyID : String(60);
  ProductRecipientPartyUUID : UUID;
  ProductRecipientPartyFormattedName : String(480);
  BillToPartyID : String(60);
  BillToPartyUUID : UUID;
  BillToPartyFormattedName : String(480);
  PayerPartyID : String(60);
  PayerPartyUUID : UUID;
  PayerPartyFormattedName : String(480);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Contract : Association to one sap.c4c.ContractCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ContractItemCoveredObject : Association to many sap.c4c.ContractItemCoveredObjectCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ContractItemEntitledProduct : Association to many sap.c4c.ContractItemEntitledProductCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ContractItemExternalPriceComponent : Association to many sap.c4c.ContractItemExternalPriceComponentCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ContractItemParty : Association to many sap.c4c.ContractItemPartyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ContractItemText : Association to many sap.c4c.ContractItemTextCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ContractItemUsageRestriction : Association to many sap.c4c.ContractItemUsageRestrictionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ParentItem : Association to one sap.c4c.ContractItemCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Product : Association to one sap.c4c.ProductCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ProductRecipientParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _BillToParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _PayerParty : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemProcessingTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemDeterminationRelevanceCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemReleaseControlCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemWarrantyGoodwillCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemInvoiceScheduleNextInvoiceDateCalculationFunctionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemInvoiceScheduleHorizonDateCalculationFunctionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemCancellationReasonCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemContractLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemConsistencyStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemExternalContractLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemExternalContractReferenceProcessingStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemExternalContractInvoiceProcessingStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemQuantityUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemTargetQuantityUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemTotalPeriodReleaseQuantityUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemTotalPeriodOpenQuantityUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemTargetStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemDeliveryPriorityCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemIncotermsClassificationCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemCashDiscountTermsCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemNetAmountCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemNetPriceAmountCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemInvoiceScheduleNetAmountCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemEntitledProductCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ContractID : String(35);
  ContractItemID : String(10);
  ProductID : String(60);
  ProductUUID : UUID;
  ProductDescription : String(40);
  ProductCategoryInternalID : String(20);
  ProductCategoryUUID : UUID;
  ProductCategoryDescription : String(80);
  ExcludeIndicator : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Contract : Association to one sap.c4c.ContractCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ContractItem : Association to one sap.c4c.ContractItemCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Product : Association to one sap.c4c.ProductCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ProductCategory : Association to one sap.c4c.ProductCategoryHierarchyCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemCoveredObjectCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ContractID : String(35);
  ContractItemID : String(10);
  SerialID : String(30);
  ProductID : String(60);
  ProductUUID : UUID;
  ProductDescription : String(40);
  ProductCategoryInternalID : String(20);
  ProductCategoryUUID : UUID;
  ProductCategoryDescription : String(80);
  InstallationPointID : String(40);
  InstallationPointUUID : UUID;
  InstalledBaseID : String(40);
  InstalledBaseUUID : UUID;
  InstalledBaseDescription : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Contract : Association to one sap.c4c.ContractCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ContractItem : Association to one sap.c4c.ContractItemCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Product : Association to one sap.c4c.ProductCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ProductCategory : Association to one sap.c4c.ProductCategoryHierarchyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _InstallationPoint : Association to one sap.c4c.InstallationPointCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _InstalledBase : Association to one sap.c4c.InstalledBaseCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemUsageRestrictionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ContractID : String(35);
  ContractItemID : String(10);
  UsageRestrictionCode : String(4);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Contract : Association to one sap.c4c.ContractCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ContractItem : Association to one sap.c4c.ContractItemCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemUsageRestrictionUsageRestrictionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemPartyCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ContractID : String(35);
  ContractItemID : String(10);
  PartyID : String(60);
  PartyEmployeeID : String(20);
  PartyUUID : UUID;
  PartyName : String(480);
  PartyTypeCode : String(15);
  RoleCode : String(10);
  MainIndicator : Boolean;
  CountryCode : String(3);
  StateCode : String(6);
  CareOfName : String(240);
  AddressLine1 : String(240);
  AddressLine2 : String(240);
  HouseNumber : String(100);
  Street : String(360);
  AddressLine4 : String(240);
  AddressLine5 : String(240);
  District : String(240);
  City : String(240);
  DifferentCity : String(240);
  StreetPostalCode : String(100);
  County : String(240);
  CompanyPostalCode : String(100);
  POBoxIndicator : Boolean;
  POBox : String(100);
  POBoxPostalCode : String(100);
  POBoxDeviatingCountryCode : String(3);
  POBoxDeviatingStateCode : String(6);
  POBoxDeviatingCity : String(240);
  TimeZoneCode : String(10);
  Latitude : Decimal(31, 14);
  Longitude : Decimal(31, 14);
  Building : String(10);
  Floor : String(10);
  Room : String(10);
  Phone : String(350);
  Mobile : String(350);
  Fax : String(350);
  Email : String(765);
  WebSite : String(1280);
  CorrespondenceLanguageCode : String(2);
  BestReachedByCode : String(3);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Contract : Association to one sap.c4c.ContractCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ContractItem : Association to one sap.c4c.ContractItemCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _PartyEmployee : Association to one sap.c4c.EmployeeCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemPartyPartyTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemPartyRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemPartyCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemPartyStateCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemPartyPOBoxDeviatingCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemPartyPOBoxDeviatingStateCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemPartyTimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemPartyCorrespondenceLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemPartyBestReachedByCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemExternalPriceComponentCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ContractID : String(35);
  ContractItemID : String(10);
  MajorLevelOrdinalNumberValue : Integer;
  MinorLevelOrdinalNumberValue : Integer;
  TypeCode : String(4);
  Description : String(40);
  CategoryCode : String(1);
  RateDecimalValue : Decimal(31, 14);
  RateMeasureUnitCode : String(3);
  RateCurrencyCode : String(3);
  RateBaseDecimalValue : Decimal(31, 14);
  RateBaseMeasureUnitCode : String(3);
  CalculatedAmount : Decimal(28, 6);
  CalculatedAmountCurrencyCode : String(3);
  EffectiveIndicator : Boolean;
  ManuallyChangedIndicator : Boolean;
  InactivityReasonCode : String(2);
  OriginCode : String(2);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  _Contract : Association to one sap.c4c.ContractCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ContractItem : Association to one sap.c4c.ContractItemCollection on _ContractItem.ObjectID = ParentObjectID;
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemExternalPriceComponentTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemExternalPriceComponentCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemExternalPriceComponentRateMeasureUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemExternalPriceComponentRateCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemExternalPriceComponentRateBaseMeasureUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemExternalPriceComponentCalculatedAmountCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemExternalPriceComponentInactivityReasonCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemExternalPriceComponentOriginCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractExternalPriceComponentCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ContractID : String(35);
  MajorLevelOrdinalNumberValue : Integer;
  MinorLevelOrdinalNumberValue : Integer;
  TypeCode : String(4);
  Description : String(40);
  CategoryCode : String(1);
  RateDecimalValue : Decimal(31, 14);
  RateMeasureUnitCode : String(3);
  RateCurrencyCode : String(3);
  RateBaseDecimalValue : Decimal(31, 14);
  RateBaseMeasureUnitCode : String(3);
  CalculatedAmount : Decimal(28, 6);
  CalculatedAmountCurrencyCode : String(3);
  EffectiveIndicator : Boolean;
  ManuallyChangedIndicator : Boolean;
  InactivityReasonCode : String(2);
  OriginCode : String(2);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  _Contract : Association to one sap.c4c.ContractCollection on _Contract.ObjectID = ParentObjectID;
};

@cds.persistence.skip : true
entity sap.c4c.ContractExternalPriceComponentTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractExternalPriceComponentCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractExternalPriceComponentRateMeasureUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractExternalPriceComponentRateCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractExternalPriceComponentRateBaseMeasureUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractExternalPriceComponentCalculatedAmountCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractExternalPriceComponentInactivityReasonCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractExternalPriceComponentOriginCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractTextCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ContractID : String(35);
  TypeCode : String(5);
  LanguageCode : String(2);
  Text : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(80);
  CreatedByIdentityID : String(40);
  CreatedByTechnicalUserIndicator : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  UpdatedOn : Timestamp;
  LastUpdatedBy : String(80);
  LastUpdatedByIdentityID : String(40);
  LastUpdatedByTechnicalUserIndicator : Boolean;
  AuthorName : String(40);
  AuthorUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Contract : Association to one sap.c4c.ContractCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _CreatedByIdentity : Association to one sap.c4c.BusinessUserCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _LastUpdatedByIdentity : Association to one sap.c4c.BusinessUserCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ContractTextTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractTextLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractAttachmentFolderCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ContractID : String(35);
  UUID : UUID;
  TypeCode : String(5);
  MimeType : LargeString;
  Binary : LargeBinary;
  DocumentLink : LargeString;
  Name : LargeString;
  CategoryCode : String(1);
  LinkWebURI : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastUpdatedOn : Timestamp;
  CreatedBy : String(80);
  LastUpdatedBy : String(80);
  SizeInkB : Decimal(31, 14);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  _Contract : Association to one sap.c4c.ContractCollection on _Contract.ObjectID = ParentObjectID;
};

@cds.persistence.skip : true
entity sap.c4c.ContractAttachmentFolderTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractAttachmentFolderCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemTextCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ContractID : String(35);
  ContractItemID : String(10);
  TypeCode : String(5);
  LanguageCode : String(2);
  Text : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(80);
  CreatedByIdentityID : String(40);
  CreatedByTechnicalUserIndicator : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  UpdatedOn : Timestamp;
  LastUpdatedBy : String(80);
  LastUpdatedByIdentityID : String(40);
  LastUpdatedByTechnicalUserIndicator : Boolean;
  AuthorName : String(40);
  AuthorUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  ContractItem : Association to one sap.c4c.ContractItemCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Contract : Association to one sap.c4c.ContractCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _CreatedByIdentity : Association to one sap.c4c.BusinessUserCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _LastUpdatedByIdentity : Association to one sap.c4c.BusinessUserCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemTextTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractItemTextLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractReferenceCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  ContractID : String(35);
  RelationshipRoleCode : String(3);
  ID : String(35);
  TypeCode : String(15);
  ItemID : String(10);
  ItemTypeCode : String(5);
  BusinessSystemID : String(32);
  @cds.ambiguous : 'missing on condition?'
  Contract : Association to one sap.c4c.ContractCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ContractReferenceRelationshipRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractReferenceTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContractReferenceItemTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerTaxNumberCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  CustomerID : String(10);
  CountryCode : String(3);
  CountryCodeText : LargeString;
  TaxTypeCode : String(2);
  TaxTypeCodeText : LargeString;
  TaxID : String(20);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  IndividualCustomer : Association to one sap.c4c.IndividualCustomerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerTaxNumberCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerTaxNumberTaxTypeCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountTaxNumberCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  AccountID : String(10);
  CountryCode : String(3);
  CountryCodeText : LargeString;
  TaxTypeCode : String(2);
  TaxTypeCodeText : LargeString;
  TaxID : String(20);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  CorporateAccount : Association to one sap.c4c.CorporateAccountCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountTaxNumberCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountTaxNumberTaxTypeCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerSalesDataCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  CustomerID : String(10);
  SalesOrganisationID : String(20);
  SalesOrganisationName : String(40);
  DistributionChannelCode : String(2);
  DistributionChannelCodeText : LargeString;
  DivisionCode : String(2);
  DivisionCodeText : LargeString;
  SalesOfficeID : String(20);
  SalesOfficeName : String(40);
  SalesGroupID : String(20);
  SalesGroupName : String(40);
  BillingBlockingReasonCode : String(2);
  BillingBlockingReasonCodeText : LargeString;
  DeliveryBlockingReasonCode : String(2);
  DeliveryBlockingReasonCodeText : LargeString;
  OrderBlockingReasonCode : String(2);
  OrderBlockingReasonCodeText : LargeString;
  SalesSupportBlockingIndicator : Boolean;
  CurrencyCode : String(3);
  CurrencyCodeText : LargeString;
  CustomerGroupCode : String(2);
  CustomerGroupCodeText : LargeString;
  DeliveryPriorityCode : String(2);
  DeliveryPriorityCodeText : LargeString;
  IncotermsClassificationCode : String(3);
  IncotermsClassificationCodeText : LargeString;
  IncotermsLocation : String(28);
  PaymentTermsCode : String(4);
  PaymentTermsCodeText : LargeString;
  CompleteDeliveryRequestedIndicator : Boolean;
  PriceListCode : String(2);
  PriceListCodeText : LargeString;
  PriceGroupCode : String(2);
  PriceGroupCodeText : LargeString;
  MarkedForDeletionIndicator : Boolean;
  PlantUUID : UUID;
  PlantID : String(20);
  PlantName : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  _Customer : Association to one sap.c4c.IndividualCustomerCollection on _Customer.ObjectID = ParentObjectID;
  @cds.ambiguous : 'missing on condition?'
  _SalesOrganisation : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesOffice : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesGroup : Association to one sap.c4c.OrganisationalUnitCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerSalesDataDistributionChannelCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerSalesDataDivisionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerSalesDataBillingBlockingReasonCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerSalesDataDeliveryBlockingReasonCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerSalesDataOrderBlockingReasonCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerSalesDataCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerSalesDataCustomerGroupCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerSalesDataDeliveryPriorityCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerSalesDataIncotermsClassificationCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerSalesDataPaymentTermsCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerSalesDataPriceListCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerSalesDataPriceGroupCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountSalesDataCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  AccountID : String(10);
  SalesOrganisationUUID : UUID;
  SalesOrganisationID : String(20);
  SalesOrganisationName : String(40);
  DistributionChannelCode : String(2);
  DistributionChannelCodeText : LargeString;
  DivisionCode : String(2);
  DivisionCodeText : LargeString;
  SalesOfficeID : String(20);
  SalesOfficeName : String(40);
  SalesOfficeUUID : UUID;
  SalesGroupID : String(20);
  SalesGroupName : String(40);
  SalesGroupUUID : UUID;
  BillingBlockingReasonCode : String(2);
  BillingBlockingReasonCodeText : LargeString;
  DeliveryBlockingReasonCode : String(2);
  DeliveryBlockingReasonCodeText : LargeString;
  OrderBlockingReasonCode : String(2);
  OrderBlockingReasonCodeText : LargeString;
  SalesSupportBlockingIndicator : Boolean;
  CurrencyCode : String(3);
  CurrencyCodeText : LargeString;
  CustomerGroupCode : String(2);
  CustomerGroupCodeText : LargeString;
  DeliveryPriorityCode : String(2);
  DeliveryPriorityCodeText : LargeString;
  IncotermsClassificationCode : String(3);
  IncotermsClassificationCodeText : LargeString;
  IncotermsLocation : String(28);
  PaymentTermsCode : String(4);
  PaymentTermsCodeText : LargeString;
  CompleteDeliveryRequestedIndicator : Boolean;
  PriceListCode : String(2);
  PriceListCodeText : LargeString;
  PriceGroupCode : String(2);
  PriceGroupCodeText : LargeString;
  MarkedForDeletionIndicator : Boolean;
  PlantUUID : UUID;
  PlantID : String(20);
  PlantName : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  _Account : Association to one sap.c4c.CorporateAccountCollection on _Account.ObjectID = ParentObjectID;
  @cds.ambiguous : 'missing on condition?'
  _SalesOrganisation : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesOffice : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesGroup : Association to one sap.c4c.OrganisationalUnitCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountSalesDataDistributionChannelCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountSalesDataDivisionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountSalesDataBillingBlockingReasonCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountSalesDataDeliveryBlockingReasonCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountSalesDataOrderBlockingReasonCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountSalesDataCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountSalesDataCustomerGroupCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountSalesDataDeliveryPriorityCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountSalesDataIncotermsClassificationCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountSalesDataPaymentTermsCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountSalesDataPriceListCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountSalesDataPriceGroupCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountVisitingHoursOperatingPeriodCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  AccountID : String(10);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  CorporateAccountVisitingHoursRecurrence : Association to one sap.c4c.CorporateAccountVisitingHoursRecurrenceCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountHasContactPersonCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  AccountID : String(10);
  ContactID : String(10);
  ContactFormattedName : String(480);
  MainIndicator : Boolean;
  DepartmentCode : String(4);
  DepartmentCodeText : LargeString;
  FunctionCode : String(4);
  FunctionCodeText : LargeString;
  VIPReasonCode : String(1);
  VIPReasonCodeText : LargeString;
  JobTitle : String(40);
  Department : String(40);
  Building : String(10);
  Floor : String(10);
  Room : String(10);
  Email : String(255);
  Fax : String(40);
  Mobile : String(40);
  Phone : String(40);
  EmailInvalidIndicator : Boolean;
  BestReachedByCode : String(3);
  BestReachedByCodeText : LargeString;
  OrganisationAddressUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Contact : Association to one sap.c4c.ContactCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Account : Association to one sap.c4c.CorporateAccountCollection on _Account.ObjectID = ParentObjectID;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountHasContactPersonDepartmentCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountHasContactPersonFunctionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountHasContactPersonVIPReasonCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountHasContactPersonBestReachedByCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerTeamCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  CustomerID : String(10);
  EmployeeUUID : UUID;
  EmployeeID : String(20);
  PartyRoleCode : String(10);
  PartyRoleCodeText : LargeString;
  StartDate : Date;
  EndDate : Date;
  MainIndicator : Boolean;
  SalesOrganisationID : String(20);
  DistributionChannelCode : String(2);
  DistributionChannelCodeText : LargeString;
  DivisionCode : String(2);
  DivisionCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  EmployeeBasicData : Association to one sap.c4c.EmployeeBasicDataCollection {  };
  @cds.ambiguous : 'missing on condition?'
  IndividualCustomer : Association to one sap.c4c.IndividualCustomerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesOrganisation : Association to one sap.c4c.OrganisationalUnitCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerTeamPartyRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerTeamDistributionChannelCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerTeamDivisionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountAddressCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  AccountID : String(10);
  UUID : UUID;
  MainIndicator : Boolean;
  ShipTo : Boolean;
  DefaultShipTo : Boolean;
  BillTo : Boolean;
  DefaultBillTo : Boolean;
  FormattedPostalAddressDescription : String(480);
  FormattedAddressFirstLineDescription : String(480);
  FormattedAddressSecondLineDescription : String(480);
  FormattedAddressThirdLineDescription : String(480);
  FormattedAddressFourthLineDescription : String(480);
  FormattedPostalAddressFirstLineDescription : String(480);
  FormattedPostalAddressSecondLineDescription : String(480);
  FormattedPostalAddressThirdLineDescription : String(480);
  CountryCode : String(3);
  CountryCodeText : LargeString;
  StateCode : String(6);
  StateCodeText : LargeString;
  CareOfName : String(40);
  AddressLine1 : String(40);
  AddressLine2 : String(40);
  HouseNumber : String(10);
  AdditionalHouseNumber : String(10);
  Street : String(60);
  AddressLine4 : String(40);
  AddressLine5 : String(40);
  District : String(40);
  City : String(40);
  DifferentCity : String(40);
  StreetPostalCode : String(10);
  County : String(40);
  CompanyPostalCode : String(10);
  POBoxIndicator : Boolean;
  POBox : String(10);
  POBoxPostalCode : String(10);
  POBoxDeviatingCountryCode : String(3);
  POBoxDeviatingCountryCodeText : LargeString;
  POBoxDeviatingStateCode : String(6);
  POBoxDeviatingStateCodeText : LargeString;
  POBoxDeviatingCity : String(40);
  TimeZoneCode : String(10);
  TimeZoneCodeText : LargeString;
  Latitude : Decimal(31, 14);
  Longitude : Decimal(31, 14);
  Building : String(10);
  Floor : String(10);
  Room : String(10);
  Phone : String(40);
  NormalisedPhone : String(40);
  Mobile : String(40);
  NormalisedMobile : String(40);
  Fax : String(40);
  Email : String(255);
  WebSite : String(1280);
  LanguageCode : String(2);
  LanguageCodeText : LargeString;
  BestReachedByCode : String(3);
  BestReachedByCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  CorporateAccount : Association to one sap.c4c.CorporateAccountCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountAddressCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountAddressStateCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountAddressPOBoxDeviatingCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountAddressPOBoxDeviatingStateCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountAddressTimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountAddressLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountAddressBestReachedByCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountTeamCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  AccountID : String(10);
  EmployeeUUID : UUID;
  EmployeeID : String(20);
  PartyRoleCode : String(10);
  PartyRoleCodeText : LargeString;
  StartDate : Date;
  EndDate : Date;
  MainIndicator : Boolean;
  SalesOrganisationID : String(20);
  DistributionChannelCode : String(2);
  DistributionChannelCodeText : LargeString;
  DivisionCode : String(2);
  DivisionCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  // CorporateAccount : Association to one sap.c4c.CorporateAccountCollection {  };
  CorporateAccount : Association to one sap.c4c.CorporateAccountCollection on CorporateAccount.ObjectID = ParentObjectID;
  @cds.ambiguous : 'missing on condition?'
  // EmployeeBasicData : Association to one sap.c4c.EmployeeBasicDataCollection {  };
  EmployeeBasicData : Association to one sap.c4c.EmployeeBasicDataCollection on EmployeeBasicData.EmployeeUUID = EmployeeUUID;
  @cds.ambiguous : 'missing on condition?'
  _SalesOrganisation : Association to one sap.c4c.OrganisationalUnitCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountTeamPartyRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountTeamDistributionChannelCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountTeamDivisionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountTextCollectionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  AccountID : String(10);
  Text : LargeString;
  LanguageCode : String(2);
  LanguageCodeText : LargeString;
  AuthorName : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(480);
  CreatedByIdentityID : String(40);
  CreatedByTechnicalUserIndicator : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  UpdatedOn : Timestamp;
  LastUpdatedBy : String(480);
  LastUpdatedByIdentityID : String(40);
  LastUpdatedByTechnicalUserIndicator : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  CorporateAccount : Association to one sap.c4c.CorporateAccountCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _CreatedByIdentity : Association to one sap.c4c.BusinessUserCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _LastUpdatedByIdentity : Association to one sap.c4c.BusinessUserCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountTextCollectionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountAttachmentFolderCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  AccountID : String(10);
  UUID : UUID;
  Name : LargeString;
  CategoryCode : String(1);
  CategoryCodeText : LargeString;
  TypeCode : String(5);
  TypeCodeText : LargeString;
  LinkWebURI : LargeString;
  MimeType : LargeString;
  DocumentLink : LargeString;
  Binary : LargeBinary;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastUpdatedOn : Timestamp;
  Title : LargeString;
  SizeInkB : Decimal(31, 14);
  OutputRelevanceIndicator : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  _Account : Association to one sap.c4c.CorporateAccountCollection on _Account.ObjectID = ParentObjectID;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountAttachmentFolderCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountAttachmentFolderTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountCollection {
  key ObjectID : String(70);
  AccountID : String(10);
  UUID : UUID;
  ExternalID : String(100);
  ExternalSystem : String(32);
  RoleCode : String(6);
  RoleCodeText : LargeString;
  LifeCycleStatusCode : String(2);
  LifeCycleStatusCodeText : LargeString;
  DUNSID : String(60);
  LegalFormCode : String(2);
  LegalFormCodeText : LargeString;
  CustomerABCClassificationCode : String(1);
  CustomerABCClassificationCodeText : LargeString;
  NielsenRegionCode : String(2);
  NielsenRegionCodeText : LargeString;
  IndustrialSectorCode : String(10);
  IndustrialSectorCodeText : LargeString;
  ContactPermissionCode : String(1);
  ContactPermissionCodeText : LargeString;
  BusinessPartnerFormattedName : String(480);
  Name : String(40);
  AdditionalName : String(40);
  AdditionalName2 : String(40);
  AdditionalName3 : String(40);
  CurrentDefaultAddressUUID : UUID;
  FormattedPostalAddressDescription : String(480);
  CountryCode : String(3);
  CountryCodeText : LargeString;
  StateCode : String(6);
  StateCodeText : LargeString;
  CareOfName : String(40);
  AddressLine1 : String(40);
  AddressLine2 : String(40);
  HouseNumber : String(10);
  AdditionalHouseNumber : String(10);
  Street : String(60);
  AddressLine4 : String(40);
  AddressLine5 : String(40);
  District : String(40);
  City : String(40);
  DifferentCity : String(40);
  StreetPostalCode : String(10);
  County : String(40);
  CompanyPostalCode : String(10);
  POBoxIndicator : Boolean;
  POBox : String(10);
  POBoxPostalCode : String(10);
  POBoxDeviatingCountryCode : String(3);
  POBoxDeviatingCountryCodeText : LargeString;
  POBoxDeviatingRegionCode : String(6);
  POBoxDeviatingRegionCodeText : LargeString;
  POBoxDeviatingCity : String(40);
  TimeZoneCode : String(10);
  TimeZoneCodeText : LargeString;
  Building : String(10);
  Floor : String(10);
  Room : String(10);
  Phone : String(40);
  NormalisedPhone : String(40);
  Mobile : String(40);
  NormalisedMobile : String(40);
  Fax : String(40);
  Email : String(255);
  WebSite : String(1280);
  LanguageCode : String(2);
  LanguageCodeText : LargeString;
  BestReachedByCode : String(3);
  BestReachedByCodeText : LargeString;
  OrderBlockingReasonCode : String(2);
  OrderBlockingReasonCodeText : LargeString;
  DeliveryBlockingReasonCode : String(2);
  DeliveryBlockingReasonCodeText : LargeString;
  BillingBlockingReasonCode : String(2);
  BillingBlockingReasonCodeText : LargeString;
  SalesSupportBlockingIndicator : Boolean;
  LegalCompetenceIndicator : Boolean;
  RecommendedVisitingFrequency : String(20);
  VisitDuration : String(20);
  LastVisitingDate : Date;
  NextVisitingDate : Date;
  LatestRecommendedVisitingDate : Date;
  OwnerID : String(20);
  OwnerUUID : UUID;
  ParentAccountID : String(10);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreationOn : Timestamp;
  CreatedBy : String(480);
  CreatedByIdentityUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ChangedOn : Timestamp;
  ChangedBy : String(480);
  ChangedByIdentityUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  CorporateAccountAddress : Association to many sap.c4c.CorporateAccountAddressCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CorporateAccountAttachmentFolder : Association to many sap.c4c.CorporateAccountAttachmentFolderCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CorporateAccountHasContactPerson : Association to many sap.c4c.CorporateAccountHasContactPersonCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CorporateAccountIdentification : Association to many sap.c4c.CorporateAccountIdentificationCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CorporateAccountInternationalVersion : Association to many sap.c4c.CorporateAccountInternationalVersionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CorporateAccountSalesData : Association to many sap.c4c.CorporateAccountSalesDataCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CorporateAccountSkills : Association to many sap.c4c.CorporateAccountSkillsCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CorporateAccountTaxNumber : Association to many sap.c4c.CorporateAccountTaxNumberCollection {  };
  @cds.ambiguous : 'missing on condition?'
  // CorporateAccountTeam : Association to many sap.c4c.CorporateAccountTeamCollection {  };
  CorporateAccountTeam : Composition of many sap.c4c.CorporateAccountTeamCollection on CorporateAccountTeam.ParentObjectID = ObjectID;
  @cds.ambiguous : 'missing on condition?'
  CorporateAccountTextCollection : Association to many sap.c4c.CorporateAccountTextCollectionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CorporateAccountVisitingHours : Association to many sap.c4c.CorporateAccountVisitingHoursCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CorporateAccountVisitingInformationDetails : Association to many sap.c4c.CorporateAccountVisitingInformationDetailsCollection {  };
  @cds.ambiguous : 'missing on condition?'
  OwnerEmployeeBasicData : Association to one sap.c4c.EmployeeBasicDataCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ParentAccount : Association to one sap.c4c.CorporateAccountCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountLegalFormCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountCustomerABCClassificationCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountNielsenRegionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountIndustrialSectorCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountContactPermissionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountStateCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountPOBoxDeviatingCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountPOBoxDeviatingRegionCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountTimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountBestReachedByCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountOrderBlockingReasonCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountDeliveryBlockingReasonCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountBillingBlockingReasonCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerTextCollectionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  CustomerID : String(10);
  Text : LargeString;
  LanguageCode : String(2);
  LanguageCodeText : LargeString;
  AuthorName : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(480);
  CreatedByIdentityID : String(40);
  CreatedByTechnicalUserIndicator : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  UpdatedOn : Timestamp;
  LastUpdatedBy : String(480);
  LastUpdatedByIdentityID : String(40);
  LastUpdatedByTechnicalUserIndicator : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  IndividualCustomer : Association to one sap.c4c.IndividualCustomerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _CreatedByIdentity : Association to one sap.c4c.BusinessUserCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _LastUpdatedByIdentity : Association to one sap.c4c.BusinessUserCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerTextCollectionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerAttachmentFolderCollection {
  key ObjectID : String(70);
  CustomerID : String(10);
  UUID : UUID;
  Name : LargeString;
  CategoryCode : String(1);
  CategoryCodeText : LargeString;
  TypeCode : String(5);
  TypeCodeText : LargeString;
  LinkWebURI : LargeString;
  MimeType : LargeString;
  DocumentLink : LargeString;
  Binary : LargeBinary;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastUpdatedOn : Timestamp;
  Title : LargeString;
  SizeInkB : Decimal(31, 14);
  OutputRelevanceIndicator : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  ParentObjectID : String(70);
  @cds.ambiguous : 'missing on condition?'
  _Customer : Association to one sap.c4c.IndividualCustomerCollection on _Customer.ObjectID = ParentObjectID;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerAttachmentFolderCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerAttachmentFolderTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerCollection {
  key ObjectID : String(70);
  CustomerID : String(10);
  UUID : UUID;
  ExternalID : String(100);
  ExternalSystem : String(32);
  RoleCode : String(6);
  RoleCodeText : LargeString;
  LifeCycleStatusCode : String(2);
  LifeCycleStatusCodeText : LargeString;
  CustomerABCClassificationCode : String(1);
  CustomerABCClassificationCodeText : LargeString;
  ContactPermissionCode : String(1);
  ContactPermissionCodeText : LargeString;
  TitleCode : String(4);
  TitleCodeText : LargeString;
  AcademicTitleCode : String(4);
  AcademicTitleCodeText : LargeString;
  FirstName : String(40);
  MiddleName : String(40);
  LastName : String(40);
  AdditionalLastName : String(40);
  Initials : String(10);
  NickName : String(40);
  GenderCode : String(1);
  GenderCodeText : LargeString;
  NamePrefixCode : String(4);
  NamePrefixCodeText : LargeString;
  MaritalStatusCode : String(1);
  MaritalStatusCodeText : LargeString;
  LanguageCode : String(2);
  LanguageCodeText : LargeString;
  BirthName : String(40);
  BirthDate : Date;
  NationalityCountryCode : String(3);
  NationalityCountryCodeText : LargeString;
  ProfessionCode : String(4);
  ProfessionCodeText : LargeString;
  FormattedName : String(480);
  FormattedPostalAddressDescription : String(480);
  CountryCode : String(3);
  CountryCodeText : LargeString;
  StateCode : String(6);
  StateCodeText : LargeString;
  CareOfName : String(40);
  AddressLine1 : String(40);
  AddressLine2 : String(40);
  HouseNumber : String(10);
  AdditionalHouseNumber : String(10);
  Street : String(60);
  AddressLine4 : String(40);
  AddressLine5 : String(40);
  District : String(40);
  City : String(40);
  DifferentCity : String(40);
  StreetPostalCode : String(10);
  County : String(40);
  POBoxIndicator : Boolean;
  POBox : String(10);
  POBoxPostalCode : String(10);
  POBoxDeviatingCountryCode : String(3);
  POBoxDeviatingCountryCodeText : LargeString;
  POBoxDeviatingStateCode : String(6);
  POBoxDeviatingStateCodeText : LargeString;
  POBoxDeviatingCity : String(40);
  TimeZoneCode : String(10);
  TimeZoneCodeText : LargeString;
  TaxJurisdictionCode : String(25);
  TaxJurisdictionCodeText : LargeString;
  Building : String(10);
  Floor : String(10);
  Room : String(10);
  Phone : String(40);
  NormalisedPhone : String(40);
  Mobile : String(40);
  NormalisedMobile : String(40);
  Fax : String(40);
  Email : String(255);
  EmailInvalidIndicator : Boolean;
  WebSite : String(1280);
  BestReachedByCode : String(3);
  BestReachedByCodeText : LargeString;
  OrderBlockingReasonCode : String(2);
  OrderBlockingReasonCodeText : LargeString;
  DeliveryBlockingReasonCode : String(2);
  DeliveryBlockingReasonCodeText : LargeString;
  BillingBlockingReasonCode : String(2);
  BillingBlockingReasonCodeText : LargeString;
  SalesSupportBlockingIndicator : Boolean;
  RecommendedVisitingFrequency : String(20);
  VisitDuration : String(20);
  LastVisitingDate : Date;
  NextVisitingDate : Date;
  LatestRecommendedVisitingDate : Date;
  OwnerID : String(20);
  OwnerUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreationOn : Timestamp;
  CreatedBy : String(480);
  CreatedByIdentityUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ChangedOn : Timestamp;
  ChangedBy : String(480);
  ChangedByIdentityUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  IndividualCustomerAddress : Association to many sap.c4c.IndividualCustomerAddressCollection {  };
  @cds.ambiguous : 'missing on condition?'
  IndividualCustomerAttachmentFolder : Association to many sap.c4c.IndividualCustomerAttachmentFolderCollection {  };
  @cds.ambiguous : 'missing on condition?'
  IndividualCustomerIdentification : Association to many sap.c4c.IndividualCustomerIdentificationCollection {  };
  @cds.ambiguous : 'missing on condition?'
  IndividualCustomerSalesData : Association to many sap.c4c.IndividualCustomerSalesDataCollection {  };
  @cds.ambiguous : 'missing on condition?'
  IndividualCustomerSkills : Association to many sap.c4c.IndividualCustomerSkillsCollection {  };
  @cds.ambiguous : 'missing on condition?'
  IndividualCustomerTaxNumber : Association to many sap.c4c.IndividualCustomerTaxNumberCollection {  };
  @cds.ambiguous : 'missing on condition?'
  IndividualCustomerTeam : Association to many sap.c4c.IndividualCustomerTeamCollection {  };
  @cds.ambiguous : 'missing on condition?'
  IndividualCustomerTextCollection : Association to many sap.c4c.IndividualCustomerTextCollectionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  IndividualCustomerVisitingInformationDetails : Association to many sap.c4c.IndividualCustomerVisitingInformationDetailsCollection {  };
  @cds.ambiguous : 'missing on condition?'
  OwnerEmployeeBasicData : Association to one sap.c4c.EmployeeBasicDataCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerCustomerABCClassificationCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerContactPermissionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerTitleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerAcademicTitleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerGenderCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerNamePrefixCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerMaritalStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerNationalityCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerProfessionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerStateCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerPOBoxDeviatingCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerPOBoxDeviatingStateCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerTimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerTaxJurisdictionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerBestReachedByCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerOrderBlockingReasonCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerDeliveryBlockingReasonCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerBillingBlockingReasonCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerAddressCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  CustomerID : String(10);
  MainIndicator : Boolean;
  ShipTo : Boolean;
  DefaultShipTo : Boolean;
  BillTo : Boolean;
  DefaultBillTo : Boolean;
  FormattedPostalAddressDescription : String(480);
  FormattedAddressFirstLineDescription : String(480);
  FormattedAddressSecondLineDescription : String(480);
  FormattedAddressThirdLineDescription : String(480);
  FormattedAddressFourthLineDescription : String(480);
  FormattedPostalAddressFirstLineDescription : String(480);
  FormattedPostalAddressSecondLineDescription : String(480);
  FormattedPostalAddressThirdLineDescription : String(480);
  CountryCode : String(3);
  CountryCodeText : LargeString;
  StateCode : String(6);
  StateCodeText : LargeString;
  CareOfName : String(40);
  AddressLine1 : String(40);
  AddressLine2 : String(40);
  HouseNumber : String(10);
  AdditionalHouseNumber : String(10);
  Street : String(60);
  AddressLine4 : String(40);
  AddressLine5 : String(40);
  District : String(40);
  City : String(40);
  DifferentCity : String(40);
  StreetPostalCode : String(10);
  County : String(40);
  POBoxIndicator : Boolean;
  POBox : String(10);
  POBoxPostalCode : String(10);
  POBoxDeviatingCountryCode : String(3);
  POBoxDeviatingCountryCodeText : LargeString;
  POBoxDeviatingStateCode : String(6);
  POBoxDeviatingStateCodeText : LargeString;
  POBoxDeviatingCity : String(40);
  TimeZoneCode : String(10);
  TimeZoneCodeText : LargeString;
  Latitude : Decimal(31, 14);
  Longitude : Decimal(31, 14);
  Building : String(10);
  Floor : String(10);
  Room : String(10);
  Phone : String(40);
  NormalisedPhone : String(40);
  Mobile : String(40);
  NormalisedMobile : String(40);
  Fax : String(40);
  Email : String(255);
  EmailInvalidIndicator : Boolean;
  WebSite : String(1280);
  BestReachedByCode : String(3);
  BestReachedByCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  IndividualCustomer : Association to one sap.c4c.IndividualCustomerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerAddressCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerAddressStateCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerAddressPOBoxDeviatingCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerAddressPOBoxDeviatingStateCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerAddressTimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerAddressBestReachedByCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountVisitingHoursCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  AccountID : String(10);
  WorkingDayCalendarCode : String(6);
  WorkingDayCalendarCodeText : LargeString;
  TimeZoneCode : String(10);
  TimeZoneCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  CorporateAccount : Association to one sap.c4c.CorporateAccountCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CorporateAccountVisitingHoursRecurrence : Association to many sap.c4c.CorporateAccountVisitingHoursRecurrenceCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountVisitingHoursWorkingDayCalendarCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountVisitingHoursTimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountVisitingHoursRecurrenceCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  AccountID : String(10);
  MondayIndicator : Boolean;
  TuesdayIndicator : Boolean;
  WednesdayIndicator : Boolean;
  ThursdayIndicator : Boolean;
  FridayIndicator : Boolean;
  SaturdayIndicator : Boolean;
  SundayIndicator : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  CorporateAccountVisitingHours : Association to one sap.c4c.CorporateAccountVisitingHoursCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CorporateAccountVisitingHoursOperatingPeriod : Association to many sap.c4c.CorporateAccountVisitingHoursOperatingPeriodCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerSkillsCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  CustomerID : String(10);
  SkillID : String(20);
  Mandatory : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  IndividualCustomer : Association to one sap.c4c.IndividualCustomerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountSkillsCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  AccountID : String(10);
  SkillID : String(20);
  Mandatory : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  CorporateAccount : Association to one sap.c4c.CorporateAccountCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountVisitingInformationDetailsCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  AccountID : String(10);
  VisitTypeCode : String(4);
  VisitTypeCodeText : LargeString;
  SalesOrganisationID : String(20);
  DistributionChannelCode : String(2);
  DistributionChannelCodeText : LargeString;
  DivisionCode : String(2);
  DivisionCodeText : LargeString;
  RecommendedVisitingFrequency : String(20);
  VisitDuration : String(20);
  NextVisitingDate : Date;
  LastVisitingDate : Date;
  LatestRecommendedVisitingDate : Date;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  _SalesOrganisation : Association to one sap.c4c.OrganisationalUnitCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountVisitingInformationDetailsVisitTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountVisitingInformationDetailsDistributionChannelCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountVisitingInformationDetailsDivisionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerVisitingInformationDetailsCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  CustomerID : String(10);
  VisitTypeCode : String(4);
  VisitTypeCodeText : LargeString;
  SalesOrganisationID : String(20);
  DistributionChannelCode : String(2);
  DistributionChannelCodeText : LargeString;
  DivisionCode : String(2);
  DivisionCodeText : LargeString;
  RecommendedVisitingFrequency : String(20);
  VisitDuration : String(20);
  NextVisitingDate : Date;
  LastVisitingDate : Date;
  LatestRecommendedVisitingDate : Date;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  _SalesOrganisation : Association to one sap.c4c.OrganisationalUnitCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerVisitingInformationDetailsVisitTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerVisitingInformationDetailsDistributionChannelCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerVisitingInformationDetailsDivisionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountInternationalVersionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  AccountID : String(10);
  InternationalVersionCode : String(1);
  InternationalVersionCodeText : LargeString;
  BusinessPartnerFormattedName : String(480);
  Name : String(40);
  AdditionalName : String(40);
  AdditionalName2 : String(40);
  AdditionalName3 : String(40);
  CurrentDefaultAddressUUID : UUID;
  FormattedPostalAddressDescription : String(480);
  CountryCode : String(3);
  CountryCodeText : LargeString;
  StateCode : String(6);
  StateCodeText : LargeString;
  CareOfName : String(40);
  AddressLine1 : String(40);
  AddressLine2 : String(40);
  HouseNumber : String(10);
  Street : String(60);
  AddressLine4 : String(40);
  AddressLine5 : String(40);
  District : String(40);
  City : String(40);
  DifferentCity : String(40);
  StreetPostalCode : String(10);
  County : String(40);
  CompanyPostalCode : String(10);
  POBoxIndicator : Boolean;
  POBox : String(10);
  POBoxPostalCode : String(10);
  POBoxDeviatingCountryCode : String(3);
  POBoxDeviatingCountryCodeText : LargeString;
  POBoxDeviatingRegionCode : String(6);
  POBoxDeviatingRegionCodeText : LargeString;
  POBoxDeviatingCity : String(40);
  TimeZoneCode : String(10);
  TimeZoneCodeText : LargeString;
  Building : String(10);
  Floor : String(10);
  Room : String(10);
  @cds.ambiguous : 'missing on condition?'
  CorporateAccount : Association to one sap.c4c.CorporateAccountCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountInternationalVersionInternationalVersionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountInternationalVersionCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountInternationalVersionStateCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountInternationalVersionPOBoxDeviatingCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountInternationalVersionPOBoxDeviatingRegionCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountInternationalVersionTimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountIdentificationCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  AccountID : String(10);
  IDTypeCode : String(6);
  IDTypeCodeText : LargeString;
  IDNumber : String(60);
  ResponsibleInstitution : String(40);
  EntryDate : Date;
  ValidFrom : Date;
  ValidTo : Date;
  CountryCode : String(3);
  CountryCodeText : LargeString;
  StateCode : String(6);
  StateCodeText : LargeString;
  @cds.ambiguous : 'missing on condition?'
  CorporateAccount : Association to one sap.c4c.CorporateAccountCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountIdentificationIDTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountIdentificationCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CorporateAccountIdentificationStateCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerIdentificationCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  CustomerID : String(10);
  IDTypeCode : String(6);
  IDTypeCodeText : LargeString;
  IDNumber : String(60);
  ResponsibleInstitution : String(40);
  EntryDate : Date;
  ValidFrom : Date;
  ValidTo : Date;
  CountryCode : String(3);
  CountryCodeText : LargeString;
  StateCode : String(6);
  StateCodeText : LargeString;
  @cds.ambiguous : 'missing on condition?'
  IndividualCustomer : Association to one sap.c4c.IndividualCustomerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerIdentificationIDTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerIdentificationCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerIdentificationStateCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadCollection {
  key ObjectID : String(70);
  ID : String(35);
  Name : String(255);
  NameLanguageCode : String(2);
  NameLanguageCodeText : LargeString;
  AccountPartyID : String(60);
  AccountPartyUUID : UUID;
  AccountPartyName : String(480);
  ContactID : String(60);
  ContactUUID : UUID;
  ContactName : String(480);
  Company : String(40);
  ContactFirstName : String(40);
  ContactMiddleName : String(40);
  ContactLastName : String(40);
  IndividualCustomerGivenName : String(40);
  IndividualCustomerMiddleName : String(40);
  IndividualCustomerFamilyName : String(40);
  QualificationLevelCode : String(2);
  QualificationLevelCodeText : LargeString;
  UserStatusCode : String(2);
  UserStatusCodeText : LargeString;
  ResultReasonCode : String(3);
  ResultReasonCodeText : LargeString;
  ApprovalStatusCode : String(2);
  ApprovalStatusCodeText : LargeString;
  ConsistencyStatusCode : String(2);
  ConsistencyStatusCodeText : LargeString;
  OriginTypeCode : String(3);
  OriginTypeCodeText : LargeString;
  PriorityCode : String(1);
  PriorityCodeText : LargeString;
  StartDate : Date;
  EndDate : Date;
  CampaignID : String(35);
  GroupCode : String(4);
  GroupCodeText : LargeString;
  OwnerPartyID : String(60);
  OwnerPartyUUID : UUID;
  EmployeeResponsibleUUID : UUID;
  OwnerPartyName : String(480);
  OwnerPartyIDSales : String(60);
  OwnerUUIDSales : UUID;
  OwnerSalesName : String(480);
  MarketingUnitPartyID : String(60);
  MarketingUnitPartyUUID : UUID;
  MarketingName : String(480);
  SalesUnitPartyID : String(60);
  SalesUnitPartyUUID : UUID;
  SalesUnitName : String(480);
  SalesOrganisationID : String(20);
  SalesOrganisationUUID : UUID;
  DistributionChannelCode : String(2);
  DistributionChannelCodeText : LargeString;
  DivisionCode : String(2);
  DivisionCodeText : LargeString;
  SalesOfficeID : String(20);
  SalesOfficeUUID : UUID;
  SalesGroupID : String(20);
  SalesGroupUUID : UUID;
  SurveyTotalScoreValue : Integer;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreationDateTime : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastChangeDateTime : Timestamp;
  CreationIdentityUUID : UUID;
  LastChangeIdentityUUID : UUID;
  Note : LargeString;
  SalesTerritoryID : String(6);
  SalesTerritoryUUID : UUID;
  SalesTerritoryName : String(40);
  ExpectedRevenueAmount : Decimal(28, 6);
  ExpectedRevenueCurrencyCode : String(3);
  ExpectedRevenueCurrencyCodeText : LargeString;
  Score : Integer;
  CompanySecondName : String(40);
  CompanyThirdName : String(40);
  CompanyFourthName : String(40);
  AccountPostalAddressElementsHouseID : String(10);
  AccountPostalAddressElementsStreetPrefix : String(40);
  AccountPostalAddressElementsAdditionalStreetPrefixName : String(40);
  AccountPostalAddressElementsStreetName : String(60);
  AccountPostalAddressElementsStreetSufix : String(40);
  AccountPostalAddressElementsAdditionalStreetSuffixName : String(40);
  AccountCity : String(40);
  AccountCountry : String(3);
  AccountCountryText : LargeString;
  AccountState : String(6);
  AccountStateText : LargeString;
  AccountPostalAddressElementsPOBoxID : String(10);
  AccountPostalAddressElementsStreetPostalCode : String(10);
  AccountPostalAddressElementsCountyName : String(40);
  AccountPhone : String(40);
  AccountFax : String(40);
  AccountMobile : String(40);
  AccountEMail : String(255);
  AccountWebsite : String(1028);
  AccountLatitudeMeasure : Decimal(31, 14);
  AccountLatitudeMeasureUnitCode : String(3);
  AccountLatitudeMeasureUnitCodeText : LargeString;
  AccountLongitudeMeasure : Decimal(31, 14);
  AccountLongitudeMeasureUnitCode : String(3);
  AccountLongitudeMeasureUnitCodeText : LargeString;
  AccountLegalForm : String(2);
  AccountLegalFormText : LargeString;
  OrganisationAccountABCClassificationCode : String(1);
  OrganisationAccountABCClassificationCodeText : LargeString;
  OrganisationAccountIndustrialSectorCode : String(10);
  OrganisationAccountIndustrialSectorCodeText : LargeString;
  AccountDUNS : String(60);
  OrganisationAccountContactAllowedCode : String(1);
  OrganisationAccountContactAllowedCodeText : LargeString;
  AccountCorrespondenceLanguageCode : String(2);
  AccountCorrespondenceLanguageCodeText : LargeString;
  AccountNote : LargeString;
  ContactFormOfAddressCode : String(4);
  ContactFormOfAddressCodeText : LargeString;
  ContactFunctionalTitleName : String(40);
  ContactAcademicTitleCode : String(4);
  ContactAcademicTitleCodeText : LargeString;
  ContactAdditionalAcademicTitleCode : String(4);
  ContactAdditionalAcademicTitleCodeText : LargeString;
  ContactNickName : String(40);
  ContactCorrespondenceLanguageCode : String(2);
  ContactCorrespondenceLanguageCodeText : LargeString;
  ContactGenderCode : String(1);
  ContactGenderCodeText : LargeString;
  ContactMaritalStatusCode : String(1);
  ContactMaritalStatusCodeText : LargeString;
  BusinessPartnerRelationshipBusinessPartnerFunctionTypeCode : String(4);
  BusinessPartnerRelationshipBusinessPartnerFunctionTypeCodeText : LargeString;
  BusinessPartnerRelationshipBusinessPartnerFunctionalAreaCode : String(4);
  BusinessPartnerRelationshipBusinessPartnerFunctionalAreaCodeText : LargeString;
  ContactDepartmentName : String(40);
  BusinessPartnerRelationshipContactVIPReasonCode : String(1);
  BusinessPartnerRelationshipContactVIPReasonCodeText : LargeString;
  ContactAllowedCode : String(1);
  ContactAllowedCodeText : LargeString;
  BusinessPartnerRelationshipEngagementScoreNumberValue : String(100);
  ContactBuildingID : String(10);
  ContactFloorID : String(10);
  ContactRoomID : String(10);
  ContactPhone : String(40);
  ContactFacsimileFormattedNumberDescription : String(40);
  ContactMobile : String(40);
  ContactEMail : String(255);
  ContactEMailUsageDeniedIndicator : String(1);
  ContactNote : LargeString;
  IndividualCustomerABCClassificationCode : String(1);
  IndividualCustomerABCClassificationCodeText : LargeString;
  IndividualCustomerGenderCode : String(1);
  IndividualCustomerGenderCodeText : LargeString;
  IndividualCustomerMaritalStatusCode : String(1);
  IndividualCustomerMaritalStatusCodeText : LargeString;
  IndividualCustomerEMail : String(255);
  IndividualCustomerPhone : String(40);
  IndividualCustomerFax : String(40);
  IndividualCustomerMobile : String(40);
  IndividualCustomerAddressHouseID : String(10);
  IndividualCustomerAddressStreetName : String(60);
  IndividualCustomerAddressCity : String(40);
  IndividualCustomerAddressCountry : String(100);
  IndividualCustomerAddressCountryText : LargeString;
  IndividualCustomerAddressState : String(6);
  IndividualCustomerAddressStateText : LargeString;
  IndividualCustomerAddressPostalCode : String(10);
  IndividualCustomerAddressCountyName : String(40);
  IndividualCustomerNationalityCountryCode : String(3);
  IndividualCustomerNationalityCountryCodeText : LargeString;
  @odata.precision : 0
  @odata.type : 'Edm.DateTimeOffset'
  IndividualCustomerBirthDate : DateTime;
  IndividualCustomerFormOfAddressCode : String(4);
  IndividualCustomerFormOfAddressCodeText : LargeString;
  IndividualCustomerAcademicTitleCode : String(4);
  IndividualCustomerAcademicTitleCodeText : LargeString;
  IndividualCustomerOccupationCode : String(4);
  IndividualCustomerOccupationCodeText : LargeString;
  IndividualCustomerContactAllowedCode : String(1);
  IndividualCustomerContactAllowedCodeText : LargeString;
  IndividualCustomerNonVerbalCommunicationLanguageCode : String(2);
  IndividualCustomerNonVerbalCommunicationLanguageCodeText : LargeString;
  IndividualCustomerInitialsName : String(100);
  AccountPreferredCommunicationMediumTypeCode : String(3);
  AccountPreferredCommunicationMediumTypeCodeText : LargeString;
  IndividualCustomerNamePrefixCode : String(4);
  IndividualCustomerNamePrefixCodeText : LargeString;
  AccountLifeCycleStatusCode : String(2);
  AccountLifeCycleStatusCodeText : LargeString;
  MainContactLifeCycleStatusCode : String(2);
  MainContactLifeCycleStatusCodeText : LargeString;
  LifeCycleStatusCode : String(2);
  LifeCycleStatusCodeText : LargeString;
  ExternalID : String(35);
  CreatedBy : String(480);
  LastChangedBy : String(480);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  NGMLeadScore_KUT : Decimal(2);
  @cds.ambiguous : 'missing on condition?'
  LeadAttachmentFolder : Association to many sap.c4c.LeadAttachmentFolderCollection {  };
  @cds.ambiguous : 'missing on condition?'
  LeadBusinessTransactionDocumentReference : Association to many sap.c4c.LeadBusinessTransactionDocumentReferenceCollection {  };
  @cds.ambiguous : 'missing on condition?'
  LeadContact : Association to many sap.c4c.LeadContactCollection {  };
  @cds.ambiguous : 'missing on condition?'
  LeadEvent : Association to many sap.c4c.LeadEventCollection {  };
  @cds.ambiguous : 'missing on condition?'
  LeadExternalParty : Association to many sap.c4c.LeadExternalPartyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  LeadHistoricalVersion : Association to many sap.c4c.LeadHistoricalVersionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  LeadInstalledObject : Association to many sap.c4c.LeadInstalledObjectCollection {  };
  @cds.ambiguous : 'missing on condition?'
  LeadItem : Association to many sap.c4c.LeadItemCollection {  };
  @cds.ambiguous : 'missing on condition?'
  LeadMarketingPermissionChannelPermission : Association to many sap.c4c.LeadMarketingPermissionChannelPermissionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  LeadMarketingPermissionCommTypePermission : Association to many sap.c4c.LeadMarketingPermissionCommTypePermissionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  LeadParty : Association to many sap.c4c.LeadPartyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  LeadSalesAndMarketingTeam : Association to many sap.c4c.LeadSalesAndMarketingTeamCollection {  };
  @cds.ambiguous : 'missing on condition?'
  LeadTextCollection : Association to many sap.c4c.LeadTextCollectionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _AccountParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Contact : Association to one sap.c4c.ContactCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Campaign : Association to one sap.c4c.CampaignCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _OwnerParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _MarketingUnitParty : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesUnitParty : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesOrganisation : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesOffice : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesGroup : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesTerritory : Association to one sap.c4c.SalesTerritoryCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.LeadNameLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadQualificationLevelCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadUserStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadResultReasonCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadApprovalStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadConsistencyStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadOriginTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadPriorityCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadGroupCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadDistributionChannelCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadDivisionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadExpectedRevenueCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadAccountCountryCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadAccountStateCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadAccountLatitudeMeasureUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadAccountLongitudeMeasureUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadAccountLegalFormCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadOrganisationAccountABCClassificationCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadOrganisationAccountIndustrialSectorCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadOrganisationAccountContactAllowedCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadAccountCorrespondenceLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadContactFormOfAddressCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadContactAcademicTitleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadContactAdditionalAcademicTitleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadContactCorrespondenceLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadContactGenderCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadContactMaritalStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadBusinessPartnerRelationshipBusinessPartnerFunctionTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadBusinessPartnerRelationshipBusinessPartnerFunctionalAreaCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadBusinessPartnerRelationshipContactVIPReasonCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadContactAllowedCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadIndividualCustomerABCClassificationCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadIndividualCustomerGenderCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadIndividualCustomerMaritalStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadIndividualCustomerAddressCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadIndividualCustomerAddressStateCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadIndividualCustomerNationalityCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadIndividualCustomerFormOfAddressCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadIndividualCustomerAcademicTitleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadIndividualCustomerOccupationCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadIndividualCustomerContactAllowedCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadIndividualCustomerNonVerbalCommunicationLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadAccountPreferredCommunicationMediumTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadIndividualCustomerNamePrefixCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadAccountLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadMainContactLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadItemCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  LeadID : String(35);
  ID : String(10);
  UUID : UUID;
  Description : String(40);
  languageCode : String(2);
  languageCodeText : LargeString;
  ProductID : String(60);
  ProductUUID : UUID;
  ProductName : String(40);
  ProductCategoryInternalID : String(20);
  Quantity : Decimal(31, 14);
  unitCode : String(3);
  unitCodeText : LargeString;
  ProductCategoryDescription : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Lead : Association to one sap.c4c.LeadCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Product : Association to one sap.c4c.ProductCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ProductCategory : Association to one sap.c4c.ProductCategoryHierarchyCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.LeadItemlanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadItemunitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadSalesAndMarketingTeamCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  LeadID : String(35);
  RoleCode : String(10);
  RoleCodeText : LargeString;
  PartyID : String(60);
  PartyTypeCode : String(15);
  PartyTypeCodeText : LargeString;
  PartyUUID : UUID;
  PartyName : String(480);
  MainIndicator : Boolean;
  URI : String(255);
  Phone : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Lead : Association to one sap.c4c.LeadCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.LeadSalesAndMarketingTeamRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadSalesAndMarketingTeamPartyTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadExternalPartyCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  LeadID : String(35);
  RoleCode : String(10);
  RoleCodeText : LargeString;
  PartyID : String(60);
  PartyTypeCode : String(15);
  PartyTypeCodeText : LargeString;
  PartyUUID : UUID;
  PartyName : String(480);
  MainIndicator : Boolean;
  URI : String(255);
  Phone : String(40);
  AddressHostUUID : UUID;
  MainPartyContactPartyID : String(60);
  MainPartyContactPartyUUID : UUID;
  MainPartyContactPartyName : String(480);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Lead : Association to one sap.c4c.LeadCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _MainPartyContactParty : Association to one sap.c4c.ContactCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.LeadExternalPartyRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadExternalPartyPartyTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadPartyCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  LeadID : String(35);
  UUID : UUID;
  RoleCategoryCode : String(3);
  RoleCategoryCodeText : LargeString;
  RoleCode : String(10);
  RoleCodeText : LargeString;
  PartyID : String(60);
  PartyTypeCode : String(15);
  PartyTypeCodeText : LargeString;
  PartyUUID : UUID;
  PartyName : String(480);
  MainIndicator : Boolean;
  MarketingPermissionAlternativeID : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Lead : Association to one sap.c4c.LeadCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _MarketingPermissionAlternative : Association to one sap.c4c.MarketingPermissionCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.LeadPartyRoleCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadPartyRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadPartyPartyTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadContactCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  LeadID : String(35);
  UUID : UUID;
  PartyID : String(60);
  PartyUUID : UUID;
  PartyName : String(480);
  MainIndicator : Boolean;
  AddressHostUUID : UUID;
  Phone : String(40);
  Mobile : String(40);
  URI : String(255);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Lead : Association to one sap.c4c.LeadCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.LeadBusinessTransactionDocumentReferenceCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  LeadID : String(35);
  ID : String(35);
  UUID : UUID;
  TypeCode : String(15);
  TypeCodeText : LargeString;
  BusinessTransactionDocumentRelationshipRoleCode : String(3);
  BusinessTransactionDocumentRelationshipRoleCodeText : LargeString;
  ItemID : String(10);
  ItemUUID : UUID;
  ItemTypeCode : String(5);
  ItemTypeCodeText : LargeString;
  BusinessTransactionDocumentReferenceBusinessSystemID : String(32);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Lead : Association to one sap.c4c.LeadCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.LeadBusinessTransactionDocumentReferenceTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadBusinessTransactionDocumentReferenceBusinessTransactionDocumentRelationshipRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadBusinessTransactionDocumentReferenceItemTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadInstalledObjectCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  LeadID : String(35);
  LeadingInstalledObjectUUID : UUID;
  SerialID : String(30);
  InstallationPointID : String(40);
  InstalledBaseID : String(40);
  ProductID : String(60);
  MainIndicator : Boolean;
  LeadingInstalledObjectTypeCode : String(4);
  LeadingInstalledObjectTypeCodeText : LargeString;
  InstallationPointUUID : UUID;
  InstalledBaseUUID : UUID;
  ProductUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Lead : Association to one sap.c4c.LeadCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _InstallationPoint : Association to one sap.c4c.InstallationPointCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _InstalledBase : Association to one sap.c4c.InstalledBaseCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Product : Association to one sap.c4c.ProductCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.LeadInstalledObjectLeadingInstalledObjectTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadAttachmentFolderCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  Binary : LargeBinary;
  CategoryCode : String(1);
  CategoryCodeText : LargeString;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  DocumentLink : LargeString;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastUpdatedOn : Timestamp;
  LeadID : String(35);
  LinkWebURI : LargeString;
  MimeType : LargeString;
  Name : LargeString;
  ParentObjectID : String(70);
  TypeCode : String(5);
  TypeCodeText : LargeString;
  UUID : UUID;
  @cds.ambiguous : 'missing on condition?'
  _Lead : Association to one sap.c4c.LeadCollection on _Lead.ObjectID = ParentObjectID;
};

@cds.persistence.skip : true
entity sap.c4c.LeadAttachmentFolderCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadAttachmentFolderTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadEventCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  LeadID : String(35);
  UUID : UUID;
  EventSourceCode : String(3);
  EventSourceCodeText : LargeString;
  EventTypeCode : String(10);
  EventTypeCodeText : LargeString;
  EventAggregateName : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Lead : Association to one sap.c4c.LeadCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.LeadEventEventSourceCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadEventEventTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadMarketingPermissionChannelPermissionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  CommunicationMediumTypeCode : String(3);
  CommunicationMediumTypeCodeText : LargeString;
  MarketingPermissionCode : String(1);
  MarketingPermissionCodeText : LargeString;
  BPInternalID : String(10);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  _BP : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.LeadMarketingPermissionChannelPermissionCommunicationMediumTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadMarketingPermissionChannelPermissionMarketingPermissionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadMarketingPermissionCommTypePermissionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  CommunicationTypeCode : String(3);
  CommunicationTypeCodeText : LargeString;
  SubscribedIndicator : Boolean;
  BPInternalID : String(10);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  _BP : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.LeadMarketingPermissionCommTypePermissionCommunicationTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadTextCollectionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  LeadID : String(35);
  Text : LargeString;
  FormattedText : LargeString;
  LanguageCode : String(2);
  LanguageCodeText : LargeString;
  TypeCode : String(5);
  TypeCodeText : LargeString;
  AuthorUUID : UUID;
  AuthorName : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  UpdatedOn : Timestamp;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Lead : Association to many sap.c4c.LeadCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.LeadTextCollectionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadTextCollectionTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadHistoricalVersionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  ConversionTargetTypeCode : String(2);
  ConversionTargetTypeCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EndDateTime : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  StartDateTime : Timestamp;
  UserStatusCode : String(2);
  UserStatusCodeText : LargeString;
  PriorityCode : String(1);
  PriorityCodeText : LargeString;
  SurveyTotalScoreValue : Integer;
  QualificationLevelCode : String(2);
  QualificationLevelCodeText : LargeString;
  @cds.ambiguous : 'missing on condition?'
  Lead : Association to one sap.c4c.LeadCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.LeadHistoricalVersionConversionTargetTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadHistoricalVersionUserStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityCollection {
  key ObjectID : String(70);
  ProcessingTypeCode : String(4);
  ProcessingTypeCodeText : LargeString;
  ID : String(35);
  ExternalID : String(35);
  UUID : UUID;
  ProspectPartyID : String(60);
  Name : String(255);
  PrimaryContactPartyID : String(60);
  PriorityCode : String(1);
  PriorityCodeText : LargeString;
  OriginTypeCode : String(3);
  OriginTypeCodeText : LargeString;
  LifeCycleStatusCode : String(2);
  LifeCycleStatusCodeText : LargeString;
  ExternalUserStatusCode : String(5);
  ExternalUserStatusCodeText : LargeString;
  ResultReasonCode : String(3);
  ResultReasonCodeText : LargeString;
  SalesCycleCode : String(3);
  SalesCycleCodeText : LargeString;
  SalesCyclePhaseCode : String(3);
  SalesCyclePhaseCodeText : LargeString;
  ProcessStatusValidSinceDate : Date;
  SalesCyclePhaseStartDate : Date;
  ProbabilityPercent : Decimal(16, 6);
  HeaderRevenueSchedule : Boolean;
  SalesRevenueForecastRelevanceIndicator : Boolean;
  ExpectedRevenueAmount : Decimal(28, 6);
  ExpectedRevenueAmountCurrencyCode : String(3);
  ExpectedRevenueAmountCurrencyCodeText : LargeString;
  TotalExpectedNetAmount : Decimal(28, 6);
  TotalExpectedNetAmountAmountCurrencyCode : String(3);
  TotalExpectedNetAmountAmountCurrencyCodeText : LargeString;
  WeightedExpectedNetAmount : Decimal(28, 6);
  WeightedExpectedNetAmountCurrencyCode : String(3);
  WeightedExpectedNetAmountCurrencyCodeText : LargeString;
  ExpectedProcessingStartDate : Date;
  ExpectedProcessingEndDate : Date;
  ExpectedRevenueStartDate : Date;
  ExpectedRevenueEndDate : Date;
  SalesForecastCategoryCode : String(4);
  SalesForecastCategoryCodeText : LargeString;
  GroupCode : String(4);
  GroupCodeText : LargeString;
  SalesUnitPartyID : String(60);
  SalesOrganisationID : String(20);
  DistributionChannelCode : String(2);
  DistributionChannelCodeText : LargeString;
  DivisionCode : String(2);
  DivisionCodeText : LargeString;
  SalesOfficeID : String(20);
  SalesGroupID : String(20);
  SalesTerritoryID : String(6);
  MainEmployeeResponsiblePartyID : String(60);
  EndBuyerPartyID : String(60);
  ProductRecepientPartyID : String(60);
  ApproverPartyID : String(60);
  PayerPartyID : String(60);
  BillToPartyID : String(60);
  SellerPartyID : String(60);
  PhaseProgressEvaluationStatusCode : String(2);
  PhaseProgressEvaluationStatusCodeText : LargeString;
  ProspectBudgetAmount : Decimal(28, 6);
  ProspectBudgetAmountCurrencyCode : String(3);
  ProspectBudgetAmountCurrencyCodeText : LargeString;
  Score : Integer;
  MainEmployeeResponsiblePartyName : String(480);
  SalesUnityPartyName : String(480);
  BillToPartyName : String(480);
  ProductRecipientPartyName : String(40);
  SellerPartyName : String(480);
  PayerPartyName : String(480);
  EndBuyerPartyName : String(480);
  PrimaryContactPartyName : String(480);
  ProspectPartyName : String(480);
  ApproverPartyName : String(480);
  SalesOrganisationName : String(40);
  SalesOfficeName : String(40);
  SalesGroupName : String(40);
  SalesTerritoryName : String(40);
  ConsistencyStatusCode : String(2);
  ConsistencyStatusCodeText : LargeString;
  ApprovalStatusCode : String(2);
  ApprovalStatusCodeText : LargeString;
  CreationDate : Date;
  LastChangeDate : Date;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreationDateTime : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastChangeDateTime : Timestamp;
  CreatedBy : String(480);
  LastChangedBy : String(80);
  CreatedByUUID : UUID;
  LastChangedByUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  BestConnectedColleague : String(255);
  DealScore : Decimal(16, 6);
  DealScoreReason : String(255);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  FirstEmailReceivedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  FirstEmailSentOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastDataHugSyncDateTime : Timestamp;
  LastEmailReceivedFrom : String(255);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastEmailReceivedOn : Timestamp;
  LastEmailSentBy : String(255);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastEmailSentOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastMeetingOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  NextMeetingOn : Timestamp;
  NumberOfColleagues : Integer;
  NumberOfMeetings : Integer;
  NumberOfOtherPeopleAtCompany : Integer;
  NumberOfReceivedEmails : Integer;
  NumberOfSentEmails : Integer;
  AutoCreateContacts : Boolean;
  HugRank : Integer;
  ExternalProbabilityPercent : Decimal(16, 6);
  NGMOpportunityScore_KUT : Decimal(2);
  @cds.ambiguous : 'missing on condition?'
  OpportunityAccountTeamPartyDeprecated : Association to many sap.c4c.OpportunityAccountTeamPartyDeprecatedCollection {  };
  @cds.ambiguous : 'missing on condition?'
  OpportunityAttachmentFolder : Association to many sap.c4c.OpportunityAttachmentFolderCollection {  };
  @cds.ambiguous : 'missing on condition?'
  OpportunityBusinessTransactionDocumentReference : Association to many sap.c4c.OpportunityBusinessTransactionDocumentReferenceCollection {  };
  @cds.ambiguous : 'missing on condition?'
  OpportunityCompetitorParty : Association to many sap.c4c.OpportunityCompetitorPartyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  OpportunityEndBuyerPartyContactPartyDeprecated : Association to many sap.c4c.OpportunityEndBuyerPartyContactPartyDeprecatedCollection {  };
  @cds.ambiguous : 'missing on condition?'
  OpportunityExternalParty : Association to many sap.c4c.OpportunityExternalPartyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  OpportunityHistoricalVersion : Association to many sap.c4c.OpportunityHistoricalVersionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  OpportunityInstalledObject : Association to many sap.c4c.OpportunityInstalledObjectCollection {  };
  @cds.ambiguous : 'missing on condition?'
  OpportunityItem : Association to many sap.c4c.OpportunityItemCollection {  };
  @cds.ambiguous : 'missing on condition?'
  OpportunityOtherPartyDeprecated : Association to many sap.c4c.OpportunityOtherPartyDeprecatedCollection {  };
  @cds.ambiguous : 'missing on condition?'
  OpportunityParty : Association to many sap.c4c.OpportunityPartyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  OpportunityPayerPartyContactPartyDeprecated : Association to many sap.c4c.OpportunityPayerPartyContactPartyDeprecatedCollection {  };
  @cds.ambiguous : 'missing on condition?'
  OpportunityProductRecipientPartyContactPartyDeprecated : Association to many sap.c4c.OpportunityProductRecipientPartyContactPartyDeprecatedCollection {  };
  @cds.ambiguous : 'missing on condition?'
  OpportunityProspectPartyContactParty : Association to many sap.c4c.OpportunityProspectPartyContactPartyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  OpportunityRevenuePlanHeader : Association to many sap.c4c.OpportunityRevenuePlanHeaderCollection {  };
  @cds.ambiguous : 'missing on condition?'
  OpportunitySalesEmployeePartyDeprecated : Association to many sap.c4c.OpportunitySalesEmployeePartyDeprecatedCollection {  };
  @cds.ambiguous : 'missing on condition?'
  OpportunitySalesPartnerPartyDeprecated : Association to many sap.c4c.OpportunitySalesPartnerPartyDeprecatedCollection {  };
  @cds.ambiguous : 'missing on condition?'
  OpportunitySalesTeamParty : Association to many sap.c4c.OpportunitySalesTeamPartyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  OpportunityTextCollection : Association to many sap.c4c.OpportunityTextCollectionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ProspectParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _PrimaryContactParty : Association to one sap.c4c.ContactCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesUnitParty : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesOrganisation : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesOffice : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesGroup : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesTerritory : Association to one sap.c4c.SalesTerritoryCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _MainEmployeeResponsibleParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _EndBuyerParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ProductRecepientParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ApproverParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _PayerParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _BillToParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SellerParty : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityProcessingTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityPriorityCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityOriginTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityExternalUserStatusCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityResultReasonCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunitySalesCycleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunitySalesCyclePhaseCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityExpectedRevenueAmountCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityTotalExpectedNetAmountAmountCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityWeightedExpectedNetAmountCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunitySalesForecastCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityGroupCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityDistributionChannelCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityDivisionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityPhaseProgressEvaluationStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityProspectBudgetAmountCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityConsistencyStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityApprovalStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityItemCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  OpportunityID : String(35);
  ID : String(10);
  UUID : UUID;
  ProductID : String(60);
  Description : String(40);
  DescriptionLanguageCode : String(2);
  DescriptionLanguageCodeText : LargeString;
  ExpectedNetAmount : Decimal(28, 6);
  ExpectedNetAmountCurrencyCode : String(3);
  ExpectedNetAmountCurrencyCodeText : LargeString;
  NetAmount : Decimal(28, 6);
  NetAmountCurrencyCode : String(3);
  NetAmountCurrencyCodeText : LargeString;
  Quantity : Decimal(31, 14);
  QuantityUnitCode : String(3);
  QuantityUnitCodeText : LargeString;
  StartDate : Date;
  EndDate : Date;
  ProductStandardID : String(14);
  ProductCategoryInternalID : String(20);
  ProductCategoryDescription : String(80);
  ProductCategoryHierarchyID : String(10);
  ProductIDDescription : String(40);
  ExternalUserStatusCode : String(5);
  ExternalUserStatusCodeText : LargeString;
  LifeCycleStatusCode : String(2);
  LifeCycleStatusCodeText : LargeString;
  ResultReasonCode : String(3);
  ResultReasonCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Opportunity : Association to one sap.c4c.OpportunityCollection {  };
  @cds.ambiguous : 'missing on condition?'
  OpportunityItemAttachmentFolder : Association to many sap.c4c.OpportunityItemAttachmentFolderCollection {  };
  @cds.ambiguous : 'missing on condition?'
  OpportunityItemParty : Association to many sap.c4c.OpportunityItemPartyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  OpportunityItemQuantityPlanReporting : Association to many sap.c4c.OpportunityItemQuantityPlanReportingCollection {  };
  @cds.ambiguous : 'missing on condition?'
  OpportunityItemRevenuePlanReporting : Association to many sap.c4c.OpportunityItemRevenuePlanReportingCollection {  };
  @cds.ambiguous : 'missing on condition?'
  OpportunityItemTextCollection : Association to many sap.c4c.OpportunityItemTextCollectionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  Product : Association to one sap.c4c.ProductCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ProductCategory : Association to one sap.c4c.ProductCategoryHierarchyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ProductCategoryHierarchy : Association to one sap.c4c.ProductCategoryHierarchyCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityItemDescriptionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityItemExpectedNetAmountCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityItemNetAmountCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityItemQuantityUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityItemExternalUserStatusCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityItemLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityItemResultReasonCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityRevenuePlanHeaderCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  OpportunityID : String(35);
  RevenuePartnerUUID : UUID;
  EmployeeID : String(10);
  EmployeeName : String(480);
  SalesTerritoryID : String(6);
  SalesTerritoryName : String(40);
  SalesUnitID : String(20);
  SalesUnitName : String(40);
  DistributionAmount : Decimal(28, 6);
  CurrencyCode : String(3);
  CurrencyCodeText : LargeString;
  SplitPercentage : Decimal(16, 6);
  ExpectedProcessingStartDate : Date;
  ExpectedProcessingEndDate : Date;
  SalesForecastCategoryCode : String(4);
  SalesForecastCategoryCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Opportunity : Association to one sap.c4c.OpportunityCollection {  };
  @cds.ambiguous : 'missing on condition?'
  OpportunityRevenuePlanReporting : Association to many sap.c4c.OpportunityRevenuePlanReportingCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Employee : Association to one sap.c4c.EmployeeCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesTerritory : Association to one sap.c4c.SalesTerritoryCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesUnit : Association to one sap.c4c.OrganisationalUnitCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityRevenuePlanHeaderCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityRevenuePlanHeaderSalesForecastCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityRevenuePlanReportingCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  OpportunityID : String(35);
  EmployeeID : String(10);
  DistributionAmount : Decimal(28, 6);
  DistributionAmountCurrencyCode : String(3);
  DistributionAmountCurrencyCodeText : LargeString;
  DistributionDate : Date;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Opportunity : Association to one sap.c4c.OpportunityCollection {  };
  @cds.ambiguous : 'missing on condition?'
  OpportunityRevenuePlanHeader : Association to one sap.c4c.OpportunityRevenuePlanHeaderCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Employee : Association to one sap.c4c.EmployeeCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityRevenuePlanReportingDistributionAmountCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityItemRevenuePlanReportingCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  UUID : UUID;
  OpportunityID : String(35);
  OpportunityItemID : String(10);
  EmployeeID : String(60);
  DistributionAmount : Decimal(28, 6);
  DistributionAmountCurrencyCode : String(3);
  DistributionAmountCurrencyCodeText : LargeString;
  DistributionDate : Date;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Opportunity : Association to one sap.c4c.OpportunityCollection {  };
  @cds.ambiguous : 'missing on condition?'
  OpportunityItem : Association to one sap.c4c.OpportunityItemCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Employee : Association to one sap.c4c.EmployeeCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityItemRevenuePlanReportingDistributionAmountCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityItemQuantityPlanReportingCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  UUID : UUID;
  OpportunityID : String(35);
  OpportunityItemID : String(10);
  EmployeeID : String(60);
  DistributionQuantity : Decimal(31, 14);
  DistributionQuantityUnitCode : String(3);
  DistributionQuantityUnitCodeText : LargeString;
  DistributionDate : Date;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Opportunity : Association to one sap.c4c.OpportunityCollection {  };
  @cds.ambiguous : 'missing on condition?'
  OpportunityItem : Association to one sap.c4c.OpportunityItemCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Employee : Association to one sap.c4c.EmployeeCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityItemQuantityPlanReportingDistributionQuantityUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityPartyCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  OpportunityID : String(35);
  PartyID : String(60);
  RoleCategoryCode : String(3);
  RoleCategoryCodeText : LargeString;
  RoleCode : String(10);
  RoleCodeText : LargeString;
  PartyTypeCode : String(15);
  PartyTypeCodeText : LargeString;
  MainIndicator : Boolean;
  PartyName : String(480);
  Phone : String(40);
  Mobile : String(40);
  Email : String(255);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  OpportunityLastChangeDateTime : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Opportunity : Association to one sap.c4c.OpportunityCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityPartyRoleCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityPartyRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityPartyPartyTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunitySalesTeamPartyCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  OpportunityID : String(35);
  UUID : UUID;
  PartyID : String(60);
  RoleCategoryCode : String(3);
  RoleCategoryCodeText : LargeString;
  RoleCode : String(10);
  RoleCodeText : LargeString;
  PartyName : String(480);
  Phone : String(40);
  Mobile : String(40);
  Email : String(255);
  MainIndicator : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  OpportunityLastChangeDateTime : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Opportunity : Association to one sap.c4c.OpportunityCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.OpportunitySalesTeamPartyRoleCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunitySalesTeamPartyRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityExternalPartyCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  OpportunityID : String(35);
  UUID : UUID;
  PartyID : String(60);
  RoleCategoryCode : String(3);
  RoleCategoryCodeText : LargeString;
  RoleCode : String(10);
  RoleCodeText : LargeString;
  MainIndicator : Boolean;
  PartyName : String(480);
  Phone : String(40);
  Mobile : String(40);
  Email : String(255);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Opportunity : Association to one sap.c4c.OpportunityCollection {  };
  @cds.ambiguous : 'missing on condition?'
  OpportunityPartyContactParty : Association to many sap.c4c.OpportunityPartyContactPartyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityExternalPartyRoleCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityExternalPartyRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityProspectPartyContactPartyCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  OpportunityID : String(35);
  UUID : UUID;
  PartyContactPartyUUID : UUID;
  OpportunityPartyContactPartyID : String(60);
  RoleCode : String(10);
  RoleCodeText : LargeString;
  OpportunityPartyContactMainIndicator : Boolean;
  AttitudeTowardOpportunityCode : String(2);
  AttitudeTowardOpportunityCodeText : LargeString;
  OpportunityPartyContactPartyName : String(480);
  Phone : String(40);
  Mobile : String(40);
  Email : String(255);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Opportunity : Association to one sap.c4c.OpportunityCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _OpportunityPartyContactParty : Association to one sap.c4c.ContactCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityProspectPartyContactPartyRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityProspectPartyContactPartyAttitudeTowardOpportunityCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityPartyContactPartyCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  OpportunityID : String(35);
  UUID : UUID;
  PartyContactPartyUUID : UUID;
  OpportunityPartyContactPartyID : String(60);
  RoleCode : String(10);
  RoleCodeText : LargeString;
  OpportunityPartyContactMainIndicator : Boolean;
  AttitudeTowardOpportunityCode : String(2);
  AttitudeTowardOpportunityCodeText : LargeString;
  OpportunityPartyContactPartyName : String(480);
  Phone : String(40);
  Mobile : String(40);
  Email : String(255);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Opportunity : Association to one sap.c4c.OpportunityCollection {  };
  @cds.ambiguous : 'missing on condition?'
  OpportunityExternalParty : Association to one sap.c4c.OpportunityExternalPartyCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityPartyContactPartyRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityPartyContactPartyAttitudeTowardOpportunityCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityCompetitorPartyCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  OpportunityID : String(35);
  UUID : UUID;
  PartyID : String(60);
  RoleCode : String(10);
  RoleCodeText : LargeString;
  MainIndicator : Boolean;
  PartyName : String(480);
  Phone : String(40);
  Mobile : String(40);
  Email : String(255);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Opportunity : Association to one sap.c4c.OpportunityCollection {  };
  @cds.ambiguous : 'missing on condition?'
  OpportunityCompetitorProduct : Association to many sap.c4c.OpportunityCompetitorProductCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityCompetitorPartyRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityCompetitorProductCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  OpportunityID : String(35);
  OpportunityCompetitorPartyUUID : UUID;
  PartyID : String(60);
  ProductID : String(60);
  ProductDescription : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Opportunity : Association to one sap.c4c.OpportunityCollection {  };
  @cds.ambiguous : 'missing on condition?'
  OpportunityCompetitorParty : Association to one sap.c4c.OpportunityCompetitorPartyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Product : Association to one sap.c4c.ProductCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityBusinessTransactionDocumentReferenceCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  OpportunityID : String(35);
  ID : String(35);
  TypeCode : String(15);
  TypeCodeText : LargeString;
  BusinessTransactionDocumentRelationshipRoleCode : String(3);
  BusinessTransactionDocumentRelationshipRoleCodeText : LargeString;
  MainIndicator : Boolean;
  ItemID : String(10);
  ItemTypeCode : String(5);
  ItemTypeCodeText : LargeString;
  SalesCycleCode : String(3);
  SalesCycleCodeText : LargeString;
  SalesCyclePhaseCode : String(3);
  SalesCyclePhaseCodeText : LargeString;
  SalesCyclePhaseStepCode : String(3);
  SalesCyclePhaseStepCodeText : LargeString;
  BusinessTransactionDocumentReferenceBusinessSystemID : String(32);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  OpportunityLastChangeDateTime : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Opportunity : Association to one sap.c4c.OpportunityCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityBusinessTransactionDocumentReferenceTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityBusinessTransactionDocumentReferenceBusinessTransactionDocumentRelationshipRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityBusinessTransactionDocumentReferenceItemTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityBusinessTransactionDocumentReferenceSalesCycleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityBusinessTransactionDocumentReferenceSalesCyclePhaseCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityBusinessTransactionDocumentReferenceSalesCyclePhaseStepCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityInstalledObjectCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  OpportunityID : String(35);
  LeadingInstalledObjectUUID : UUID;
  MainIndicator : Boolean;
  SerialID : String(30);
  InstallationPointID : String(40);
  InstalledBaseID : String(40);
  ProductID : String(60);
  InstallationPointUUID : UUID;
  InstalledBaseUUID : UUID;
  ProductUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Opportunity : Association to one sap.c4c.OpportunityCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _InstallationPoint : Association to one sap.c4c.InstallationPointCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _InstalledBase : Association to one sap.c4c.InstalledBaseCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Product : Association to one sap.c4c.ProductCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityTextCollectionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  OpportunityID : String(35);
  Text : LargeString;
  TypeCode : String(5);
  TypeCodeText : LargeString;
  AuthorName : String(40);
  AuthorUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  UpdatedOn : Timestamp;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Opportunity : Association to one sap.c4c.OpportunityCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityTextCollectionTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityAttachmentFolderCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  Binary : LargeBinary;
  CategoryCode : String(1);
  CategoryCodeText : LargeString;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  DocumentLink : LargeString;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastUpdatedOn : Timestamp;
  LinkWebURI : LargeString;
  MimeType : LargeString;
  Name : LargeString;
  OpportunityID : String(35);
  ParentObjectID : String(70);
  TypeCode : String(5);
  TypeCodeText : LargeString;
  UUID : UUID;
  @cds.ambiguous : 'missing on condition?'
  _Opportunity : Association to one sap.c4c.OpportunityCollection on _Opportunity.ObjectID = ParentObjectID;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityAttachmentFolderCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityAttachmentFolderTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityItemTextCollectionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  Text : LargeString;
  TypeCode : String(5);
  TypeCodeText : LargeString;
  AuthorName : String(40);
  AuthorUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  UpdatedOn : Timestamp;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  OpportunityItem : Association to one sap.c4c.OpportunityItemCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityItemTextCollectionTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityItemAttachmentFolderCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  Binary : LargeBinary;
  CategoryCode : String(1);
  CategoryCodeText : LargeString;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  DocumentLink : LargeString;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastUpdatedOn : Timestamp;
  LinkWebURI : LargeString;
  MimeType : LargeString;
  Name : LargeString;
  ParentObjectID : String(70);
  TypeCode : String(5);
  TypeCodeText : LargeString;
  UUID : UUID;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityItemAttachmentFolderCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityItemAttachmentFolderTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunitySalesEmployeePartyDeprecatedCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  RoleCategoryCode : String(3);
  RoleCategoryCodeText : LargeString;
  SalesEmployeePartyID : String(60);
  UUID : UUID;
  RoleCode : String(10);
  RoleCodeText : LargeString;
  OpportunityID : String(35);
  SalesEmployeePartyName : String(480);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Opportunity : Association to one sap.c4c.OpportunityCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesEmployeeParty : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.OpportunitySalesEmployeePartyDeprecatedRoleCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunitySalesEmployeePartyDeprecatedRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunitySalesPartnerPartyDeprecatedCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  RoleCategoryCode : String(3);
  RoleCategoryCodeText : LargeString;
  PartyID : String(60);
  RoleCode : String(10);
  RoleCodeText : LargeString;
  MainIndicator : Boolean;
  UUID : UUID;
  OpportunityID : String(35);
  PartyName : String(480);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Opportunity : Association to one sap.c4c.OpportunityCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.OpportunitySalesPartnerPartyDeprecatedRoleCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunitySalesPartnerPartyDeprecatedRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityAccountTeamPartyDeprecatedCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  PartyID : String(60);
  OpportunityID : String(35);
  RoleCode : String(10);
  RoleCodeText : LargeString;
  PartyName : String(480);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Opportunity : Association to one sap.c4c.OpportunityCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityAccountTeamPartyDeprecatedRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityOtherPartyDeprecatedCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  PartyID : String(60);
  RoleCategoryCode : String(3);
  RoleCategoryCodeText : LargeString;
  RoleCode : String(10);
  RoleCodeText : LargeString;
  UUID : UUID;
  MainIndicator : Boolean;
  OpportunityID : String(35);
  PartyName : String(480);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Opportunity : Association to one sap.c4c.OpportunityCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityOtherPartyDeprecatedRoleCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityOtherPartyDeprecatedRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityEndBuyerPartyContactPartyDeprecatedCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  PartyID : String(60);
  OpportunityID : String(35);
  PartyName : String(480);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Opportunity : Association to one sap.c4c.OpportunityCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityPayerPartyContactPartyDeprecatedCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  PartyID : String(60);
  OpportunityID : String(35);
  PartyName : String(480);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Opportunity : Association to one sap.c4c.OpportunityCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityProductRecipientPartyContactPartyDeprecatedCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  PartyID : String(60);
  OpportunityID : String(35);
  PartyName : String(480);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Opportunity : Association to one sap.c4c.OpportunityCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityHistoricalVersionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ValidStartDateTime : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ValidEndDateTime : Timestamp;
  SalesCyclePhaseCode : String(3);
  SalesCyclePhaseCodeText : LargeString;
  SalesForecastCategoryCode : String(4);
  SalesForecastCategoryCodeText : LargeString;
  SalesRevenueForecastRelevanceIndicator : Boolean;
  ProbabilityPercent : Decimal(16, 6);
  ControlPhaseCode : String(3);
  ControlPhaseCodeText : LargeString;
  PhaseProcessingStartDate : Date;
  ProcessStatusValidSinceDate : Date;
  OpportunityStartDate : Date;
  OpportunityEndDate : Date;
  ExpectedRevenueAmount : Decimal(28, 6);
  currencyCode : String(3);
  currencyCodeText : LargeString;
  TotalExpectedNetAmount : Decimal(28, 6);
  currencyCode3 : String(3);
  currencyCode3Text : LargeString;
  ReportingCurrencyExpectedRevenueAmount : Decimal(28, 6);
  currencyCode1 : String(3);
  currencyCode1Text : LargeString;
  ReportingCurrencyTotalExpectedNetAmount : Decimal(28, 6);
  currencyCode2 : String(3);
  currencyCode2Text : LargeString;
  LifeCycleStatusCode : String(2);
  LifeCycleStatusCodeText : LargeString;
  CustomStatus : String(5);
  CustomStatusText : LargeString;
  MainEmployeeResponsiblePartyUUID : UUID;
  OpportunityID : String(35);
  @cds.ambiguous : 'missing on condition?'
  Opportunity : Association to one sap.c4c.OpportunityCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityHistoricalVersionSalesCyclePhaseCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityHistoricalVersionSalesForecastCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityHistoricalVersionControlPhaseCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityHistoricalVersioncurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityHistoricalVersioncurrencyCode3Collection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityHistoricalVersioncurrencyCode1Collection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityHistoricalVersioncurrencyCode2Collection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityHistoricalVersionLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityHistoricalVersionCustomStatusCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityItemPartyCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  OpportunityID : String(35);
  OpportunityItemID : String(10);
  PartyID : String(60);
  RoleCategoryCode : String(3);
  RoleCategoryCodeText : LargeString;
  RoleCode : String(10);
  RoleCodeText : LargeString;
  PartyTypeCode : String(15);
  PartyTypeCodeText : LargeString;
  MainIndicator : Boolean;
  PartyName : String(80);
  Phone : String(40);
  Mobile : String(40);
  Email : String(255);
  @cds.ambiguous : 'missing on condition?'
  Opportunity : Association to one sap.c4c.OpportunityCollection {  };
  @cds.ambiguous : 'missing on condition?'
  OpportunityItem : Association to one sap.c4c.OpportunityItemCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityItemPartyRoleCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityItemPartyRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OpportunityItemPartyPartyTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ProductCollection {
  key ObjectID : String(70);
  ProductID : String(40);
  UUID : UUID;
  Language : String(2);
  LanguageText : LargeString;
  Description : String(40);
  ProductCategoryID : String(20);
  Status : String(2);
  StatusText : LargeString;
  Usage : String(2);
  UsageText : LargeString;
  Division : String(2);
  DivisionText : LargeString;
  BaseUOM : String(3);
  BaseUOMText : LargeString;
  CreatedBy : String(80);
  LastChangedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastChangedOn : Timestamp;
  CreatedByUUID : UUID;
  LastChangedByUUID : UUID;
  ExternalSystem : String(32);
  ExternalID : String(100);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  ProductAttachmentFolder : Association to many sap.c4c.ProductAttachmentFolderCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ProductOtherDescriptions : Association to many sap.c4c.ProductOtherDescriptionsCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ProductPlantParty : Association to many sap.c4c.ProductPlantPartyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ProductQuantityCharacteristics : Association to many sap.c4c.ProductQuantityCharacteristicsCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ProductQuantityConversion : Association to many sap.c4c.ProductQuantityConversionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ProductSalesProcessInformation : Association to many sap.c4c.ProductSalesProcessInformationCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ProductSkill : Association to many sap.c4c.ProductSkillCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ProductTextCollection : Association to many sap.c4c.ProductTextCollectionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ProductlGlobalTradeItemNumber : Association to many sap.c4c.ProductlGlobalTradeItemNumberCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ProductCategory : Association to one sap.c4c.ProductCategoryHierarchyCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ProductLanguageCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ProductStatusCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ProductUsageCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ProductDivisionCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ProductBaseUOMCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ProductOtherDescriptionsCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ProductID : String(40);
  Language : String(2);
  LanguageText : LargeString;
  Description : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Product : Association to one sap.c4c.ProductCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ProductOtherDescriptionsLanguageCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ProductQuantityConversionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ProductID : String(40);
  Quantity : Decimal(31, 14);
  Unit : String(3);
  UnitText : LargeString;
  CorrespondingQty : Decimal(31, 14);
  CorrespondingQtyUOM : String(3);
  CorrespondingQtyUOMText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Product : Association to one sap.c4c.ProductCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ProductQuantityConversionUnitCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ProductQuantityConversionCorrespondingQtyUOMCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ProductlGlobalTradeItemNumberCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ProductID : String(40);
  GTINUnitOfMeasure : String(3);
  GTINUnitOfMeasureText : LargeString;
  GTIN : String(14);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Product : Association to one sap.c4c.ProductCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ProductlGlobalTradeItemNumberGTINUnitOfMeasureCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ProductSalesProcessInformationCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ProductID : String(40);
  SalesOrganisationID : String(20);
  DistributionChannel : String(2);
  DistributionChannelText : LargeString;
  Status : String(2);
  StatusText : LargeString;
  SalesUoM : String(3);
  SalesUoMText : LargeString;
  MinimumOrderQuantity : Decimal(31, 14);
  PricingProductID : String(60);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Product : Association to one sap.c4c.ProductCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ProductSalesCustomerPartNumber : Association to many sap.c4c.ProductSalesCustomerPartNumberCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ProductSalesTextCollection : Association to many sap.c4c.ProductSalesTextCollectionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesOrganisation : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _PricingProduct : Association to one sap.c4c.ProductCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ProductSalesProcessInformationDistributionChannelCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ProductSalesProcessInformationStatusCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ProductSalesProcessInformationSalesUoMCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ProductSalesCustomerPartNumberCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ProductID : String(40);
  SalesOrganisationID : String(20);
  DistributionChannelCode : String(2);
  DistributionChannelCodeText : LargeString;
  CustomerID : String(10);
  ProductCustomerID : String(60);
  Description : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Product : Association to one sap.c4c.ProductCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ProductSalesProcessInformation : Association to one sap.c4c.ProductSalesProcessInformationCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesOrganisation : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Customer : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ProductSalesCustomerPartNumberDistributionChannelCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ProductSalesTextCollectionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  Text : LargeString;
  LanguageCode : String(2);
  LanguageCodeText : LargeString;
  AuthorName : String(40);
  AuthorUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  UpdatedOn : Timestamp;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  ProductSalesProcessInformation : Association to one sap.c4c.ProductSalesProcessInformationCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ProductSalesTextCollectionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ProductTextCollectionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ProductInternalID : String(40);
  Text : LargeString;
  LanguageCode : String(2);
  LanguageCodeText : LargeString;
  TypeCode : String(5);
  TypeCodeText : LargeString;
  AuthorName : String(40);
  AuthorUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  UpdatedOn : Timestamp;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Product : Association to one sap.c4c.ProductCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ProductTextCollectionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ProductTextCollectionTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ProductAttachmentFolderCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ProductInternalID : String(40);
  UUID : UUID;
  TypeCode : String(5);
  TypeCodeText : LargeString;
  MimeType : LargeString;
  Binary : LargeBinary;
  DocumentLink : LargeString;
  Name : LargeString;
  CategoryCode : String(1);
  CategoryCodeText : LargeString;
  LinkWebURI : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastUpdatedOn : Timestamp;
  CreatedBy : String(80);
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  _Product : Association to one sap.c4c.ProductCollection on _Product.ObjectID = ParentObjectID;
};

@cds.persistence.skip : true
entity sap.c4c.ProductAttachmentFolderTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ProductAttachmentFolderCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ProductSkillCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ProductID : String(40);
  SkillID : String(20);
  Mandatory : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Product : Association to one sap.c4c.ProductCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ProductQuantityCharacteristicsCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  InternalID : String(40);
  SourceUoM : String(3);
  SourceUoMText : LargeString;
  NetWeight : Decimal(31, 14);
  NetWeightUnitCode : String(3);
  NetWeightUnitCodeText : LargeString;
  GrossWeight : Decimal(31, 14);
  GrossWeightUnitCode : String(3);
  GrossWeightUnitCodeText : LargeString;
  Volume : Decimal(31, 14);
  VolumeUnitCode : String(3);
  VolumeUnitCodeText : LargeString;
  Width : Decimal(31, 14);
  WidthUnitCode : String(3);
  WidthUnitCodeText : LargeString;
  Height : Decimal(31, 14);
  HeightUnitCode : String(3);
  HeightUnitCodeText : LargeString;
  Length : Decimal(31, 14);
  unitCode : String(3);
  unitCodeText : LargeString;
  @cds.ambiguous : 'missing on condition?'
  Product : Association to one sap.c4c.ProductCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ProductQuantityCharacteristicsSourceUoMCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ProductQuantityCharacteristicsNetWeightUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ProductQuantityCharacteristicsGrossWeightUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ProductQuantityCharacteristicsVolumeUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ProductQuantityCharacteristicsWidthUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ProductQuantityCharacteristicsHeightUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ProductQuantityCharacteristicsunitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ProductPlantPartyCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  ProductID : String(40);
  PlantPartyID : String(60);
  @cds.ambiguous : 'missing on condition?'
  Product : Association to one sap.c4c.ProductCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ProductCategoryHierarchyCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  RootProductCategoryInternalID : String(20);
  ProductCategoryInternalID : String(20);
  ParentProductCategoryInternalID : String(20);
  LanguageCode : String(2);
  LanguageCodeText : LargeString;
  ProductCategory : String(80);
  ProductAssignmentAllowed : Boolean;
  @cds.ambiguous : 'missing on condition?'
  ProductCategoryHierarchyDescription : Association to many sap.c4c.ProductCategoryHierarchyDescriptionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _RootProductCategory : Association to one sap.c4c.ProductCategoryHierarchyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ParentProductCategory : Association to one sap.c4c.ProductCategoryHierarchyCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ProductCategoryHierarchyLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ProductCategoryHierarchyDescriptionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  ProductCategoryInternalID : String(20);
  LanguageCode : String(2);
  LanguageCodeText : LargeString;
  ProductCategoryDescription : String(80);
  @cds.ambiguous : 'missing on condition?'
  ProductCategoryHierarchy : Association to one sap.c4c.ProductCategoryHierarchyCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ProductCategoryHierarchyDescriptionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestProcessingTypeCollection {
  key ProcessingTypeCode : String(4);
  ProcessingTypeCodeText : LargeString;
  ProcessingTypeCodeDescription : String(40);
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestProcessingTypeProcessingTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestUserLifeCycleStatusCollection {
  key UserLifeCycleStatusCode : String(2);
  UserLifeCycleStatusCodeText : LargeString;
  UserLifeCycleStatusValue : String(40);
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestUserLifeCycleStatusUserLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestCollection {
  key ObjectID : String(70);
  ProductRecipientPartyID : String(60);
  ProductRecipientPartyUUID : UUID;
  ProductRecipientPartyName : String(480);
  IncidentServiceIssueCategoryID : String(25);
  ID : String(35);
  UUID : UUID;
  ProcessingTypeCode : String(4);
  ProcessingTypeCodeText : LargeString;
  Name : String(255);
  DataOriginTypeCode : String(3);
  DataOriginTypeCodeText : LargeString;
  EscalationStatusCode : String(2);
  EscalationStatusCodeText : LargeString;
  SerialID : String(30);
  ProductID : String(60);
  ServicePriorityCode : String(1);
  ServicePriorityCodeText : LargeString;
  ServiceRequestUserLifeCycleStatusCode : String(2);
  ServiceRequestUserLifeCycleStatusCodeText : LargeString;
  RequestedFulfillmentPeriodStartDateTime : String(33);
  RequestedFulfillmentPeriodEndDateTime : String(33);
  RequestedTotalProcessingDuration : String(20);
  RequestedTotalRequestorDuration : String(20);
  RequestInitialReceiptdatetimecontent : String(33);
  RequestInProcessdatetimeContent : String(33);
  RequestCloseddatetimeContent : String(33);
  RequestFinisheddatetimeContent : String(33);
  FirstReactionDuedatetimeContent : String(33);
  CompleteDuedatetimeContent : String(33);
  WarrantyStartdatetimeContent : String(33);
  SalesOrganisationID : String(20);
  DivisionCode : String(2);
  DivisionCodeText : LargeString;
  DistributionChannelCode : String(2);
  DistributionChannelCodeText : LargeString;
  SalesUnitPartyID : String(60);
  ServiceExecutionTeamPartyID : String(60);
  ServiceSupportTeamPartyID : String(60);
  ServicePerformerPartyID : String(60);
  ProcessorPartyID : String(60);
  BuyerPartyID : String(60);
  BuyerMainContactPartyID : String(60);
  ReportedForPartyID : String(60);
  InstallationPointID : String(40);
  InstalledBaseID : String(40);
  InstallationPointUUID : UUID;
  WarrantyGoodwillCode : String(2);
  WarrantyGoodwillCodeText : LargeString;
  EscalationTimePointDateTime : String(33);
  OnSiteArrivalDueDateTime : String(33);
  OnSiteArrivalDateTime : String(33);
  ServiceSupportTeamPartyName : String(480);
  ResolutionDueDateTime : String(33);
  ResolvedOnDateTime : String(33);
  SalesTerritoryID : String(6);
  ResolutionDuetimeZoneCode : String(10);
  ResolutionDuetimeZoneCodeText : LargeString;
  EscalationTimePointtimeZoneCode : String(10);
  EscalationTimePointtimeZoneCodeText : LargeString;
  OnSiteArrivalDuetimeZoneCode : String(10);
  OnSiteArrivalDuetimeZoneCodeText : LargeString;
  RequestInProcessdatetimeZoneCode : String(10);
  RequestInProcessdatetimeZoneCodeText : LargeString;
  WarrantyStartdatetimeZoneCode : String(10);
  WarrantyStartdatetimeZoneCodeText : LargeString;
  RequestCloseddatetimeZoneCode : String(10);
  RequestCloseddatetimeZoneCodeText : LargeString;
  RequestedFulfillmentPeriodStarttimeZoneCode : String(10);
  RequestedFulfillmentPeriodStarttimeZoneCodeText : LargeString;
  RequestedFulfillmentPeriodEndtimeZoneCode : String(10);
  RequestedFulfillmentPeriodEndtimeZoneCodeText : LargeString;
  RequestFinisheddatetimeZoneCode : String(10);
  RequestFinisheddatetimeZoneCodeText : LargeString;
  FirstReactionDuedatetimeZoneCode : String(10);
  FirstReactionDuedatetimeZoneCodeText : LargeString;
  ResolvedOntimeZoneCode : String(10);
  ResolvedOntimeZoneCodeText : LargeString;
  CompleteDuedatetimeZoneCode : String(10);
  CompleteDuedatetimeZoneCodeText : LargeString;
  RequestInitialReceiptdatetimeZoneCode : String(10);
  RequestInitialReceiptdatetimeZoneCodeText : LargeString;
  OnSiteArrivaltimeZoneCode : String(10);
  OnSiteArrivaltimeZoneCodeText : LargeString;
  SalesUnitPartyName : String(480);
  ServiceExecutionTeamPartyName : String(480);
  ServicePerformerPartyName : String(480);
  ProcessorPartyName : String(480);
  BuyerPartyName : String(480);
  BuyerMainContactPartyName : String(480);
  ReportedForPartyName : String(480);
  ProductDescription : String(40);
  InstallationPointDescription : String(40);
  InstalledBaseDescription : String(40);
  ServiceTermsServiceIssueName : String(40);
  SalesTerritoryName : String(40);
  BuyerPartyUUID : UUID;
  ReportedForPartyUUID : UUID;
  BuyerMainContactPartyUUID : UUID;
  ProcessorPartyUUID : UUID;
  ServicePerformerPartyUUID : UUID;
  ServiceSupportTeamPartyUUID : UUID;
  ServiceExecutionTeamPartyUUID : UUID;
  SalesUnitPartyUUID : UUID;
  InstalledBaseUUID : UUID;
  WarrantyUUID : UUID;
  SalesTerritoryUUID : UUID;
  WarrantyID : String(60);
  ObjectServiceIssueCategoryID : String(25);
  CauseServiceIssueCategoryID : String(25);
  ActivityServiceIssueCategoryID : String(25);
  MainTicketID : String(35);
  ContractID : String(35);
  ReportedPartyID : String(60);
  ReportedPartyUUID : UUID;
  ServiceIssueCategoryID : String(25);
  ServiceRequestClassificationCode : String(2);
  ServiceRequestClassificationCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreationDateTime : Timestamp;
  PartnerContactPartyID : String(60);
  PartnerContactPartyUUID : UUID;
  ReportedPartyName : String(480);
  ChangedByCustomerIndicator : Boolean;
  ResponseByProcessorDateTimeContent : String(33);
  ResponseByProcessorDateTimeZoneCode : String(10);
  ResponseByProcessorDateTimeZoneCodeText : LargeString;
  ResponseByProcessorDueDateTime : String(33);
  ResponseByProcessorDueDateTimeZoneCode : String(10);
  ResponseByProcessorDueDateTimeZoneCodeText : LargeString;
  ServiceLevelObjectiveID : String(40);
  ServiceLevelObjectiveName : String(40);
  ServiceLevelObjectiveNamelanguageCode : String(2);
  ServiceLevelObjectiveNamelanguageCodeText : LargeString;
  ResponseByRequesterDateTimeContent : String(33);
  ResponseByRequesterDateTimeZoneCode : String(10);
  ResponseByRequesterDateTimeZoneCodeText : LargeString;
  InstallationPointIDV1 : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastChangeDateTime : Timestamp;
  CreationIdentityUUID : UUID;
  LastChangeIdentityUUID : UUID;
  SolutionCategoryName : String(40);
  CauseCategoryName : String(40);
  ObjectCategoryName : String(40);
  IncidentCategoryName : String(40);
  CreatedBy : String(480);
  LastChangedBy : String(480);
  WarrantyFrom : Date;
  WarrantyTo : Date;
  ServiceRequestLifeCycleStatusCode : String(2);
  ServiceRequestLifeCycleStatusCodeText : LargeString;
  RequestAssignmentStatusCode : String(2);
  RequestAssignmentStatusCodeText : LargeString;
  DocumentLanguageCode : String(2);
  DocumentLanguageCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  SalesOrderID : String(35);
  SalesOrderUUID : UUID;
  SalesOrderItemUUID : UUID;
  MaintenancePlanUUID : UUID;
  MaintenancePlanID : String(35);
  MaintenancePlanName : String(255);
  dataloader2_KUT : String(40);
  @cds.ambiguous : 'missing on condition?'
  ServiceRequestAttachmentFolder : Association to many sap.c4c.ServiceRequestAttachmentFolderCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ServiceRequestBusinessTransactionDocumentReference : Association to many sap.c4c.ServiceRequestBusinessTransactionDocumentReferenceCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ServiceRequestHistoricalVersion : Association to many sap.c4c.ServiceRequestHistoricalVersionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ServiceRequestItem : Association to many sap.c4c.ServiceRequestItemCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ServiceRequestOtherParty : Association to many sap.c4c.ServiceRequestOtherPartyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ServiceRequestParty : Association to many sap.c4c.ServiceRequestPartyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ServiceRequestServicePointLocation : Association to one sap.c4c.ServiceRequestServicePointLocationCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ServiceRequestServiceReferenceObject : Association to many sap.c4c.ServiceRequestServiceReferenceObjectCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ServiceRequestSkillsCollection : Association to one sap.c4c.ServiceRequestSkillsCollectionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ServiceRequestSolutionProposal : Association to many sap.c4c.ServiceRequestSolutionProposalCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ServiceRequestTextCollection : Association to many sap.c4c.ServiceRequestTextCollectionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ProductRecipientParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Product : Association to one sap.c4c.ProductCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesOrganisation : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesUnitParty : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ServiceExecutionTeamParty : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ServiceSupportTeamParty : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ServicePerformerParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ProcessorParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _BuyerParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _BuyerMainContactParty : Association to one sap.c4c.ContactCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ReportedForParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _InstallationPoint : Association to one sap.c4c.InstallationPointCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _InstalledBase : Association to one sap.c4c.InstalledBaseCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesTerritory : Association to one sap.c4c.SalesTerritoryCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Contract : Association to one sap.c4c.ContractCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ReportedParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _PartnerContactParty : Association to one sap.c4c.ContactCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesOrder : Association to one sap.c4c.CustomerOrderCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ActivityReferences : Association to many sap.c4c.MemoActivityBusinessTransactionDocumentReferenceCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestProcessingTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestDataOriginTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestEscalationStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestServicePriorityCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestServiceRequestUserLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestDivisionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestDistributionChannelCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestWarrantyGoodwillCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestResolutionDuetimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestEscalationTimePointtimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestOnSiteArrivalDuetimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestRequestInProcessdatetimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestWarrantyStartdatetimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestRequestCloseddatetimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestRequestedFulfillmentPeriodStarttimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestRequestedFulfillmentPeriodEndtimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestRequestFinisheddatetimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestFirstReactionDuedatetimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestResolvedOntimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestCompleteDuedatetimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestRequestInitialReceiptdatetimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestOnSiteArrivaltimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestServiceRequestClassificationCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestResponseByProcessorDateTimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestResponseByProcessorDueDateTimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestServiceLevelObjectiveNamelanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestResponseByRequesterDateTimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestServiceRequestLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestRequestAssignmentStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestDocumentLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestAttachmentFolderCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ServiceRequestID : String(35);
  UUID : UUID;
  TypeCode : String(5);
  TypeCodeText : LargeString;
  MimeType : LargeString;
  Binary : LargeBinary;
  DocumentLink : LargeString;
  Name : LargeString;
  CategoryCode : String(1);
  CategoryCodeText : LargeString;
  LinkWebURI : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastUpdatedOn : Timestamp;
  CreatedBy : String(80);
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  _ServiceRequest : Association to one sap.c4c.ServiceRequestCollection on _ServiceRequest.ObjectID = ParentObjectID;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestAttachmentFolderTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestAttachmentFolderCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestTextCollectionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ServiceRequestID : String(35);
  TypeCode : String(5);
  TypeCodeText : LargeString;
  LanguageCode : String(2);
  LanguageCodeText : LargeString;
  Text : LargeString;
  FormattedText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  UpdatedOn : Timestamp;
  CreatedBy : String(80);
  LastUpdatedBy : String(80);
  AuthorName : String(40);
  AuthorUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  TextCreatedOn : Timestamp;
  AuthorID : String(60);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  ServiceRequest : Association to one sap.c4c.ServiceRequestCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Author : Association to one sap.c4c.BusinessUserCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestTextCollectionTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestTextCollectionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestOtherPartyCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  EmployeeID : String(60);
  RoleCategoryCode : String(3);
  RoleCategoryCodeText : LargeString;
  RoleCode : String(10);
  RoleCodeText : LargeString;
  ServiceRequestID : String(35);
  OtherPartyUUID : UUID;
  PartyID : String(60);
  PartyTypeCode : String(15);
  PartyTypeCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  ServiceRequest : Association to one sap.c4c.ServiceRequestCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Employee : Association to one sap.c4c.EmployeeCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestOtherPartyRoleCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestOtherPartyRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestOtherPartyPartyTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestSolutionProposalCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ID : String(70);
  ExternalKnowledgeBaseArticleID : String(35);
  ExternalKnowledgeBaseArticleURI : LargeString;
  ExternalKnowledgeBaseArticleDescription : String(80);
  ExternalKnowledgeBaseArticleDescriptionLanguageCode : String(2);
  ExternalKnowledgeBaseArticleDescriptionLanguageCodeText : LargeString;
  Note : LargeString;
  NoteLanguageCode : String(2);
  NoteLanguageCodeText : LargeString;
  ServiceRequestID : String(35);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreationDateTime : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  ServiceRequest : Association to one sap.c4c.ServiceRequestCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestSolutionProposalExternalKnowledgeBaseArticleDescriptionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestSolutionProposalNoteLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestItemCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ID : String(10);
  QuantityMeasureUnitCode : String(3);
  QuantityMeasureUnitCodeText : LargeString;
  UserServiceTransactionProcessingTypeCode : String(4);
  UserServiceTransactionProcessingTypeCodeText : LargeString;
  ProductID : String(60);
  ServicePerformerPartyID : String(60);
  WarrantyGoodwillCode : String(2);
  WarrantyGoodwillCodeText : LargeString;
  Description : String(40);
  DescriptionLanguageCode : String(2);
  DescriptionLanguageCodeText : LargeString;
  ServiceRequestID : String(35);
  ServicePerformerPartyName : String(480);
  ProductDescription : String(40);
  ProductUUID : UUID;
  ServicePerformerPartyUUID : UUID;
  ServiceRequestExecutionLifeCycleStatusCode : String(2);
  ServiceRequestExecutionLifeCycleStatusCodeText : LargeString;
  PlannedQuantity : Decimal(31, 14);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  RequestedEndDateTime : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  RequestedStartDateTime : Timestamp;
  ActualQuantity : Decimal(31, 14);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ActualStartDateTime : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ActualEndDateTime : Timestamp;
  ParentItemID : String(10);
  ContractID : String(35);
  ContractItemID : String(10);
  ProductIDExternalKey : String(100);
  ExternalFollowUpProcessingReleaseStatusCode : String(2);
  ExternalFollowUpProcessingReleaseStatusCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  ServiceRequest : Association to one sap.c4c.ServiceRequestCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ServiceRequestItemTextCollection : Association to many sap.c4c.ServiceRequestItemTextCollectionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Product : Association to one sap.c4c.ProductCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ServicePerformerParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ParentItem : Association to one sap.c4c.ServiceRequestItemCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Contract : Association to one sap.c4c.ContractCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ContractItem : Association to one sap.c4c.ContractItemCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestItemQuantityMeasureUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestItemUserServiceTransactionProcessingTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestItemWarrantyGoodwillCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestItemDescriptionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestItemServiceRequestExecutionLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestItemExternalFollowUpProcessingReleaseStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestItemTextCollectionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  TypeCode : String(5);
  TypeCodeText : LargeString;
  LanguageCode : String(2);
  LanguageCodeText : LargeString;
  Text : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  UpdatedOn : Timestamp;
  CreatedBy : String(80);
  LastUpdatedBy : String(80);
  AuthorName : String(40);
  AuthorUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  ServiceRequestItem : Association to one sap.c4c.ServiceRequestItemCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestItemTextCollectionTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestItemTextCollectionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestServicePointLocationCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  RoleCategoryCode : String(3);
  RoleCategoryCodeText : LargeString;
  DeterminationMethodCode : String(2);
  DeterminationMethodCodeText : LargeString;
  RoleCode : String(10);
  RoleCodeText : LargeString;
  ServiceRequestID : String(35);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  ServiceRequest : Association to one sap.c4c.ServiceRequestCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ServiceRequestServicePointLocationAddress : Association to one sap.c4c.ServiceRequestServicePointLocationAddressCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestServicePointLocationRoleCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestServicePointLocationDeterminationMethodCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestServicePointLocationRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestServicePointLocationAddressCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  Phone : String(350);
  Email : String(765);
  Fax : String(350);
  Mobile : String(350);
  WebSite : String(1280);
  Language : String(2);
  LanguageText : LargeString;
  Country : String(3);
  CountryText : LargeString;
  AddressLine1 : String(240);
  AddressLine2 : String(240);
  HouseNumber : String(100);
  Street : String(360);
  AddressLine4 : String(240);
  AddressLine5 : String(240);
  City : String(240);
  State : String(6);
  StateText : LargeString;
  PostalCode : String(100);
  PostalCodeText : LargeString;
  District : String(240);
  County : String(240);
  POBox : String(100);
  POBoxPostalCode : String(100);
  POBoxPostalCodeText : LargeString;
  BuildingID : String(10);
  FloorID : String(10);
  RoomID : String(10);
  AdditionalHouseID : String(100);
  POBoxIndicator : Boolean;
  POBoxDeviatingCityName : String(240);
  POBoxDeviatingRegionCode : String(6);
  POBoxDeviatingRegionCodeText : LargeString;
  POBoxDeviatingCountryCode : String(3);
  POBoxDeviatingCountryCodeText : LargeString;
  TimeZoneCode : String(10);
  TimeZoneCodeText : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestServicePointLocationAddressLanguageCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestServicePointLocationAddressCountryCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestServicePointLocationAddressStateCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestServicePointLocationAddressPostalCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestServicePointLocationAddressPOBoxPostalCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestLocationAddressPOBoxDeviatingRegionCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestLocationAddressPOBoxDeviatingCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestLocationAddressTimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestBusinessTransactionDocumentReferenceCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  TypeCode : String(15);
  TypeCodeText : LargeString;
  RoleCode : String(3);
  RoleCodeText : LargeString;
  ID : String(35);
  BusinessSystemID : String(32);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  UUID : UUID;
  ItemUUID : UUID;
  ItemTypeCode : String(5);
  ItemTypeCodeText : LargeString;
  ItemID : String(10);
  @cds.ambiguous : 'missing on condition?'
  ServiceRequest : Association to one sap.c4c.ServiceRequestCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _BuyingCenter : Association to one sap.c4c.BuyingCenterCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Campaign : Association to one sap.c4c.CampaignCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Lead : Association to one sap.c4c.LeadCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Opportunity : Association to one sap.c4c.OpportunityCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesQuote : Association to one sap.c4c.SalesQuoteCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _CustomerOrder : Association to one sap.c4c.CustomerOrderCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Appointment : Association to one sap.c4c.AppointmentCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _EMail : Association to one sap.c4c.EMailCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _PhoneCall : Association to one sap.c4c.PhoneCallCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Task : Association to one sap.c4c.TasksCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Visit : Association to one sap.c4c.VisitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SocialMediaActivity : Association to one sap.c4c.SocialMediaActivityCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ChatActivity : Association to one sap.c4c.ChatActivityCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Activity : Association to one sap.c4c.ActivityCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Contract : Association to one sap.c4c.ContractCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Ticket : Association to one sap.c4c.ServiceRequestCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Survey : Association to one sap.c4c.SurveyCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestBusinessTransactionDocumentReferenceTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestBusinessTransactionDocumentReferenceRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestBusinessTransactionDocumentReferenceItemTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestServiceReferenceObjectCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  InstallationPointID : String(40);
  InstallationPointUUID : UUID;
  InstalledBaseID : String(40);
  InstalledBaseUUID : UUID;
  MainIndicator : Boolean;
  ProductID : String(60);
  SerialID : String(30);
  ServiceRequestID : String(35);
  ProductIDExternalKey : String(100);
  @cds.ambiguous : 'missing on condition?'
  ServiceRequest : Association to one sap.c4c.ServiceRequestCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _InstallationPoint : Association to one sap.c4c.InstallationPointCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _InstalledBase : Association to one sap.c4c.InstalledBaseCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Product : Association to one sap.c4c.ProductCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestPartyCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  PartyID : String(60);
  PartyUUID : UUID;
  RoleCategoryCode : String(3);
  RoleCategoryCodeText : LargeString;
  RoleCode : String(10);
  RoleCodeText : LargeString;
  Main : Boolean;
  DeterminationMethodCode : String(2);
  DeterminationMethodCodeText : LargeString;
  PartyName : String(480);
  Phone : String(40);
  Mobile : String(40);
  Email : String(255);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  ServiceRequest : Association to one sap.c4c.ServiceRequestCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestPartyRoleCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestPartyRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestPartyDeterminationMethodCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestSkillsCollectionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  SkillID : String(20);
  Mandatory : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreationDateTime : Timestamp;
  CreationIdentityUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastChangeDateTime : Timestamp;
  LastChangeIdentityUUID : UUID;
  SkillSource : String(2);
  SkillSourceText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  ServiceRequest : Association to one sap.c4c.ServiceRequestCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestSkillsCollectionSkillSourceCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestHistoricalVersionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  SalesAndServiceBusinessAreaServiceOrganisationUUID : UUID;
  ProcessorPartyUUID : UUID;
  ServiceSupportTeamPartyUUID : UUID;
  ServiceTechnicianPartyUUID : UUID;
  ServiceTermsServiceRequestUserLifeCycleStatusCode : String(2);
  ServiceTermsServiceRequestUserLifeCycleStatusCodeText : LargeString;
  ServiceTermsServicePriorityCode : String(1);
  ServiceTermsServicePriorityCodeText : LargeString;
  ServiceIssueCategoryID : String(25);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EndDateTime : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  StartDateTime : Timestamp;
  ConfirmationIssuingStatusCode : String(2);
  ConfirmationIssuingStatusCodeText : LargeString;
  EscalationStatusCode : String(2);
  EscalationStatusCodeText : LargeString;
  RequestAssignmentStatusCode : String(2);
  RequestAssignmentStatusCodeText : LargeString;
  ServiceRequestLifeCycleStatusCode : String(2);
  ServiceRequestLifeCycleStatusCodeText : LargeString;
  SolutionProposalStatusCode : String(2);
  SolutionProposalStatusCodeText : LargeString;
  ServiceIssueCategoryCatalogueID : String(25);
  @cds.ambiguous : 'missing on condition?'
  ServiceRequest : Association to one sap.c4c.ServiceRequestCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestHistoricalVersionServiceTermsServiceRequestUserLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestHistoricalVersionServiceTermsServicePriorityCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestHistoricalVersionConfirmationIssuingStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestHistoricalVersionEscalationStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestHistoricalVersionRequestAssignmentStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestHistoricalVersionServiceRequestLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestHistoricalVersionSolutionProposalStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.BusinessPartnerMergeCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  MergeID : String(35);
  Name : String(40);
  CategoryCode : String(1);
  CategoryCodeText : LargeString;
  IsContactMerge : Boolean;
  StatusCode : String(2);
  StatusCodeText : LargeString;
  MasterBusinessPartnerID : String(10);
  FirstDuplicateBusinessPartnerID : String(10);
  SecondDuplicateBusinessPartnerID : String(10);
  InitiateMerge : Boolean;
  @cds.ambiguous : 'missing on condition?'
  _MasterBusinessPartner : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _FirstDuplicateBusinessPartner : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SecondDuplicateBusinessPartner : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.BusinessPartnerMergeCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.BusinessPartnerMergeStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.UtilitiesSalesPointOfDeliveryCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreationDateTime : Timestamp;
  CreationIdentityUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastChangeDateTime : Timestamp;
  LastChangeIdentityUUID : UUID;
  SalesPODDescription : String(40);
  FromDate : Date;
  ToDate : Date;
  Grid : String(40);
  VoltageLevel : String(2);
  PODTechRole : Boolean;
  PODDeregRole : Boolean;
  PODType : String(4);
  ServiceProvider : String(40);
  Distributor : String(40);
  ServiceType : String(4);
  Installation : String(35);
  PremiseExternalID : String(35);
  HouseID : String(100);
  BuildingID : String(10);
  RoomID : String(10);
  FloorID : String(10);
  StreetName : String(360);
  RegionCode : String(6);
  CityName : String(240);
  CountryCode : String(3);
  StreetPostalCode : String(100);
  UUID : UUID;
  SalesPointOfDeliveryID : String(35);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  Released : Boolean;
  @cds.ambiguous : 'missing on condition?'
  UtilitiesSalesPointOfDeliveryGroupingofSalesPOD : Association to many sap.c4c.UtilitiesSalesPointOfDeliveryGroupingofSalesPODCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.UtilitiesSalesPointOfDeliveryVoltageLevelCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.UtilitiesSalesPointOfDeliveryPODTypeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.UtilitiesSalesPointOfDeliveryServiceTypeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.UtilitiesSalesPointOfDeliveryRegionCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.UtilitiesSalesPointOfDeliveryCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.UtilitiesSalesPointOfDeliveryStreetPostalCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.UtilitiesSalesPointOfDeliveryGroupingofSalesPODCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  BatchID : String(80);
  BrokerID : String(10);
  Customer : String(10);
  Group1 : String(80);
  Group2 : String(80);
  Group3 : String(80);
  UUID : UUID;
  SalesPointOfDeliveryID : String(35);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  UtilitiesSalesPointOfDelivery : Association to one sap.c4c.UtilitiesSalesPointOfDeliveryCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SocialMediaUserProfileCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  SocialMediaUserCategoryCode : String(2);
  SocialMediaUserCategoryCodeText : LargeString;
  ID : String(10);
  AccountUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  AccountInternalID : String(10);
  @cds.ambiguous : 'missing on condition?'
  SocialMediaUserProfileBupaReference : Association to many sap.c4c.SocialMediaUserProfileBupaReferenceCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SocialMediaUserProfileUserInformation : Association to many sap.c4c.SocialMediaUserProfileUserInformationCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Account : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SocialMediaUserProfileSocialMediaUserCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SocialMediaUserProfileUserInformationCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  SocialMediaChannelCode : String(3);
  SocialMediaChannelCodeText : LargeString;
  EmailURI : String(765);
  ExternalPartyAccountID : String(255);
  GivenName : String(40);
  FamilyName : String(40);
  MiddleName : String(40);
  SocialMediaUserImageURI : LargeString;
  SocialMediaUserAccountID : String(255);
  SocialMediaUserName : String(40);
  @cds.ambiguous : 'missing on condition?'
  SocialMediaUserProfile : Association to one sap.c4c.SocialMediaUserProfileCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ExternalPartyAccount : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SocialMediaUserProfileUserInformationSocialMediaChannelCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SocialMediaUserProfileBupaReferenceCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  BusinessPartnerUUID : UUID;
  BusinessPartnerCategoryCode : String(1);
  BusinessPartnerCategoryCodeText : LargeString;
  BusinessPartnerRoleCode : String(6);
  BusinessPartnerRoleCodeText : LargeString;
  AccountInternalID : String(10);
  @cds.ambiguous : 'missing on condition?'
  SocialMediaUserProfile : Association to one sap.c4c.SocialMediaUserProfileCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Account : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SocialMediaUserProfileBupaReferenceBusinessPartnerCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SocialMediaUserProfileBupaReferenceBusinessPartnerRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InstallationPointCollection {
  key ObjectID : String(70);
  ID : String(40);
  BelongsToInstallationPointID : String(40);
  InstalledBaseID : String(40);
  Status : String(2);
  StatusText : LargeString;
  TypeCode : String(4);
  TypeCodeText : LargeString;
  SalesTerritoryID : String(6);
  ServiceTerritoryID : String(6);
  ValidityStartDate : Date;
  ValidityEndDate : Date;
  TextName : String(40);
  ProductID : String(60);
  ProductQuantity : Decimal(31, 14);
  ProductUnitCode : String(3);
  ProductUnitCodeText : LargeString;
  WarrantyID : String(60);
  FunctionalLocationStatusProfile : String(8);
  FunctionalLocationStatusProfileText : LargeString;
  FunctionalLocationUserStatus : String(5);
  FunctionalLocationUserStatusText : LargeString;
  FunctionalLocationSalesOrganisationID : String(20);
  FunctionalLocationDistributionChannelCode : String(2);
  FunctionalLocationDistributionChannelCodeText : LargeString;
  FunctionalLocationDivisionCode : String(2);
  FunctionalLocationDivisionCodeText : LargeString;
  FunctionalLocationSalesOfficeID : String(20);
  FunctionalLocationSalesGroupID : String(20);
  FunctionalLocationExternalID : String(100);
  FunctionalLocationServiceOrganisationID : String(20);
  Country : String(3);
  CountryText : LargeString;
  State : String(6);
  StateText : LargeString;
  County : String(240);
  District : String(240);
  Building : String(10);
  Floor : String(10);
  Room : String(10);
  House : String(100);
  AdditionalHouseID : String(100);
  AddressLine1 : String(240);
  AddressLine2 : String(240);
  Street : String(60);
  AddressLine4 : String(240);
  AddressLine5 : String(240);
  City : String(240);
  AdditionalCityName : String(240);
  StreetPostalCode : String(100);
  CareOfName : String(240);
  POBoxPostalCode : String(100);
  CompanyPostalCode : String(100);
  TaxJurisdictionCode : String(25);
  TaxJurisdictionCodeText : LargeString;
  TimeZoneCode : String(10);
  TimeZoneCodeText : LargeString;
  AddressRepresentationCode : String(1);
  AddressRepresentationCodeText : LargeString;
  LatitudeMeasure : Decimal(31, 14);
  LatitudeUnitCode : String(3);
  LatitudeUnitCodeText : LargeString;
  LongitudeMeasure : Decimal(31, 14);
  LongitudeUnitCode : String(3);
  LongitudeUnitCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreationDateTime : Timestamp;
  CreatedBy : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastChangeDateTime : Timestamp;
  ChangedBy : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  FunctionalLocationDescription : Association to many sap.c4c.FunctionalLocationDescriptionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  InstallationPointAttachmentFolder : Association to many sap.c4c.InstallationPointAttachmentFolderCollection {  };
  @cds.ambiguous : 'missing on condition?'
  InstallationPointParty : Association to many sap.c4c.InstallationPointPartyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  InstallationPointTextCollection : Association to many sap.c4c.InstallationPointTextCollectionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _BelongsToInstallationPoint : Association to one sap.c4c.InstallationPointCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _InstalledBase : Association to one sap.c4c.InstalledBaseCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesTerritory : Association to one sap.c4c.SalesTerritoryCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Product : Association to one sap.c4c.ProductCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _FunctionalLocationSalesOrganisation : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _FunctionalLocationSalesOffice : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _FunctionalLocationSalesGroup : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _FunctionalLocationServiceOrganisation : Association to one sap.c4c.OrganisationalUnitCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.InstallationPointStatusCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InstallationPointTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InstallationPointProductUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InstallationPointFunctionalLocationStatusProfileCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InstallationPointFunctionalLocationUserStatusCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InstallationPointFunctionalLocationDistributionChannelCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InstallationPointFunctionalLocationDivisionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InstallationPointCountryCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InstallationPointStateCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InstallationPointTaxJurisdictionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InstallationPointTimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InstallationPointAddressRepresentationCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InstallationPointLatitudeUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InstallationPointLongitudeUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.FunctionalLocationDescriptionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  InstallationPointID : String(40);
  LanguageCode : String(2);
  LanguageCodeText : LargeString;
  Description : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  InstallationPoint : Association to one sap.c4c.InstallationPointCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.FunctionalLocationDescriptionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InstallationPointPartyCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  InstallationPointID : String(40);
  RoleCode : String(10);
  RoleCodeText : LargeString;
  PartyID : String(60);
  ContactPartyID : String(60);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  InstallationPoint : Association to one sap.c4c.InstallationPointCollection {  };
  @cds.ambiguous : 'missing on condition?'
  InstallationPointOtherContactParty : Association to many sap.c4c.InstallationPointOtherContactPartyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ContactParty : Association to one sap.c4c.ContactCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.InstallationPointPartyRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InstallationPointTextCollectionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  InstallationPointID : String(40);
  Text : LargeString;
  LanguageCode : String(2);
  LanguageCodeText : LargeString;
  FormattedText : LargeString;
  AuthorName : String(40);
  AuthorUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  UpdatedOn : Timestamp;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  TypeCode : String(5);
  TypeCodeText : LargeString;
  TechnicalUserIndicator : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  InstallationPoint : Association to one sap.c4c.InstallationPointCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.InstallationPointTextCollectionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InstallationPointTextCollectionTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InstallationPointOtherContactPartyCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  InstallationPointID : String(40);
  RoleCode : String(10);
  RoleCodeText : LargeString;
  PartyID : String(60);
  ContactPartyID : String(60);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  InstallationPoint : Association to one sap.c4c.InstallationPointCollection {  };
  @cds.ambiguous : 'missing on condition?'
  InstallationPointParty : Association to one sap.c4c.InstallationPointPartyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ContactParty : Association to one sap.c4c.ContactCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.InstallationPointOtherContactPartyRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InstallationPointAttachmentFolderCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  UUID : UUID;
  Name : LargeString;
  MimeType : LargeString;
  Binary : LargeBinary;
  SizeInkB : Decimal(31, 14);
  DocumentLink : LargeString;
  OutputRelevanceIndicator : Boolean;
  LinkWebURI : LargeString;
  TypeCode : String(5);
  TypeCodeText : LargeString;
  CategoryCode : String(1);
  CategoryCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastUpdatedOn : Timestamp;
  LastUpdatedBy : String(80);
  Title : LargeString;
  InstallationPointID : String(40);
  @cds.ambiguous : 'missing on condition?'
  _InstallationPoint : Association to one sap.c4c.InstallationPointCollection on _InstallationPoint.ObjectID = ParentObjectID;
};

@cds.persistence.skip : true
entity sap.c4c.InstallationPointAttachmentFolderTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InstallationPointAttachmentFolderCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveyResponseRootCollection {
  key ObjectID : String(70);
  ID : String(35);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  SurveyCreationDate : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  SurveyResponse : Association to many sap.c4c.SurveyResponseCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SurveyResponseCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ID : String(35);
  Version : String(32);
  BusinessTransactionDocumentID : String(35);
  BusinessTransactionDocumentUUID : String(32);
  BusinessTransactionDocumentTypeCode : String(15);
  BusinessTransactionDocumentTypeCodeText : LargeString;
  ProcessorID : String(10);
  ProcessorUUID : String(32);
  RepresentationBinaryObject : LargeBinary;
  RepresentationBinaryObjectResponseIndicator : Boolean;
  DesignTimeVersionUUID : UUID;
  LifeCycleStatusCode : String(2);
  LifeCycleStatusCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  ValuationCollectionLastChangedBy : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  SignatureUUID : UUID;
  TransactionDocumentUUID : UUID;
  @cds.ambiguous : 'missing on condition?'
  SignatureAttachment : Association to many sap.c4c.SignatureAttachmentCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SurveyAttachments : Association to many sap.c4c.SurveyAttachmentsCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SurveyResponseItem : Association to many sap.c4c.SurveyResponseItemCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SurveyResponseRoot : Association to one sap.c4c.SurveyResponseRootCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SurveySignature : Association to one sap.c4c.SurveySignatureCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SurveyResponseBusinessTransactionDocumentTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveyResponseLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveyResponseItemCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ProductID : String(40);
  ProductUUID : UUID;
  ProductCategoryID : String(40);
  ProductCategoryUUID : UUID;
  PartyID : String(60);
  PartyUUID : UUID;
  FinishedIndicator : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  CompletionRatePerProduct : Decimal(16, 6);
  @cds.ambiguous : 'missing on condition?'
  ResponseAttachmentHeader : Association to many sap.c4c.ResponseAttachmentHeaderCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SurveyQuestionAnswers : Association to many sap.c4c.SurveyQuestionAnswersCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SurveyResponse : Association to one sap.c4c.SurveyResponseCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SurveyResponseItemAttachments : Association to many sap.c4c.SurveyResponseItemAttachmentsCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SurveyResponseRoot : Association to one sap.c4c.SurveyResponseRootCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Product : Association to one sap.c4c.ProductCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ProductCategory : Association to one sap.c4c.ProductCategoryHierarchyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SurveyQuestionAnswersCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  QuestionUUID : String(32);
  QuestionAnswerOptionUUID : String(32);
  QuestionRatingUUID : String(32);
  QuestionResponseOptionUUID : String(32);
  QuestionTypeCode : String(2);
  QuestionTypeCodeText : LargeString;
  Amount : Decimal(28, 6);
  CurrencyCode : String(3);
  CurrencyCodeText : LargeString;
  Date : Date;
  NumericValue : Integer;
  Quantity : Decimal(31, 14);
  UnitOfMeasure : String(3);
  UnitOfMeasureText : LargeString;
  AttributeAssigneeID : String(40);
  AttributeSetID : String(40);
  AttributeID : String(40);
  Text : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  SurveyResponseItem : Association to one sap.c4c.SurveyResponseItemCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SurveyResponseRoot : Association to one sap.c4c.SurveyResponseRootCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SurveyQuestionAnswersQuestionTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveyQuestionAnswersCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveyQuestionAnswersUnitOfMeasureCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveyResponseItemAttachmentsCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  UUID : UUID;
  Name : LargeString;
  MimeType : LargeString;
  Binary : LargeBinary;
  SizeInkB : Decimal(31, 14);
  DocumentLink : LargeString;
  OutputRelevanceIndicator : Boolean;
  LinkWebURI : LargeString;
  TypeCode : String(5);
  TypeCodeText : LargeString;
  CategoryCode : String(1);
  CategoryCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastUpdatedOn : Timestamp;
  LastUpdatedBy : String(80);
  Title : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveyResponseItemAttachmentsTypeCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveyResponseItemAttachmentsCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ResponseAttachmentHeaderCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  ElementUUID : UUID;
  @cds.ambiguous : 'missing on condition?'
  ResponseAttachments : Association to many sap.c4c.ResponseAttachmentsCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SurveyResponseItem : Association to one sap.c4c.SurveyResponseItemCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SurveyResponseRoot : Association to one sap.c4c.SurveyResponseRootCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ResponseAttachmentsCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  UUID : UUID;
  Name : LargeString;
  MimeType : LargeString;
  Binary : LargeBinary;
  SizeInkB : Decimal(31, 14);
  DocumentLink : LargeString;
  OutputRelevanceIndicator : Boolean;
  LinkWebURI : LargeString;
  TypeCode : String(5);
  TypeCodeText : LargeString;
  CategoryCode : String(1);
  CategoryCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastUpdatedOn : Timestamp;
  LastUpdatedBy : String(80);
  Title : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ResponseAttachmentsTypeCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ResponseAttachmentsCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveyAttachmentsCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  UUID : UUID;
  Name : LargeString;
  MimeType : LargeString;
  Binary : LargeBinary;
  SizeInkB : Decimal(31, 14);
  DocumentLink : LargeString;
  OutputRelevanceIndicator : Boolean;
  LinkWebURI : LargeString;
  TypeCode : String(5);
  TypeCodeText : LargeString;
  CategoryCode : String(1);
  CategoryCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastUpdatedOn : Timestamp;
  LastUpdatedBy : String(80);
  Title : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveyAttachmentsTypeCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveyAttachmentsCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SignatureAttachmentCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  UUID : UUID;
  Name : LargeString;
  MimeType : LargeString;
  Binary : LargeBinary;
  SizeInkB : Decimal(31, 14);
  DocumentLink : LargeString;
  OutputRelevanceIndicator : Boolean;
  LinkWebURI : LargeString;
  TypeCode : String(5);
  TypeCodeText : LargeString;
  CategoryCode : String(1);
  CategoryCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastUpdatedOn : Timestamp;
  LastUpdatedBy : String(80);
  Title : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SignatureAttachmentTypeCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SignatureAttachmentCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveySignatureCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  ElementUUID : UUID;
  @cds.ambiguous : 'missing on condition?'
  SurveyResponse : Association to one sap.c4c.SurveyResponseCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SurveyResponseRoot : Association to one sap.c4c.SurveyResponseRootCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SurveySignatureAttachment : Association to many sap.c4c.SurveySignatureAttachmentCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SurveySignatureAttachmentCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  UUID : UUID;
  Name : LargeString;
  MimeType : LargeString;
  Binary : LargeBinary;
  SizeInkB : Decimal(31, 14);
  DocumentLink : LargeString;
  OutputRelevanceIndicator : Boolean;
  LinkWebURI : LargeString;
  TypeCode : String(5);
  TypeCodeText : LargeString;
  CategoryCode : String(1);
  CategoryCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastUpdatedOn : Timestamp;
  LastUpdatedBy : String(80);
  Title : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveySignatureAttachmentTypeCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveySignatureAttachmentCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ElementRatingCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  OrdinalNumberValue : Integer;
  Description : sap.c4c.ElementRatingCollection_Description;
  @cds.ambiguous : 'missing on condition?'
  Questions : Association to one sap.c4c.QuestionsCollection {  };
  @cds.ambiguous : 'missing on condition?'
  Survey : Association to one sap.c4c.SurveyCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ElementResponseOptionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  OrdinalNumberValue : Integer;
  Description : sap.c4c.ElementResponseOptionCollection_Description;
  @cds.ambiguous : 'missing on condition?'
  Questions : Association to one sap.c4c.QuestionsCollection {  };
  @cds.ambiguous : 'missing on condition?'
  Survey : Association to one sap.c4c.SurveyCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SurveyCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  CategoryCode : String(3);
  CategoryCodeText : LargeString;
  LifeCycleStatusCode : String(2);
  LifeCycleStatusCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ValidFromDate : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ValidToDate : Timestamp;
  ID : String(35);
  Version : String(32);
  Name : String(255);
  languageCode : String(2);
  languageCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Questions : Association to many sap.c4c.QuestionsCollection {  };
  @cds.ambiguous : 'missing on condition?'
  Response : Association to many sap.c4c.ResponseCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SurveyCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveyLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveylanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ResponseCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  BusinessTransactionDocumentRefID : UUID;
  BusinessTransactionDocumentTypeCode : String(15);
  BusinessTransactionDocumentTypeCodeText : LargeString;
  ValuationCollectionLifeCycleStatusCode : String(2);
  ValuationCollectionLifeCycleStatusCodeText : LargeString;
  DesignTimeVersionUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  ResponseItem : Association to many sap.c4c.ResponseItemCollection {  };
  @cds.ambiguous : 'missing on condition?'
  Survey : Association to one sap.c4c.SurveyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SurveyDesignTime : Association to many sap.c4c.SurveyDesignTimeCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ResponseBusinessTransactionDocumentTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ResponseValuationCollectionLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ResponseItemCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  ProductRefID : UUID;
  ProductCategoryRefID : UUID;
  ProductID : String(40);
  ProductDescription : sap.c4c.ResponseItemCollection_ProductDescription;
  @cds.ambiguous : 'missing on condition?'
  AnswerAttachmentReference : Association to many sap.c4c.AnswerAttachmentReferenceCollection {  };
  @cds.ambiguous : 'missing on condition?'
  Answers : Association to many sap.c4c.AnswersCollection {  };
  @cds.ambiguous : 'missing on condition?'
  QuestionAnswers : Association to many sap.c4c.QuestionAnswersCollection {  };
  @cds.ambiguous : 'missing on condition?'
  Response : Association to one sap.c4c.ResponseCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ResponseItemAttachment : Association to many sap.c4c.ResponseItemAttachmentCollection {  };
  @cds.ambiguous : 'missing on condition?'
  Survey : Association to one sap.c4c.SurveyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Product : Association to one sap.c4c.ProductCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.QuestionAnswersCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  DEFAULT_BRANCHING_TARGET : UUID;
  BRANCHING_TARGET : UUID;
  EXTENSION_FIELD_CODE : String(35);
  ResponseOptionDescription : sap.c4c.QuestionAnswersCollection_ResponseOptionDescription;
  QuestionRefID : UUID;
  AnswerRefID : UUID;
  AmountValue : sap.c4c.QuestionAnswersCollection_AmountValue;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  DateValue : Timestamp;
  IndicatorValue : Boolean;
  QuantityValue : sap.c4c.QuestionAnswersCollection_QuantityValue;
  TextValue : sap.c4c.QuestionAnswersCollection_TextValue;
  QuestionTypeCode : String(2);
  QuestionTypeCodeText : LargeString;
  MandatoryIndicator : Boolean;
  QuestionOrdinalNumber : Integer;
  QuestionDescription : sap.c4c.QuestionAnswersCollection_QuestionDescription;
  OptionOrdinalNumber : Integer;
  QuestionLowerBoundaryValueAmount : sap.c4c.QuestionAnswersCollection_QuestionLowerBoundaryValueAmount;
  QuestionLowerBoundaryValueQuantity : sap.c4c.QuestionAnswersCollection_QuestionLowerBoundaryValueQuantity;
  DefaultDuration : String(20);
  QuestionUpperBoundaryValueAmount : sap.c4c.QuestionAnswersCollection_QuestionUpperBoundaryValueAmount;
  QuestionUpperBoundaryValueQuantity : sap.c4c.QuestionAnswersCollection_QuestionUpperBoundaryValueQuantity;
  AnswerDescription : sap.c4c.QuestionAnswersCollection_AnswerDescription;
  RatingRefID : UUID;
  ResponseOptionRefID : UUID;
  RatingOrdinalNumber : Integer;
  RatingDescription : sap.c4c.QuestionAnswersCollection_RatingDescription;
  @cds.ambiguous : 'missing on condition?'
  ResponseItem : Association to one sap.c4c.ResponseItemCollection {  };
  @cds.ambiguous : 'missing on condition?'
  Survey : Association to one sap.c4c.SurveyCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.QuestionAnswersQuestionTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.QuestionsCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  QuestionTypeCode : String(2);
  QuestionTypeCodeText : LargeString;
  MandatoryIndicator : Boolean;
  QuestionOrdinalNumber : Integer;
  QuestionRefID : UUID;
  QuestionDescription : sap.c4c.QuestionsCollection_QuestionDescription;
  @cds.ambiguous : 'missing on condition?'
  AnswerOptions : Association to many sap.c4c.AnswerOptionsCollection {  };
  @cds.ambiguous : 'missing on condition?'
  BranchingConditions : Association to many sap.c4c.BranchingConditionsCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ElementRating : Association to many sap.c4c.ElementRatingCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ElementResponseOption : Association to many sap.c4c.ElementResponseOptionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  QuestionAttachment : Association to many sap.c4c.QuestionAttachmentCollection {  };
  @cds.ambiguous : 'missing on condition?'
  Survey : Association to one sap.c4c.SurveyCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.QuestionsQuestionTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.AnswerOptionsCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  AnswerOptionOrdinalNumber : Integer;
  AnswerOptionRefID : UUID;
  DefaultAmount : sap.c4c.AnswerOptionsCollection_DefaultAmount;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  DefaultDate : Timestamp;
  DefaultIndicator : Boolean;
  DefaultQuantity : sap.c4c.AnswerOptionsCollection_DefaultQuantity;
  DefaultText : sap.c4c.AnswerOptionsCollection_DefaultText;
  DefaultDuration : String(20);
  LowerBoundaryValueQuantity : sap.c4c.AnswerOptionsCollection_LowerBoundaryValueQuantity;
  UpperBoundaryValueQuantity : sap.c4c.AnswerOptionsCollection_UpperBoundaryValueQuantity;
  AnswerOptionDescription : sap.c4c.AnswerOptionsCollection_AnswerOptionDescription;
  UpperBoundaryValueAmount : sap.c4c.AnswerOptionsCollection_UpperBoundaryValueAmount;
  LowerBoundaryValueAmount : sap.c4c.AnswerOptionsCollection_LowerBoundaryValueAmount;
  @cds.ambiguous : 'missing on condition?'
  Questions : Association to one sap.c4c.QuestionsCollection {  };
  @cds.ambiguous : 'missing on condition?'
  Survey : Association to one sap.c4c.SurveyCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.AnswersCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  QuestionRefID : UUID;
  AnswerRefID : UUID;
  AmountValue : sap.c4c.AnswersCollection_AmountValue;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  DateValue : Timestamp;
  Indicator : Boolean;
  QuantityValue : sap.c4c.AnswersCollection_QuantityValue;
  TextValue : sap.c4c.AnswersCollection_TextValue;
  @cds.ambiguous : 'missing on condition?'
  ResponseItem : Association to one sap.c4c.ResponseItemCollection {  };
  @cds.ambiguous : 'missing on condition?'
  Survey : Association to one sap.c4c.SurveyCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.QuestionAttachmentCollection {
  key ObjectID : String(70);
  Binary : LargeBinary;
  CategoryCode : String(1);
  CategoryCodeText : LargeString;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  DocumentLink : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastUpdatedOn : Timestamp;
  LinkWebURI : LargeString;
  MimeType : LargeString;
  Name : LargeString;
  ParentObjectID : String(70);
  TypeCode : String(5);
  TypeCodeText : LargeString;
  UUID : UUID;
};

@cds.persistence.skip : true
entity sap.c4c.QuestionAttachmentCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.QuestionAttachmentTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ResponseItemAttachmentCollection {
  key ObjectID : String(70);
  Binary : LargeBinary;
  CategoryCode : String(1);
  CategoryCodeText : LargeString;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  DocumentLink : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastUpdatedOn : Timestamp;
  LinkWebURI : LargeString;
  MimeType : LargeString;
  Name : LargeString;
  ParentObjectID : String(70);
  TypeCode : String(5);
  TypeCodeText : LargeString;
  UUID : UUID;
};

@cds.persistence.skip : true
entity sap.c4c.ResponseItemAttachmentCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ResponseItemAttachmentTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.AnswerAttachmentReferenceCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  ElementUUID : UUID;
  @cds.ambiguous : 'missing on condition?'
  AnswerAttachment : Association to many sap.c4c.AnswerAttachmentCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ResponseItem : Association to one sap.c4c.ResponseItemCollection {  };
  @cds.ambiguous : 'missing on condition?'
  Survey : Association to one sap.c4c.SurveyCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.AnswerAttachmentCollection {
  key ObjectID : String(70);
  Binary : LargeBinary;
  CategoryCode : String(1);
  CategoryCodeText : LargeString;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  DocumentLink : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastUpdatedOn : Timestamp;
  LinkWebURI : LargeString;
  MimeType : LargeString;
  Name : LargeString;
  ParentObjectID : String(70);
  TypeCode : String(5);
  TypeCodeText : LargeString;
  UUID : UUID;
};

@cds.persistence.skip : true
entity sap.c4c.AnswerAttachmentCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.AnswerAttachmentTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.BranchingConditionsCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  SourceQuestionRefID : UUID;
  SourceQuestionOptionRefID : UUID;
  TargetQuestionRefID : UUID;
  @cds.ambiguous : 'missing on condition?'
  Questions : Association to one sap.c4c.QuestionsCollection {  };
  @cds.ambiguous : 'missing on condition?'
  Survey : Association to one sap.c4c.SurveyCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SurveyDesignTimeCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  CategoryCode : String(3);
  CategoryCodeText : LargeString;
  LifeCycleStatusCode : String(2);
  LifeCycleStatusCodeText : LargeString;
  ValidFromDate : Date;
  ValidToDate : Date;
  ID : String(35);
  Version : String(32);
  Name : String(255);
  languageCode : String(2);
  languageCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
};

@cds.persistence.skip : true
entity sap.c4c.SurveyDesignTimeCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveyDesignTimeLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveyDesignTimelanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ProductBusinessPartnerRelationCollection {
  key ObjectID : String(70);
  ID : String(40);
  Description : String(255);
  TypeCode : String(2);
  CategoryCode : String(4);
  LifeCycleStatusCode : String(2);
  AutoProposalIndicator : Boolean;
  ValidForAllBusinessPartnerIndicator : Boolean;
  ValidFromDate : Date;
  ValidToDate : Date;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  ProductBusinessPartnerRelationBusinessPartner : Association to many sap.c4c.ProductBusinessPartnerRelationBusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ProductBusinessPartnerRelationProcessingType : Association to many sap.c4c.ProductBusinessPartnerRelationProcessingTypeCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ProductBusinessPartnerRelationProduct : Association to many sap.c4c.ProductBusinessPartnerRelationProductCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ProductBusinessPartnerRelationProductCategory : Association to many sap.c4c.ProductBusinessPartnerRelationProductCategoryCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ProductBusinessPartnerRelationRequiredProduct : Association to many sap.c4c.ProductBusinessPartnerRelationRequiredProductCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ProductBusinessPartnerRelationRequiredProductCategory : Association to many sap.c4c.ProductBusinessPartnerRelationRequiredProductCategoryCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ProductBusinessPartnerRelationSalesArea : Association to many sap.c4c.ProductBusinessPartnerRelationSalesAreaCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ProductBusinessPartnerRelationSalesTerritory : Association to many sap.c4c.ProductBusinessPartnerRelationSalesTerritoryCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ProductBusinessPartnerRelationTargetGroup : Association to many sap.c4c.ProductBusinessPartnerRelationTargetGroupCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ProductBusinessPartnerRelationTeam : Association to many sap.c4c.ProductBusinessPartnerRelationTeamCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ProductBusinessPartnerRelationTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ProductBusinessPartnerRelationCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ProductBusinessPartnerRelationLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ProductBusinessPartnerRelationBusinessPartnerCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ProductBusinessPartnerRelationID : String(40);
  BusinessPartnerInternalID : String(10);
  IncludeBusinessPartnerHierarchyIndicator : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  BusinessPartnerUUID : UUID;
  @cds.ambiguous : 'missing on condition?'
  ProductBusinessPartnerRelation : Association to one sap.c4c.ProductBusinessPartnerRelationCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ProductBusinessPartnerRelationTeamCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ProductBusinessPartnerRelationID : String(40);
  BusinessPartnerInternalID : String(10);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  ProductBusinessPartnerRelation : Association to one sap.c4c.ProductBusinessPartnerRelationCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _BusinessPartner : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ProductBusinessPartnerRelationSalesAreaCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ProductBusinessPartnerRelationID : String(40);
  SalesOrganisationID : String(20);
  DistributionChannelCode : String(2);
  DivisionCode : String(2);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  ProductBusinessPartnerRelation : Association to one sap.c4c.ProductBusinessPartnerRelationCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesOrganisation : Association to one sap.c4c.OrganisationalUnitCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ProductBusinessPartnerRelationSalesAreaDistributionChannelCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ProductBusinessPartnerRelationSalesAreaDivisionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ProductBusinessPartnerRelationTargetGroupCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ProductBusinessPartnerRelationID : String(40);
  TargetGroupID : String(10);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  ProductBusinessPartnerRelation : Association to one sap.c4c.ProductBusinessPartnerRelationCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _TargetGroup : Association to one sap.c4c.TargetGroupCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ProductBusinessPartnerRelationSalesTerritoryCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ProductBusinessPartnerRelationID : String(40);
  SalesTerritoryID : String(6);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  ProductBusinessPartnerRelation : Association to one sap.c4c.ProductBusinessPartnerRelationCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesTerritory : Association to one sap.c4c.SalesTerritoryCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ProductBusinessPartnerRelationProductCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ProductBusinessPartnerRelationID : String(40);
  ProductID : String(40);
  ProductIdentifierTypeCode : String(2);
  ProductTypeCode : String(2);
  Sequence : Decimal(19);
  ProposedQuantity : Decimal(31, 14);
  unitCode : String(3);
  ProposedQuantityTypeCode : String(10);
  ProductSellingTypeCode : String(2);
  ValidFromDate : Date;
  ValidToDate : Date;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  ProductBusinessPartnerRelation : Association to one sap.c4c.ProductBusinessPartnerRelationCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Product : Association to one sap.c4c.ProductCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ProductBusinessPartnerRelationProductunitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ProductBusinessPartnerRelationProductProposedQuantityTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ProductBusinessPartnerRelationProductProductSellingTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ProductBusinessPartnerRelationProductCategoryCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ProductBusinessPartnerRelationID : String(40);
  ProductCategoryHierarchyID : String(10);
  ProductCategoryInternalID : String(20);
  Sequence : Decimal(19);
  IncludeSubordinateCategoriesIndicator : Boolean;
  ProductSellingTypeCode : String(2);
  ValidFromDate : Date;
  ValidToDate : Date;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  ProductBusinessPartnerRelation : Association to one sap.c4c.ProductBusinessPartnerRelationCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ProductCategory : Association to one sap.c4c.ProductCategoryHierarchyCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ProductBusinessPartnerRelationProductCategoryProductSellingTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ProductBusinessPartnerRelationRequiredProductCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ProductBusinessPartnerRelationID : String(40);
  ProductID : String(40);
  ProductIdentifierTypeCode : String(2);
  ProductTypeCode : String(2);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  ProductUUID : UUID;
  @cds.ambiguous : 'missing on condition?'
  ProductBusinessPartnerRelation : Association to one sap.c4c.ProductBusinessPartnerRelationCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Product : Association to one sap.c4c.ProductCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ProductBusinessPartnerRelationRequiredProductCategoryCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ProductBusinessPartnerRelationID : String(40);
  IncludeSubordinateCategoriesIndicator : Boolean;
  ProductCategoryHierarchyID : String(10);
  ProductCategoryInternalID : String(20);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  ProductBusinessPartnerRelation : Association to one sap.c4c.ProductBusinessPartnerRelationCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ProductCategoryHierarchy : Association to one sap.c4c.ProductCategoryHierarchyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ProductCategory : Association to one sap.c4c.ProductCategoryHierarchyCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ProductBusinessPartnerRelationProcessingTypeCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  ProductBusinessPartnerRelationID : String(40);
  ProcessingTypeCode : String(4);
  @cds.ambiguous : 'missing on condition?'
  ProductBusinessPartnerRelation : Association to one sap.c4c.ProductBusinessPartnerRelationCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ProductBusinessPartnerRelationProcessingTypeProcessingTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderCollection {
  key ObjectID : String(70);
  InformationLifeCycleStatusCode : String(2);
  InformationLifeCycleStatusCodeText : LargeString;
  ClassificationCode : String(3);
  ClassificationCodeText : LargeString;
  BuyerID : String(35);
  FulfilmentBlockingReasonCode : String(2);
  FulfilmentBlockingReasonCodeText : LargeString;
  ID : String(35);
  InvoicingBlockingReasonCode : String(2);
  InvoicingBlockingReasonCodeText : LargeString;
  LastChangeDate : Date;
  OrderExternalLifeCycleStatusCode : String(2);
  OrderExternalLifeCycleStatusCodeText : LargeString;
  Name : String(255);
  LanguageCode : String(2);
  LanguageCodeText : LargeString;
  ProcessingTypeCode : String(4);
  ProcessingTypeCodeText : LargeString;
  ItemListCancellationStatusCode : String(2);
  ItemListCancellationStatusCodeText : LargeString;
  ItemListFulfilmentProcessingStatusCode : String(2);
  ItemListFulfilmentProcessingStatusCodeText : LargeString;
  ApprovalStatusCode : String(2);
  ApprovalStatusCodeText : LargeString;
  ConsistencyStatusCode : String(2);
  ConsistencyStatusCodeText : LargeString;
  OverallBlockingStatusCode : String(2);
  OverallBlockingStatusCodeText : LargeString;
  ReplicationProcessingStatusCode : String(2);
  ReplicationProcessingStatusCodeText : LargeString;
  DistributionChannelCode : String(2);
  DistributionChannelCodeText : LargeString;
  DivisionCode : String(2);
  DivisionCodeText : LargeString;
  SalesGroupID : String(20);
  SalesOfficeID : String(20);
  SalesOrganisationID : String(20);
  SalesTerritoryID : String(6);
  BuyerPartyID : String(60);
  DeliveryPriorityCode : String(2);
  DeliveryPriorityCodeText : LargeString;
  TransferLocationName : String(28);
  EmployeeResponsiblePartyID : String(60);
  BuyerPartyName : String(480);
  EmployeeResponsiblePartyName : String(480);
  BuyerContactPartyID : String(60);
  BuyerContactPartyName : String(480);
  CurrencyCode : String(3);
  CurrencyCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  PriceDateTime : Timestamp;
  ProductRecipientPartyID : String(60);
  ProductRecipientPartyName : String(480);
  RequestedFulfillmentStartDateTime : String(33);
  timeZoneCode : String(10);
  timeZoneCodeText : LargeString;
  CancellationReasonCode : String(4);
  CancellationReasonCodeText : LargeString;
  SalesUnitPartyID : String(60);
  CalculationStatusCode : String(2);
  CalculationStatusCodeText : LargeString;
  ExternalPriceDocumentBaseBusinessTransactionDocumentUUID : UUID;
  PricingProcedureCode : String(6);
  PricingProcedureCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  DateTime : Timestamp;
  OrderReasonCode : String(3);
  OrderReasonCodeText : LargeString;
  MaintenanceModeInternalOnlyMainDiscount : Decimal(31, 14);
  NetAmount : Decimal(28, 6);
  NetAmountCurrencyCode : String(3);
  NetAmountCurrencyCodeText : LargeString;
  GrossAmount : Decimal(28, 6);
  GrossAmountCurrencyCode : String(3);
  GrossAmountCurrencyCodeText : LargeString;
  TaxAmount : Decimal(28, 6);
  TaxAmountCurrencyCode : String(3);
  TaxAmountCurrencyCodeText : LargeString;
  InternalPricingProcedureCode : String(6);
  InternalPricingProcedureCodeText : LargeString;
  InternalPricingCalculationStatusCode : String(2);
  InternalPricingCalculationStatusCodeText : LargeString;
  NetWeightMeasure : Decimal(31, 14);
  NetWeightUnitCode : String(3);
  NetWeightUnitCodeText : LargeString;
  GrossWeightMeasure : Decimal(31, 14);
  GrossWeightUnitCode : String(3);
  GrossWeightUnitCodeText : LargeString;
  VolumeMeasure : Decimal(31, 14);
  VolumeUnitCode : String(3);
  VolumeUnitCodeText : LargeString;
  Simulate : Boolean;
  SubmitForApproval : Boolean;
  Transfer : Boolean;
  WithdrawFromApproval : Boolean;
  SetAsCompleted : Boolean;
  PlantPartyID : String(60);
  PlantPartyName : String(80);
  CreatedBy : String(480);
  LastChangedBy : String(480);
  CreationIdentityUUID : UUID;
  LastChangeIdentityUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  dataloader_KUT : String(120);
  @cds.ambiguous : 'missing on condition?'
  CustomerOrderAttachmentFolder : Association to many sap.c4c.CustomerOrderAttachmentFolderCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CustomerOrderBusinessTransactionDocumentReference : Association to many sap.c4c.CustomerOrderBusinessTransactionDocumentReferenceCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CustomerOrderCashDiscountTerms : Association to one sap.c4c.CustomerOrderCashDiscountTermsCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CustomerOrderExternalPriceComponent : Association to many sap.c4c.CustomerOrderExternalPriceComponentCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CustomerOrderItem : Association to many sap.c4c.CustomerOrderItemCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CustomerOrderParty : Association to many sap.c4c.CustomerOrderPartyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CustomerOrderPriceComponent : Association to many sap.c4c.CustomerOrderPriceComponentCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CustomerOrderRegisteredProduct : Association to many sap.c4c.CustomerOrderRegisteredProductCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CustomerOrderTextCollection : Association to many sap.c4c.CustomerOrderTextCollectionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesGroup : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesOffice : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesOrganisation : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesTerritory : Association to one sap.c4c.SalesTerritoryCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _BuyerParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _EmployeeResponsibleParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _BuyerContactParty : Association to one sap.c4c.ContactCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ProductRecipientParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesUnitParty : Association to one sap.c4c.OrganisationalUnitCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderInformationLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderClassificationCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderFulfilmentBlockingReasonCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderInvoicingBlockingReasonCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderOrderExternalLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderProcessingTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemListCancellationStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemListFulfilmentProcessingStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderApprovalStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderConsistencyStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderOverallBlockingStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderReplicationProcessingStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderDistributionChannelCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderDivisionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderDeliveryPriorityCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrdertimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderCancellationReasonCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderCalculationStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderPricingProcedureCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderOrderReasonCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderNetAmountCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderGrossAmountCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderTaxAmountCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderInternalPricingProcedureCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderInternalPricingCalculationStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderNetWeightUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderGrossWeightUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderVolumeUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  Description : String(40);
  languageCode : String(2);
  languageCodeText : LargeString;
  CreationDate : Date;
  ParentItemID : String(10);
  ID : String(10);
  ProcessingTypeCode : String(4);
  ProcessingTypeCodeText : LargeString;
  ProductID : String(60);
  ProductStandardID : String(14);
  ProductInternalID : String(40);
  Quantity : Decimal(31, 14);
  QuantityMeasureUnitCode : String(3);
  QuantityMeasureUnitCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  StartDateTime : Timestamp;
  TimeZoneCode : String(10);
  TimeZoneCodeText : LargeString;
  SalesTermsCancellationReasonCode : String(4);
  SalesTermsCancellationReasonCodeText : LargeString;
  MaintenanceModeInternalOnlyItemMainDiscount : Decimal(31, 14);
  ItemProductRecipientBusinessPartnerInternalID : String(60);
  BuyerID : String(10);
  ProductBuyerID : String(60);
  SalesOrderID : String(35);
  NetAmount : Decimal(28, 6);
  NetAmountCurrencyCode : String(3);
  NetAmountCurrencyCodeText : LargeString;
  NetPriceAmount : Decimal(28, 6);
  NetPriceAmountCurrencyCode : String(3);
  NetPriceAmountCurrencyCodeText : LargeString;
  TaxAmount : Decimal(28, 6);
  TaxAmountCurrencyCode : String(3);
  TaxAmountCurrencyCodeText : LargeString;
  NetWeightMeasure : Decimal(31, 14);
  NetWeightUnitCode : String(3);
  NetWeightUnitCodeText : LargeString;
  GrossWeightMeasure : Decimal(31, 14);
  GrossWeightUnitCode : String(3);
  GrossWeightUnitCodeText : LargeString;
  VolumeMeasure : Decimal(31, 14);
  VolumeUnitCode : String(3);
  VolumeUnitCodeText : LargeString;
  NetPriceBaseQuantity : Decimal(31, 14);
  NetPriceBaseQuantityunitCode : String(3);
  NetPriceBaseQuantityunitCodeText : LargeString;
  PlantPartyID : String(60);
  PlantName : String(80);
  LifeCycleStatusCode : String(2);
  LifeCycleStatusCodeText : LargeString;
  CancellationStatusCode : String(2);
  CancellationStatusCodeText : LargeString;
  FulfilmentProcessingStatusCode : String(2);
  FulfilmentProcessingStatusCodeText : LargeString;
  InvoiceProcessingStatusCode : String(2);
  InvoiceProcessingStatusCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  CustomerOrder : Association to one sap.c4c.CustomerOrderCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CustomerOrderFirstRequestedItemScheduleLine : Association to one sap.c4c.CustomerOrderFirstRequestedItemScheduleLineCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CustomerOrderItemAttachmentFolder : Association to many sap.c4c.CustomerOrderItemAttachmentFolderCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CustomerOrderItemBusinessTransactionDocumentReference : Association to many sap.c4c.CustomerOrderItemBusinessTransactionDocumentReferenceCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CustomerOrderItemExternalPriceComponent : Association to many sap.c4c.CustomerOrderItemExternalPriceComponentCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CustomerOrderItemParty : Association to many sap.c4c.CustomerOrderItemPartyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CustomerOrderItemPriceComponent : Association to many sap.c4c.CustomerOrderItemPriceComponentCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CustomerOrderItemTextCollection : Association to many sap.c4c.CustomerOrderItemTextCollectionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CustomerOrderItemTotalValuesPricingSubtotal : Association to many sap.c4c.CustomerOrderItemTotalValuesPricingSubtotalCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ParentItem : Association to one sap.c4c.CustomerOrderItemCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Product : Association to one sap.c4c.ProductCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ItemProductRecipientBusinessPartner : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemlanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemProcessingTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemQuantityMeasureUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemTimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemSalesTermsCancellationReasonCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemNetAmountCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemNetPriceAmountCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemTaxAmountCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemNetWeightUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemGrossWeightUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemVolumeUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemNetPriceBaseQuantityunitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemCancellationStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemFulfilmentProcessingStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemInvoiceProcessingStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderPartyCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  TimeZoneCode : String(10);
  TimeZoneCodeText : LargeString;
  PartyName : String(480);
  PartyID : String(60);
  RoleCode : String(10);
  RoleCodeText : LargeString;
  SalesOrderID : String(35);
  PreferredCommunicationMediumTypeCode : String(3);
  PreferredCommunicationMediumTypeCodeText : LargeString;
  MainIndicator : Boolean;
  ConventionalPhone : String(350);
  Email : String(765);
  Web : String(1280);
  Fax : String(350);
  MobilePhone : String(350);
  FirstLineName : String(240);
  SecondLineName : String(240);
  ThirdLineName : String(240);
  FourthLineName : String(240);
  CareOfName : String(240);
  CityName : String(240);
  CountryCode : String(3);
  CountryCodeText : LargeString;
  CountyName : String(240);
  DistrictName : String(240);
  StreetPrefixName : String(240);
  AdditionalStreetPrefixName : String(240);
  HouseID : String(100);
  StreetName : String(360);
  StreetSuffixName : String(240);
  AdditionalStreetSuffixName : String(240);
  RegionCode : String(6);
  RegionCodeText : LargeString;
  StreetPostalCode : String(100);
  POBoxIndicator : Boolean;
  POBoxID : String(100);
  POBoxPostalCode : String(100);
  POBoxDeviatingCityName : String(240);
  POBoxDeviatingCountryCode : String(3);
  POBoxDeviatingCountryCodeText : LargeString;
  POBoxDeviatingRegionCode : String(6);
  POBoxDeviatingRegionCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  CustomerOrder : Association to one sap.c4c.CustomerOrderCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CustomerOrderPartyContactParty : Association to many sap.c4c.CustomerOrderPartyContactPartyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderPartyTimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderPartyRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderPartyPreferredCommunicationMediumTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderPartyCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderPartyRegionCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderPartyPOBoxDeviatingCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderPartyPOBoxDeviatingRegionCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderPartyContactPartyCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  PartyID : String(60);
  SalesOrderID : String(35);
  MainIndicator : Boolean;
  ContactPartyID : String(60);
  PreferredCommunicationMediumTypeCode : String(3);
  PreferredCommunicationMediumTypeCodeText : LargeString;
  ConventionalPhone : String(350);
  Email : String(765);
  Fax : String(350);
  Mobile : String(350);
  Web : String(1280);
  ContactPartyName : String(480);
  FirstLineName : String(240);
  SecondLineName : String(240);
  ThirdLineName : String(240);
  TimeZoneCode : String(10);
  TimeZoneCodeText : LargeString;
  FourthLineName : String(240);
  CountryCode : String(3);
  CountryCodeText : LargeString;
  CareOfName : String(240);
  StreetPrefixName : String(240);
  AdditionalStreetPrefixName : String(240);
  HouseID : String(100);
  StreetName : String(360);
  StreetSuffixName : String(240);
  AdditionalStreetSuffixName : String(240);
  CityName : String(240);
  RegionCode : String(6);
  RegionCodeText : LargeString;
  StreetPostalCode : String(100);
  DistrictName : String(240);
  CountyName : String(240);
  POBoxIndicator : Boolean;
  POBoxID : String(100);
  POBoxPostalCode : String(100);
  POBoxDeviatingCityName : String(240);
  POBoxDeviatingCountryCode : String(3);
  POBoxDeviatingCountryCodeText : LargeString;
  POBoxDeviatingRegionCode : String(6);
  POBoxDeviatingRegionCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  CustomerOrder : Association to one sap.c4c.CustomerOrderCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CustomerOrderParty : Association to one sap.c4c.CustomerOrderPartyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ContactParty : Association to one sap.c4c.ContactCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderPartyContactPartyPreferredCommunicationMediumTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderPartyContactPartyTimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderPartyContactPartyCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderPartyContactPartyRegionCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderPartyContactPartyPOBoxDeviatingCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderPartyContactPartyPOBoxDeviatingRegionCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderTextCollectionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  SalesOrderID : String(35);
  Text : LargeString;
  LanguageCode : String(2);
  LanguageCodeText : LargeString;
  TypeCode : String(5);
  TypeCodeText : LargeString;
  AuthorName : String(40);
  AuthorUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  UpdatedOn : Timestamp;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  CustomerOrder : Association to one sap.c4c.CustomerOrderCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderTextCollectionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderTextCollectionTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderAttachmentFolderCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  Binary : LargeBinary;
  CategoryCode : String(1);
  CategoryCodeText : LargeString;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  DocumentLink : LargeString;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastUpdatedOn : Timestamp;
  LinkWebURI : LargeString;
  MimeType : LargeString;
  Name : LargeString;
  ParentObjectID : String(70);
  SalesOrderID : String(35);
  SizeInkB : Decimal(31, 14);
  TypeCode : String(5);
  TypeCodeText : LargeString;
  UUID : UUID;
  @cds.ambiguous : 'missing on condition?'
  _SalesOrder : Association to one sap.c4c.CustomerOrderCollection on _SalesOrder.ObjectID = ParentObjectID;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderAttachmentFolderCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderAttachmentFolderTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemTextCollectionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  Text : LargeString;
  LanguageCode : String(2);
  LanguageCodeText : LargeString;
  TypeCode : String(5);
  TypeCodeText : LargeString;
  AuthorName : String(40);
  AuthorUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  UpdatedOn : Timestamp;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  SalesOrderItemID : String(10);
  SalesOrderID : String(35);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  CustomerOrderItem : Association to one sap.c4c.CustomerOrderItemCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesOrder : Association to one sap.c4c.CustomerOrderCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemTextCollectionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemTextCollectionTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemPartyCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  Web : String(1280);
  MobilePhone : String(350);
  Fax : String(350);
  Email : String(765);
  ConventionalPhone : String(350);
  SalesOrderID : String(35);
  ID : String(10);
  PreferredCommunicationMediumTypeCode : String(3);
  PreferredCommunicationMediumTypeCodeText : LargeString;
  PartyID : String(60);
  RoleCode : String(10);
  RoleCodeText : LargeString;
  TimeZoneCode : String(10);
  TimeZoneCodeText : LargeString;
  StreetSuffixName : String(240);
  StreetPrefixName : String(240);
  StreetName : String(360);
  FirstLineName : String(240);
  FourthLineName : String(240);
  SecondLineName : String(240);
  ThirdLineName : String(240);
  CareOfName : String(240);
  CityName : String(240);
  CountryCode : String(3);
  CountryCodeText : LargeString;
  CountyName : String(240);
  HouseID : String(100);
  AdditionalStreetPrefixName : String(240);
  AdditionalStreetSuffixName : String(240);
  POBoxDeviatingCityName : String(240);
  POBoxDeviatingCountryCode : String(3);
  POBoxDeviatingCountryCodeText : LargeString;
  POBoxDeviatingRegionCode : String(6);
  POBoxDeviatingRegionCodeText : LargeString;
  POBoxID : String(100);
  POBoxIndicator : Boolean;
  POBoxPostalCode : String(100);
  RegionCode : String(6);
  RegionCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  CustomerOrder : Association to one sap.c4c.CustomerOrderCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CustomerOrderItem : Association to one sap.c4c.CustomerOrderItemCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CustomerOrderItemPartyContactParty : Association to many sap.c4c.CustomerOrderItemPartyContactPartyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemPartyPreferredCommunicationMediumTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemPartyRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemPartyTimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemPartyCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemPartyPOBoxDeviatingCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemPartyPOBoxDeviatingRegionCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemPartyRegionCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderFirstRequestedItemScheduleLineCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ID : String(4);
  Quantity : Decimal(31, 14);
  unitCode : String(3);
  unitCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EndDateTime : Timestamp;
  EndDateTimeZoneCode : String(10);
  EndDateTimeZoneCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  StartDateTime : Timestamp;
  StartDateTimeZoneCode : String(10);
  StartDateTimeZoneCodeText : LargeString;
  ItemLine : String(10);
  SalesOrderID : String(35);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  CustomerOrder : Association to one sap.c4c.CustomerOrderCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CustomerOrderItem : Association to one sap.c4c.CustomerOrderItemCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderFirstRequestedItemScheduleLineunitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderFirstRequestedItemScheduleLineEndDateTimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderFirstRequestedItemScheduleLineStartDateTimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderBusinessTransactionDocumentReferenceCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  BusinessSystemID : String(32);
  TypeCode : String(15);
  TypeCodeText : LargeString;
  UUID : UUID;
  RoleCode : String(3);
  RoleCodeText : LargeString;
  ID : String(35);
  SalesOrderID : String(35);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  CustomerOrder : Association to one sap.c4c.CustomerOrderCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderBusinessTransactionDocumentReferenceTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderBusinessTransactionDocumentReferenceRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderCashDiscountTermsCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  Code : String(4);
  CodeText : LargeString;
  SalesOrderID : String(35);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  CustomerOrder : Association to one sap.c4c.CustomerOrderCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderCashDiscountTermsCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemBusinessTransactionDocumentReferenceCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  BusinessTransactionDocumentRelationshipRoleCode : String(3);
  BusinessTransactionDocumentRelationshipRoleCodeText : LargeString;
  ItemID : String(10);
  ItemTypeCode : String(5);
  ItemTypeCodeText : LargeString;
  ItemUUID : UUID;
  TypeCode : String(15);
  TypeCodeText : LargeString;
  UUID : UUID;
  LineItemID : String(10);
  SalesOrderID : String(35);
  ID : String(35);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  CustomerOrder : Association to one sap.c4c.CustomerOrderCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CustomerOrderItem : Association to one sap.c4c.CustomerOrderItemCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemBusinessTransactionDocumentReferenceBusinessTransactionDocumentRelationshipRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemBusinessTransactionDocumentReferenceItemTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemBusinessTransactionDocumentReferenceTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemTotalValuesPricingSubtotalCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  Amount : Decimal(28, 6);
  CurrencyCode : String(3);
  CurrencyCodeText : LargeString;
  TypeCode : String(2);
  TypeCodeText : LargeString;
  LineItemID : String(10);
  SalesOrderID : String(35);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  CustomerOrder : Association to one sap.c4c.CustomerOrderCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CustomerOrderItem : Association to one sap.c4c.CustomerOrderItemCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemTotalValuesPricingSubtotalCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemTotalValuesPricingSubtotalTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemPartyContactPartyCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  StreetName : String(360);
  StreetPrefixName : String(240);
  StreetSuffixName : String(240);
  TimeZoneCode : String(10);
  TimeZoneCodeText : LargeString;
  MainIndicator : Boolean;
  ContactPartyID : String(60);
  ItemPartyID : String(60);
  LineItemID : String(10);
  SalesOrderID : String(35);
  PreferredCommunicationMediumTypeCode : String(3);
  PreferredCommunicationMediumTypeCodeText : LargeString;
  ContactPartyName : String(480);
  ConventionalPhone : String(350);
  Email : String(765);
  Fax : String(350);
  MobilePhone : String(350);
  Web : String(1280);
  FirstLineName : String(240);
  SecondLineName : String(240);
  ThirdLineName : String(240);
  FourthLineName : String(240);
  CareOfName : String(240);
  CityName : String(240);
  AdditionalStreetPrefixName : String(240);
  AdditionalStreetSuffixName : String(240);
  CountryCode : String(3);
  CountryCodeText : LargeString;
  CountyName : String(240);
  DistrictName : String(240);
  HouseID : String(100);
  POBoxDeviatingCityName : String(240);
  POBoxDeviatingCountryCode : String(3);
  POBoxDeviatingCountryCodeText : LargeString;
  POBoxDeviatingRegionCode : String(6);
  POBoxDeviatingRegionCodeText : LargeString;
  POBoxID : String(100);
  POBoxIndicator : Boolean;
  POBoxPostalCode : String(100);
  RegionCode : String(6);
  RegionCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  CustomerOrder : Association to one sap.c4c.CustomerOrderCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CustomerOrderItemParty : Association to one sap.c4c.CustomerOrderItemPartyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ContactParty : Association to one sap.c4c.ContactCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemPartyContactPartyTimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemPartyContactPartyPreferredCommunicationMediumTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemPartyContactPartyCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemPartyContactPartyPOBoxDeviatingCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemPartyContactPartyPOBoxDeviatingRegionCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemPartyContactPartyRegionCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemAttachmentFolderCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  Binary : LargeBinary;
  CategoryCode : String(1);
  CategoryCodeText : LargeString;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  DocumentLink : LargeString;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastUpdatedOn : Timestamp;
  LinkWebURI : LargeString;
  MimeType : LargeString;
  Name : LargeString;
  ParentObjectID : String(70);
  SizeInkB : Decimal(31, 14);
  TypeCode : String(5);
  TypeCodeText : LargeString;
  UUID : UUID;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemAttachmentFolderCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemAttachmentFolderTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderExternalPriceComponentCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  SalesOrderID : String(35);
  TypeCode : String(4);
  TypeCodeText : LargeString;
  MajorLevelOrdinalNumberValue : Integer;
  MinorLevelOrdinalNumberValue : Integer;
  CategoryCode : String(1);
  CategoryCodeText : LargeString;
  RateDecimalValue : Decimal(31, 14);
  RateCurrencyCode : String(3);
  RateCurrencyCodeText : LargeString;
  RateMeasureUnitCode : String(3);
  RateMeasureUnitCodeText : LargeString;
  RateBaseDecimalValue : Decimal(31, 14);
  RateBaseMeasureUnitCode : String(3);
  RateBaseMeasureUnitCodeText : LargeString;
  CalculatedAmount : Decimal(28, 6);
  CalculatedAmountCurrencyCode : String(3);
  CalculatedAmountCurrencyCodeText : LargeString;
  EffectiveIndicator : Boolean;
  ManuallyChangedIndicator : Boolean;
  InactivityReasonCode : String(2);
  InactivityReasonCodeText : LargeString;
  OriginCode : String(2);
  OriginCodeText : LargeString;
  SalesOrderNodeID : String(70);
  Description : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  _SalesOrder : Association to one sap.c4c.CustomerOrderCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderExternalPriceComponentTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderExternalPriceComponentCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderExternalPriceComponentRateCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderExternalPriceComponentRateMeasureUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderExternalPriceComponentRateBaseMeasureUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderExternalPriceComponentCalculatedAmountCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderExternalPriceComponentInactivityReasonCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderExternalPriceComponentOriginCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemExternalPriceComponentCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  SalesOrderID : String(35);
  SalesOrderItemID : String(10);
  ProductID : String(40);
  TypeCode : String(4);
  TypeCodeText : LargeString;
  MajorLevelOrdinalNumberValue : Integer;
  MinorLevelOrdinalNumberValue : Integer;
  CategoryCode : String(1);
  CategoryCodeText : LargeString;
  RateDecimalValue : Decimal(31, 14);
  RateCurrencyCode : String(3);
  RateCurrencyCodeText : LargeString;
  RateMeasureUnitCode : String(3);
  RateMeasureUnitCodeText : LargeString;
  RateBaseDecimalValue : Decimal(31, 14);
  RateBaseMeasureUnitCode : String(3);
  RateBaseMeasureUnitCodeText : LargeString;
  CalculatedAmount : Decimal(28, 6);
  CalculatedAmountCurrencyCode : String(3);
  CalculatedAmountCurrencyCodeText : LargeString;
  EffectiveIndicator : Boolean;
  ManuallyChangedIndicator : Boolean;
  InactivityReasonCode : String(2);
  InactivityReasonCodeText : LargeString;
  OriginCode : String(2);
  OriginCodeText : LargeString;
  SalesOrderNodeID : String(70);
  SalesOrderItemNodeID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  _SalesOrder : Association to one sap.c4c.CustomerOrderCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesOrderItem : Association to one sap.c4c.CustomerOrderItemCollection on _SalesOrderItem.ObjectID = ParentObjectID;
  @cds.ambiguous : 'missing on condition?'
  _Product : Association to one sap.c4c.ProductCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemExternalPriceComponentTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemExternalPriceComponentCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemExternalPriceComponentRateCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemExternalPriceComponentRateMeasureUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemExternalPriceComponentRateBaseMeasureUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemExternalPriceComponentCalculatedAmountCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemExternalPriceComponentInactivityReasonCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemExternalPriceComponentOriginCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderPriceComponentCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  SalesOrderID : String(35);
  TypeCode : String(4);
  TypeCodeText : LargeString;
  Description : String(40);
  MajorLevelOrdinalNumberValue : Integer;
  MinorLevelOrdinalNumberValue : Integer;
  CategoryCode : String(1);
  CategoryCodeText : LargeString;
  RateDecimalValue : Decimal(31, 14);
  RateCurrencyCode : String(3);
  RateCurrencyCodeText : LargeString;
  RateMeasureUnitCode : String(3);
  RateMeasureUnitCodeText : LargeString;
  RateBaseDecimalValue : Decimal(31, 14);
  RateBaseMeasureUnitCode : String(3);
  RateBaseMeasureUnitCodeText : LargeString;
  CalculatedAmount : Decimal(28, 6);
  CalculatedAmountCurrencyCode : String(3);
  CalculatedAmountCurrencyCodeText : LargeString;
  EffectiveIndicator : Boolean;
  InactivityReasonCode : String(2);
  InactivityReasonCodeText : LargeString;
  ManuallyChangedIndicator : Boolean;
  OriginCode : String(2);
  OriginCodeText : LargeString;
  SalesOrderNodeID : String(70);
  @cds.ambiguous : 'missing on condition?'
  _SalesOrder : Association to one sap.c4c.CustomerOrderCollection on _SalesOrder.ObjectID = ParentObjectID;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderPriceComponentTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderPriceComponentCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderPriceComponentRateCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderPriceComponentRateMeasureUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderPriceComponentRateBaseMeasureUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderPriceComponentCalculatedAmountCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderPriceComponentInactivityReasonCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderPriceComponentOriginCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemPriceComponentCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  SalesOrderID : String(35);
  SalesOrderItemID : String(10);
  ProductID : String(40);
  TypeCode : String(4);
  TypeCodeText : LargeString;
  Description : String(40);
  MajorLevelOrdinalNumberValue : Integer;
  MinorLevelOrdinalNumberValue : Integer;
  CategoryCode : String(1);
  CategoryCodeText : LargeString;
  RateDecimalValue : Decimal(31, 14);
  RateCurrencyCode : String(3);
  RateCurrencyCodeText : LargeString;
  RateMeasureUnitCode : String(3);
  RateMeasureUnitCodeText : LargeString;
  RateBaseDecimalValue : Decimal(31, 14);
  RateBaseMeasureUnitCode : String(3);
  RateBaseMeasureUnitCodeText : LargeString;
  CalculatedAmount : Decimal(28, 6);
  CalculatedAmountCurrencyCode : String(3);
  CalculatedAmountCurrencyCodeText : LargeString;
  EffectiveIndicator : Boolean;
  InactivityReasonCode : String(2);
  InactivityReasonCodeText : LargeString;
  ManuallyChangedIndicator : Boolean;
  OriginCode : String(2);
  OriginCodeText : LargeString;
  SalesOrderNodeID : String(70);
  SalesOrderItemNodeID : String(70);
  @cds.ambiguous : 'missing on condition?'
  _SalesOrder : Association to one sap.c4c.CustomerOrderCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesOrderItem : Association to one sap.c4c.CustomerOrderItemCollection on _SalesOrderItem.ObjectID = ParentObjectID;
  @cds.ambiguous : 'missing on condition?'
  _Product : Association to one sap.c4c.ProductCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemPriceComponentTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemPriceComponentCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemPriceComponentRateCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemPriceComponentRateMeasureUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemPriceComponentRateBaseMeasureUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemPriceComponentCalculatedAmountCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemPriceComponentInactivityReasonCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderItemPriceComponentOriginCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CustomerOrderRegisteredProductCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  IndividualProductSerialID : String(30);
  InstallationPointID : String(40);
  InstalledBaseID : String(40);
  MainIndicator : Boolean;
  ProductInternalID : String(40);
  ProductDescription : String(40);
  ParentInstallationPointID : String(40);
  InstalledBaseDescription : String(40);
  ParentInstallationPointIndividualProductDescription : String(40);
  InstallationPointDescription : String(40);
  SalesOrderID : String(35);
  @cds.ambiguous : 'missing on condition?'
  CustomerOrder : Association to one sap.c4c.CustomerOrderCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _InstallationPoint : Association to one sap.c4c.InstallationPointCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _InstalledBase : Association to one sap.c4c.InstalledBaseCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Product : Association to one sap.c4c.ProductCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ParentInstallationPoint : Association to one sap.c4c.InstallationPointCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.BusinessPartnerRelationshipCollection {
  key ObjectID : String(70);
  RelationshipType : String(16);
  RelationshipTypeText : LargeString;
  FirstBusinessPartnerID : String(10);
  SecondBusinessPartnerID : String(10);
  MainIndicator : Boolean;
  SalesOrganisationID : String(20);
  DistributionChannelCode : String(2);
  DistributionChannelCodeText : LargeString;
  DivisionCode : String(2);
  DivisionCodeText : LargeString;
  BuyingCenterAttitude : String(1);
  BuyingCenterAttitudeText : LargeString;
  BuyingCenterFrequencyOfInteraction : String(1);
  BuyingCenterFrequencyOfInteractionText : LargeString;
  BuyingCenterLevelOfInfluence : Decimal(16, 6);
  BuyingCenterNotes : String(255);
  BuyingCenterStrengthOfInfluence : String(1);
  BuyingCenterStrengthOfInfluenceText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreationOn : Timestamp;
  CreatedBy : String(480);
  CreatedByIdentityUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ChangedOn : Timestamp;
  ChangedBy : String(480);
  ChangedByIdentityUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  BusinessPartnerRelationshipCompetitorProduct : Association to many sap.c4c.BusinessPartnerRelationshipCompetitorProductCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _FirstBusinessPartner : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SecondBusinessPartner : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesOrganisation : Association to one sap.c4c.OrganisationalUnitCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.BusinessPartnerRelationshipRelationshipTypeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.BusinessPartnerRelationshipDistributionChannelCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.BusinessPartnerRelationshipDivisionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.BusinessPartnerRelationshipBuyingCenterAttitudeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.BusinessPartnerRelationshipBuyingCenterFrequencyOfInteractionCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.BusinessPartnerRelationshipBuyingCenterStrengthOfInfluenceCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.BusinessPartnerRelationshipCompetitorProductCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  AccountID : String(10);
  CompetitorID : String(10);
  CompetitorProductUUID : UUID;
  CompetitorProductID : String(40);
  @cds.ambiguous : 'missing on condition?'
  BusinessPartnerRelationship : Association to one sap.c4c.BusinessPartnerRelationshipCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CompetitorProduct : Association to one sap.c4c.CompetitorProductCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Account : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Competitor : Association to one sap.c4c.CompetitorCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.PromotionCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  AccountType : String(2);
  AccountTypeText : LargeString;
  Currency : String(3);
  CurrencyText : LargeString;
  ID : String(35);
  Name : String(40);
  Objective : String(4);
  ObjectiveText : LargeString;
  Priority : String(1);
  PriorityText : LargeString;
  ProductPlanningBasisCode : String(3);
  ProductPlanningBasisCodeText : LargeString;
  PromotionType : String(4);
  PromotionTypeText : LargeString;
  ConsistencyStatusCode : String(2);
  ConsistencyStatusCodeText : LargeString;
  ExternalStatusCode : String(5);
  ExternalStatusCodeText : LargeString;
  LifeCycleStatusCode : String(2);
  LifeCycleStatusCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreationDate : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastChangeDate : Timestamp;
  Tactic : String(4);
  TacticText : LargeString;
  PlannigAccountName : String(480);
  PlanningAccountID : String(60);
  PlanPeriodStartDate : Date;
  @odata.precision : 0
  @odata.type : 'Edm.DateTimeOffset'
  PlanPeriodEndDate : DateTime;
  BuyingPeriodStartDate : Date;
  @odata.precision : 0
  @odata.type : 'Edm.DateTimeOffset'
  BuyingPeriodEndDate : DateTime;
  EmployeeResponsible : String(480);
  EmployeeResposibleID : String(60);
  SalesUnitOrganisationCentreID : String(60);
  SalesUnitOrganisationCentreName : String(480);
  SalesOrganisationID : String(20);
  SalesOrganisationName : String(40);
  DistributionChannelCode : String(2);
  DistributionChannelCodeText : LargeString;
  DivisionCode : String(2);
  DivisionCodeText : LargeString;
  SalesTerritoryID : String(6);
  SalesTerritoryName : String(40);
  ActualPeriodStartDate : Date;
  ActualPeriodEndDate : Date;
  Campaign : String(35);
  CampaignDescription : String(80);
  TargetGroupID : String(10);
  TargetGroupDescription : String(80);
  ExternalID : String(35);
  InformationLifeCycleStatusCode : String(2);
  InformationLifeCycleStatusCodeText : LargeString;
  Cancel : Boolean;
  RevokeCancellation : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  PromotionAttachmentFolder : Association to many sap.c4c.PromotionAttachmentFolderCollection {  };
  @cds.ambiguous : 'missing on condition?'
  PromotionParty : Association to many sap.c4c.PromotionPartyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  PromotionProduct : Association to many sap.c4c.PromotionProductCollection {  };
  @cds.ambiguous : 'missing on condition?'
  PromotionProductCategory : Association to many sap.c4c.PromotionProductCategoryCollection {  };
  @cds.ambiguous : 'missing on condition?'
  PromotionProductGroup : Association to many sap.c4c.PromotionProductGroupCollection {  };
  @cds.ambiguous : 'missing on condition?'
  PromotionTextCollection : Association to many sap.c4c.PromotionTextCollectionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  PromotionTradeSpend : Association to many sap.c4c.PromotionTradeSpendCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _PlanningAccount : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _EmployeeResposible : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesUnitOrganisationCentre : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesOrganisation : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesTerritory : Association to one sap.c4c.SalesTerritoryCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _TargetGroup : Association to one sap.c4c.TargetGroupCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.PromotionAccountTypeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PromotionCurrencyCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PromotionObjectiveCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PromotionPriorityCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PromotionProductPlanningBasisCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PromotionPromotionTypeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PromotionConsistencyStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PromotionExternalStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PromotionLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PromotionTacticCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PromotionDistributionChannelCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PromotionDivisionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PromotionInformationLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PromotionPartyCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  ID : String(60);
  RoleCode : String(10);
  RoleCodeText : LargeString;
  Name : String(480);
  MainIndicator : Boolean;
  @cds.ambiguous : 'missing on condition?'
  Promotion : Association to one sap.c4c.PromotionCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.PromotionPartyRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PromotionProductCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  ID : String(60);
  Description : String(40);
  UnitCode : String(10);
  UnitCodeText : LargeString;
  EffectiveFrom : Date;
  EffectiveTo : Date;
  ExcludeIndicator : Boolean;
  @cds.ambiguous : 'missing on condition?'
  Promotion : Association to one sap.c4c.PromotionCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.PromotionProductUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PromotionProductCategoryCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  ID : String(20);
  Name : String(80);
  UnitCode : String(10);
  UnitCodeText : LargeString;
  EffectiveFrom : Date;
  EffectiveTo : Date;
  ExcludeIndicator : Boolean;
  @cds.ambiguous : 'missing on condition?'
  Promotion : Association to one sap.c4c.PromotionCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.PromotionProductCategoryUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PromotionProductGroupCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  ID : String(4);
  IDText : LargeString;
  UnitCode : String(10);
  UnitCodeText : LargeString;
  EffectiveFrom : Date;
  EffectiveTo : Date;
  ExcludeIndicator : Boolean;
  @cds.ambiguous : 'missing on condition?'
  Promotion : Association to one sap.c4c.PromotionCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.PromotionProductGroupIDCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PromotionProductGroupUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PromotionTradeSpendCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  OffInvoiceCappingPriceAmount : Decimal(28, 6);
  OffInvoiceCappingPriceCurrencyCode : String(3);
  OffInvoiceCappingPriceCurrencyCodeText : LargeString;
  StartDate : Date;
  EndDate : Date;
  RelatedVolume : String(4);
  RelatedVolumeText : LargeString;
  PricingPercent : Decimal(16, 6);
  TakeRatePercent : Decimal(16, 6);
  SpendTypeCode : String(4);
  SpendTypeCodeText : LargeString;
  SpendCategory : String(30);
  SpendCategoryText : LargeString;
  SpendMethod : String(10);
  SpendMethodText : LargeString;
  PriceAmount : Decimal(28, 6);
  PriceCurrencyCode : String(3);
  PriceCurrencyCodeText : LargeString;
  @cds.ambiguous : 'missing on condition?'
  Promotion : Association to one sap.c4c.PromotionCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.PromotionTradeSpendOffInvoiceCappingPriceCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PromotionTradeSpendRelatedVolumeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PromotionTradeSpendSpendTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PromotionTradeSpendSpendCategoryCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PromotionTradeSpendSpendMethodCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PromotionTradeSpendPriceCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PromotionAttachmentFolderCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  Binary : LargeBinary;
  CategoryCode : String(1);
  CategoryCodeText : LargeString;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  DocumentLink : LargeString;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastUpdatedOn : Timestamp;
  LinkWebURI : LargeString;
  MimeType : LargeString;
  Name : LargeString;
  ParentObjectID : String(70);
  PromotionID : String(35);
  SizeInkB : Decimal(31, 14);
  TypeCode : String(5);
  TypeCodeText : LargeString;
  UUID : UUID;
  @cds.ambiguous : 'missing on condition?'
  _Promotion : Association to one sap.c4c.PromotionCollection on _Promotion.ObjectID = ParentObjectID;
};

@cds.persistence.skip : true
entity sap.c4c.PromotionAttachmentFolderCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PromotionAttachmentFolderTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PromotionTextCollectionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  PromotionID : String(35);
  Text : LargeString;
  LanguageCode : String(2);
  LanguageCodeText : LargeString;
  TypeCode : String(5);
  TypeCodeText : LargeString;
  AuthorName : String(40);
  AuthorUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  UpdatedOn : Timestamp;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Promotion : Association to one sap.c4c.PromotionCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.PromotionTextCollectionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PromotionTextCollectionTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeanInvoiceCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  AccountPartyID : String(60);
  AccountPartyName : String(480);
  CreationDate : Date;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreationDateTime : Timestamp;
  DistributionChannelCode : String(2);
  DivisionCode : String(2);
  DueAmount : Decimal(28, 6);
  DueAmountCurrencyCode : String(3);
  ID : String(35);
  InvoiceAmount : Decimal(28, 6);
  InvoiceAmountCurrencyCode : String(3);
  InvoiceInformationLifeCycleStatusCode : String(2);
  InvoicePaymentStatusCode : String(2);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastChangeDateTime : Timestamp;
  Name : String(255);
  PaidAmount : Decimal(28, 6);
  PaidAmountCurrencyCode : String(3);
  PayerPartyID : String(60);
  PayerPartyName : String(480);
  SalesOrganisationID : String(20);
  SalesOrganisationName : String(40);
  TypeCode : String(15);
  @cds.ambiguous : 'missing on condition?'
  LeanInvoiceAttachmentFolder : Association to many sap.c4c.LeanInvoiceAttachmentFolderCollection {  };
  @cds.ambiguous : 'missing on condition?'
  LeanInvoiceBusinessTransactionDocumentReference : Association to many sap.c4c.LeanInvoiceBusinessTransactionDocumentReferenceCollection {  };
  @cds.ambiguous : 'missing on condition?'
  LeanInvoiceParty : Association to many sap.c4c.LeanInvoicePartyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  LeanInvoiceTextCollection : Association to many sap.c4c.LeanInvoiceTextCollectionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _AccountParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _PayerParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesOrganisation : Association to one sap.c4c.OrganisationalUnitCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.LeanInvoiceDistributionChannelCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeanInvoiceDivisionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeanInvoiceDueAmountCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeanInvoiceInvoiceAmountCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeanInvoiceInvoiceInformationLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeanInvoiceInvoicePaymentStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeanInvoicePaidAmountCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeanInvoiceTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeanInvoiceAttachmentFolderCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  Binary : LargeBinary;
  CategoryCode : String(1);
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  DocumentLink : LargeString;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastUpdatedOn : Timestamp;
  LeanInvoiceBusinessTransactionDocumentID : String(35);
  LinkWebURI : LargeString;
  MimeType : LargeString;
  Name : LargeString;
  ParentObjectID : String(70);
  SizeInkB : Decimal(31, 14);
  TypeCode : String(5);
  UUID : UUID;
  @cds.ambiguous : 'missing on condition?'
  _LeanInvoiceBusinessTransactionDocument : Association to one sap.c4c.LeanInvoiceCollection on _LeanInvoiceBusinessTransactionDocument.ObjectID = ParentObjectID;
};

@cds.persistence.skip : true
entity sap.c4c.LeanInvoiceAttachmentFolderCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeanInvoiceAttachmentFolderTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeanInvoiceBusinessTransactionDocumentReferenceCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  ID : String(35);
  InvoiceAmountPaid : Decimal(28, 6);
  InvoiceAmountPaidCurrencyCode : String(3);
  ParentObjectID : String(70);
  TypeCode : String(15);
  UUID : UUID;
  @cds.ambiguous : 'missing on condition?'
  LeanInvoice : Association to one sap.c4c.LeanInvoiceCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.LeanInvoiceBusinessTransactionDocumentReferenceInvoiceAmountPaidCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeanInvoiceBusinessTransactionDocumentReferenceTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeanInvoicePartyCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  Address : String(480);
  ID : String(60);
  MainIndicator : Boolean;
  Name : String(480);
  ParentObjectID : String(70);
  Phone : String(350);
  RoleCode : String(10);
  URI : String(765);
  @cds.ambiguous : 'missing on condition?'
  LeanInvoice : Association to one sap.c4c.LeanInvoiceCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.LeanInvoicePartyRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeanInvoiceTextCollectionCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  AuthorName : String(40);
  AuthorUUID : UUID;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  LanguageCode : String(2);
  LastUpdatedBy : String(80);
  LeanInvoiceBusinessTransactionDocumentID : String(35);
  ParentObjectID : String(70);
  Text : LargeString;
  TypeCode : String(5);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  UpdatedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  _LeanInvoiceBusinessTransactionDocument : Association to one sap.c4c.LeanInvoiceCollection on _LeanInvoiceBusinessTransactionDocument.ObjectID = ParentObjectID;
};

@cds.persistence.skip : true
entity sap.c4c.LeanInvoiceTextCollectionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeanInvoiceTextCollectionTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.MeasurementPointCollection {
  key ObjectID : String(70);
  Counter : Boolean;
  ID : String(35);
  Description : String(40);
  LanguageCode : String(2);
  LanguageCodeText : LargeString;
  MeasurementAttributeID : String(30);
  InstallationPointID : String(40);
  Template : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  _MeasurementAttribute : Association to one sap.c4c.MeasurementDocumentCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _InstallationPoint : Association to one sap.c4c.InstallationPointCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.MeasurementPointLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.MeasurementDocumentCollection {
  key ObjectID : String(70);
  ID : String(35);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  MeasuredOn : Timestamp;
  MeasuredValue : Decimal(31, 14);
  MeasurementPointID : String(35);
  Description : String(40);
  LanguageCode : String(2);
  LanguageCodeText : LargeString;
  InstallationPointID : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  _MeasurementPoint : Association to one sap.c4c.MeasurementPointCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _InstallationPoint : Association to one sap.c4c.InstallationPointCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.MeasurementDocumentLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteCollection {
  key ObjectID : String(70);
  ID : String(35);
  BuyerID : String(35);
  Name : String(255);
  ProcessingTypeCode : String(4);
  ProcessingTypeCodeText : LargeString;
  BuyerPartyID : String(60);
  BuyerPartyName : String(480);
  BuyerContactPartyID : String(60);
  BuyerContactPartyName : String(480);
  ProductRecipientPartyID : String(60);
  ProductRecipientPartyName : String(480);
  EmployeeResponsiblePartyID : String(60);
  EmployeeResponsiblePartyName : String(480);
  SalesUnitPartyID : String(60);
  SalesUnitPartyName : String(480);
  SalesOrganisationID : String(20);
  SalesOrganisationName : String(40);
  SalesOfficeID : String(20);
  SalesOfficeName : String(40);
  SalesGroupID : String(20);
  SalesGroupName : String(40);
  DistributionChannelCode : String(2);
  DistributionChannelCodeText : LargeString;
  DivisionCode : String(2);
  DivisionCodeText : LargeString;
  SalesTerritoryID : String(6);
  SalesTerritoryName : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  DateTime : Timestamp;
  RequestedFulfillmentStartDateTime : String(33);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  PriceDateTime : Timestamp;
  TimeZoneCode : String(10);
  TimeZoneCodeText : LargeString;
  ValidFromDate : Date;
  ValidToDate : Date;
  CurrencyCode : String(3);
  CurrencyCodeText : LargeString;
  DocumentLanguageCode : String(2);
  DocumentLanguageCodeText : LargeString;
  DeliveryPriorityCode : String(2);
  DeliveryPriorityCodeText : LargeString;
  IncotermsClassificationCode : String(3);
  IncotermsClassificationCodeText : LargeString;
  IncotermsTransferLocationName : String(28);
  ProbabilityPercent : Decimal(5, 2);
  CancellationReasonCode : String(4);
  CancellationReasonCodeText : LargeString;
  OrderReasonCode : String(3);
  OrderReasonCodeText : LargeString;
  MainDiscount : Decimal(31, 14);
  NetAmount : Decimal(28, 6);
  NetAmountCurrencyCode : String(3);
  NetAmountCurrencyCodeText : LargeString;
  GrossAmount : Decimal(28, 6);
  GrossAmountCurrencyCode : String(3);
  GrossAmountCurrencyCodeText : LargeString;
  TaxAmount : Decimal(28, 6);
  TaxAmountCurrencyCode : String(3);
  TaxAmountCurrencyCodeText : LargeString;
  CashDiscountTermsCode : String(4);
  CashDiscountTermsCodeText : LargeString;
  ConfirmationExistenceIndicator : Boolean;
  ConsistencyStatusCode : String(2);
  ConsistencyStatusCodeText : LargeString;
  LifeCycleStatusCode : String(2);
  LifeCycleStatusCodeText : LargeString;
  CancellationStatusCode : String(2);
  CancellationStatusCodeText : LargeString;
  ResultStatusCode : String(2);
  ResultStatusCodeText : LargeString;
  ApprovalStatusCode : String(2);
  ApprovalStatusCodeText : LargeString;
  OrderingStatusCode : String(2);
  OrderingStatusCodeText : LargeString;
  CreditWorthinessStatusCode : String(2);
  CreditWorthinessStatusCodeText : LargeString;
  ReplicationProcessingStatusCode : String(2);
  ReplicationProcessingStatusCodeText : LargeString;
  ProductAvailabilityStatusCode : String(2);
  ProductAvailabilityStatusCodeText : LargeString;
  PriceCalculationStatusCode : String(2);
  PriceCalculationStatusCodeText : LargeString;
  PricingProcedureCode : String(6);
  PricingProcedureCodeText : LargeString;
  ExternalPriceCalculationStatusCode : String(2);
  ExternalPriceCalculationStatusCodeText : LargeString;
  ExternalPricingProcedureCode : String(6);
  ExternalPricingProcedureCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreationDateTime : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastChangeDateTime : Timestamp;
  CreatedBy : String(80);
  LastChangedBy : String(80);
  CreationIdentityUUID : UUID;
  LastChangeIdentityUUID : UUID;
  VersionGroupID : String(35);
  VersionID : String(32);
  External : Boolean;
  Submit : Boolean;
  SetAsWon : Boolean;
  SetAsLost : Boolean;
  RequestExtData : Boolean;
  PrimaryQuote : Boolean;
  UpdateOpportunity : Boolean;
  RequestExtFollowup : Boolean;
  GrossWeightMeasure : Decimal(31, 14);
  GrossWeightUnitCode : String(3);
  GrossWeightUnitCodeText : LargeString;
  NetWeightMeasure : Decimal(31, 14);
  NetWeightUnitCode : String(3);
  NetWeightUnitCodeText : LargeString;
  VolumeMeasure : Decimal(31, 14);
  VolumeUnitCode : String(3);
  VolumeUnitCodeText : LargeString;
  ExternalApprovalStatusCode : String(2);
  ExternalApprovalStatusCodeText : LargeString;
  PlantPartyID : String(60);
  PlantPartyName : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  dataloader_KUT : String(120);
  @cds.ambiguous : 'missing on condition?'
  ObjectIdentifierMapping : Association to many sap.c4c.ObjectIdentifierMappingCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SalesQuoteAttachmentFolder : Association to many sap.c4c.SalesQuoteAttachmentFolderCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SalesQuoteExternalPrice : Association to many sap.c4c.SalesQuoteExternalPriceCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SalesQuoteItem : Association to many sap.c4c.SalesQuoteItemCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SalesQuoteOutput : Association to many sap.c4c.SalesQuoteOutputCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SalesQuoteParty : Association to many sap.c4c.SalesQuotePartyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SalesQuotePrice : Association to many sap.c4c.SalesQuotePriceCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SalesQuoteReference : Association to many sap.c4c.SalesQuoteReferenceCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SalesQuoteReferenceObject : Association to many sap.c4c.SalesQuoteReferenceObjectCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SalesQuoteTextCollection : Association to many sap.c4c.SalesQuoteTextCollectionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SalesQuoteWorklistItem : Association to many sap.c4c.SalesQuoteWorklistItemCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _BuyerParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _BuyerContactParty : Association to one sap.c4c.ContactCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ProductRecipientParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _EmployeeResponsibleParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesUnitParty : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesOrganisation : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesOffice : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesGroup : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesTerritory : Association to one sap.c4c.SalesTerritoryCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteProcessingTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteDistributionChannelCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteDivisionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteTimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteDocumentLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteDeliveryPriorityCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteIncotermsClassificationCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteCancellationReasonCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteOrderReasonCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteNetAmountCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteGrossAmountCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteTaxAmountCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteCashDiscountTermsCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteConsistencyStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteCancellationStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteResultStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteApprovalStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteOrderingStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteCreditWorthinessStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteReplicationProcessingStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteProductAvailabilityStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuotePriceCalculationStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuotePricingProcedureCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteExternalPriceCalculationStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteExternalPricingProcedureCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteGrossWeightUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteNetWeightUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteVolumeUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteExternalApprovalStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  QuoteID : String(35);
  ItemID : String(10);
  ParentItemID : String(10);
  AlternativeToItemID : String(10);
  ProcessingTypeCode : String(4);
  ProcessingTypeCodeText : LargeString;
  Description : String(40);
  ProductInternalID : String(40);
  ProductBuyerID : String(60);
  ProductStandardID : String(14);
  ProductCategoryID : String(20);
  Quantity : Decimal(31, 14);
  QuantityMeasureUnitCode : String(3);
  QuantityMeasureUnitCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  StartDateTime : Timestamp;
  TimeZoneCode : String(10);
  TimeZoneCodeText : LargeString;
  ProductRecipientPartyID : String(60);
  ProductRecipientPartyName : String(480);
  CancellationReasonCode : String(4);
  CancellationReasonCodeText : LargeString;
  MainPrice : Decimal(31, 14);
  MainPriceCurrencyCode : String(3);
  MainPriceCurrencyCodeText : LargeString;
  MainPriceBaseQuantity : Decimal(3);
  MainPriceBaseQuantityUnitCode : String(3);
  MainPriceBaseQuantityUnitCodeText : LargeString;
  MainDiscount : Decimal(31, 14);
  NetPriceAmount : Decimal(28, 6);
  NetPriceAmountCurrencyCode : String(3);
  NetPriceAmountCurrencyCodeText : LargeString;
  NetPriceBaseQuantity : Decimal(31, 14);
  NetPriceBaseQuantityUnitCode : String(3);
  NetPriceBaseQuantityUnitCodeText : LargeString;
  NetAmount : Decimal(28, 6);
  NetAmountCurrencyCode : String(3);
  NetAmountCurrencyCodeText : LargeString;
  GrossAmount : Decimal(28, 6);
  GrossAmountCurrencyCode : String(3);
  GrossAmountCurrencyCodeText : LargeString;
  TaxAmount : Decimal(28, 6);
  TaxAmountCurrencyCode : String(3);
  TaxAmountCurrencyCodeText : LargeString;
  CashDiscountTermsCode : String(4);
  CashDiscountTermsCodeText : LargeString;
  CancellationStatusCode : String(2);
  CancellationStatusCodeText : LargeString;
  ConsistencyStatusCode : String(2);
  ConsistencyStatusCodeText : LargeString;
  LifeCycleStatusCode : String(2);
  LifeCycleStatusCodeText : LargeString;
  OrderingStatusCode : String(2);
  OrderingStatusCodeText : LargeString;
  ConfirmationExistenceIndicator : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreationDateTime : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastChangeDateTime : Timestamp;
  DeliveryPriorityCode : String(2);
  DeliveryPriorityCodeText : LargeString;
  IncotermsClassificationCode : String(3);
  IncotermsClassificationCodeText : LargeString;
  IncotermsTransferLocationName : String(28);
  GrossWeightMeasure : Decimal(31, 14);
  GrossWeightUnitCode : String(3);
  GrossWeightUnitCodeText : LargeString;
  NetWeightMeasure : Decimal(31, 14);
  NetWeightUnitCode : String(3);
  NetWeightUnitCodeText : LargeString;
  VolumeMeasure : Decimal(31, 14);
  VolumeUnitCode : String(3);
  VolumeUnitCodeText : LargeString;
  OrderedQuantity : Decimal(31, 14);
  OrderedQuantityUnitCode : String(3);
  OrderedQuantityUnitCodeText : LargeString;
  PricingProductID : String(60);
  PlantPartyID : String(60);
  PlantPartyName : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  ObjectIdentifierMapping : Association to many sap.c4c.ObjectIdentifierMappingCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SalesQuote : Association to one sap.c4c.SalesQuoteCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SalesQuoteExternalPriceItem : Association to many sap.c4c.SalesQuoteExternalPriceItemCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SalesQuoteItemAttachmentFolder : Association to many sap.c4c.SalesQuoteItemAttachmentFolderCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SalesQuoteItemParty : Association to many sap.c4c.SalesQuoteItemPartyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SalesQuoteItemReference : Association to many sap.c4c.SalesQuoteItemReferenceCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SalesQuoteItemScheduleLine : Association to many sap.c4c.SalesQuoteItemScheduleLineCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SalesQuoteItemTextCollection : Association to many sap.c4c.SalesQuoteItemTextCollectionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SalesQuotePriceItem : Association to many sap.c4c.SalesQuotePriceItemCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ParentItem : Association to one sap.c4c.SalesQuoteItemCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Product : Association to one sap.c4c.ProductCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ProductCategory : Association to one sap.c4c.ProductCategoryHierarchyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ProductRecipientParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _PricingProduct : Association to one sap.c4c.ProductCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemProcessingTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemQuantityMeasureUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemTimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemCancellationReasonCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemMainPriceCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemMainPriceBaseQuantityUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemNetPriceAmountCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemNetPriceBaseQuantityUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemNetAmountCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemGrossAmountCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemTaxAmountCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemCashDiscountTermsCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemCancellationStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemConsistencyStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemOrderingStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemDeliveryPriorityCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemIncotermsClassificationCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemGrossWeightUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemNetWeightUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemVolumeUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemOrderedQuantityUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteReferenceCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  QuoteID : String(35);
  RelationshipRoleCode : String(3);
  RelationshipRoleCodeText : LargeString;
  ID : String(35);
  TypeCode : String(15);
  TypeCodeText : LargeString;
  ItemID : String(10);
  ItemTypeCode : String(5);
  ItemTypeCodeText : LargeString;
  BusinessSystemID : String(32);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  SalesQuote : Association to one sap.c4c.SalesQuoteCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteReferenceRelationshipRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteReferenceTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteReferenceItemTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteTextCollectionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  SalesQuoteID : String(35);
  Text : LargeString;
  TypeCode : String(5);
  TypeCodeText : LargeString;
  AuthorName : String(40);
  AuthorUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  UpdatedOn : Timestamp;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  SalesQuote : Association to one sap.c4c.SalesQuoteCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteTextCollectionTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteAttachmentFolderCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  SalesQuoteID : String(35);
  UUID : UUID;
  TypeCode : String(5);
  TypeCodeText : LargeString;
  MimeType : LargeString;
  Binary : LargeBinary;
  DocumentLink : LargeString;
  Name : LargeString;
  CategoryCode : String(1);
  CategoryCodeText : LargeString;
  LinkWebURI : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastUpdatedOn : Timestamp;
  CreatedBy : String(80);
  LastUpdatedBy : String(80);
  SizeInkB : Decimal(31, 14);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  _SalesQuote : Association to one sap.c4c.SalesQuoteCollection on _SalesQuote.ObjectID = ParentObjectID;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteAttachmentFolderTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteAttachmentFolderCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuotePartyCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  QuoteID : String(35);
  PartyID : String(60);
  RoleCode : String(10);
  RoleCodeText : LargeString;
  MainIndicator : Boolean;
  PartyContactPartyID : String(60);
  PartyName : String(480);
  PartyContactPartyName : String(480);
  CountryCode : String(3);
  CountryCodeText : LargeString;
  RegionCode : String(6);
  RegionCodeText : LargeString;
  CareOfName : String(40);
  StreetPrefixName : String(40);
  AdditionalStreetPrefixName : String(40);
  HouseID : String(10);
  StreetName : String(60);
  StreetSuffixName : String(40);
  AdditionalStreetSuffixName : String(40);
  DistrictName : String(40);
  CityName : String(40);
  AdditionalCityName : String(40);
  StreetPostalCode : String(10);
  StreetPostalCodeText : LargeString;
  CountyName : String(40);
  CompanyPostalCode : String(10);
  CompanyPostalCodeText : LargeString;
  POBoxIndicator : Boolean;
  POBoxID : String(10);
  POBoxPostalCode : String(10);
  POBoxPostalCodeText : LargeString;
  POBoxDeviatingCountryCode : String(3);
  POBoxDeviatingCountryCodeText : LargeString;
  POBoxDeviatingRegionCode : String(6);
  POBoxDeviatingRegionCodeText : LargeString;
  POBoxDeviatingCityName : String(40);
  BuildingID : String(10);
  FloorID : String(10);
  RoomID : String(10);
  Phone : String(40);
  Mobile : String(40);
  Fax : String(40);
  Email : String(255);
  Web : String(1280);
  CorrespondenceLanguageCode : String(2);
  CorrespondenceLanguageCodeText : LargeString;
  PreferredCommunicationMediumTypeCode : String(3);
  PreferredCommunicationMediumTypeCodeText : LargeString;
  FirstLineName : String(40);
  SecondLineName : String(40);
  ThirdLineName : String(40);
  FourthLineName : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  ObjectIdentifierMapping : Association to many sap.c4c.ObjectIdentifierMappingCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SalesQuote : Association to one sap.c4c.SalesQuoteCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _PartyContactParty : Association to one sap.c4c.ContactCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuotePartyRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuotePartyCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuotePartyRegionCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuotePartyStreetPostalCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuotePartyCompanyPostalCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuotePartyPOBoxPostalCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuotePartyPOBoxDeviatingCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuotePartyPOBoxDeviatingRegionCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuotePartyCorrespondenceLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuotePartyPreferredCommunicationMediumTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuotePriceCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  QuoteID : String(35);
  TypeCode : String(4);
  TypeCodeText : LargeString;
  Description : String(40);
  MajorLevelOrdinalNumberValue : Integer;
  MinorLevelOrdinalNumberValue : Integer;
  CategoryCode : String(1);
  CategoryCodeText : LargeString;
  RateDecimalValue : Decimal(31, 14);
  RateCurrencyCode : String(3);
  RateCurrencyCodeText : LargeString;
  RateMeasureUnitCode : String(3);
  RateMeasureUnitCodeText : LargeString;
  RateBaseDecimalValue : Decimal(31, 14);
  RateBaseMeasureUnitCode : String(3);
  RateBaseMeasureUnitCodeText : LargeString;
  CalculatedAmount : Decimal(28, 6);
  CalculatedAmountCurrencyCode : String(3);
  CalculatedAmountCurrencyCodeText : LargeString;
  EffectiveIndicator : Boolean;
  InactivityReasonCode : String(2);
  InactivityReasonCodeText : LargeString;
  ManuallyChangedIndicator : Boolean;
  OriginCode : String(2);
  OriginCodeText : LargeString;
  QuoteNodeID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  _Quote : Association to one sap.c4c.SalesQuoteCollection on _Quote.ObjectID = ParentObjectID;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuotePriceTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuotePriceCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuotePriceRateCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuotePriceRateMeasureUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuotePriceRateBaseMeasureUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuotePriceCalculatedAmountCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuotePriceInactivityReasonCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuotePriceOriginCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteExternalPriceCollection {
  key ObjectID : String(70);
  QuoteID : String(35);
  TypeCode : String(4);
  TypeCodeText : LargeString;
  MajorLevelOrdinalNumberValue : Integer;
  MinorLevelOrdinalNumberValue : Integer;
  CategoryCode : String(1);
  CategoryCodeText : LargeString;
  RateDecimalValue : Decimal(31, 14);
  RateCurrencyCode : String(3);
  RateCurrencyCodeText : LargeString;
  RateMeasureUnitCode : String(3);
  RateMeasureUnitCodeText : LargeString;
  RateBaseDecimalValue : Decimal(31, 14);
  RateBaseMeasureUnitCode : String(3);
  RateBaseMeasureUnitCodeText : LargeString;
  CalculatedAmount : Decimal(28, 6);
  CalculatedAmountCurrencyCode : String(3);
  CalculatedAmountCurrencyCodeText : LargeString;
  EffectiveIndicator : Boolean;
  ManuallyChangedIndicator : Boolean;
  InactivityReasonCode : String(2);
  InactivityReasonCodeText : LargeString;
  OriginCode : String(2);
  OriginCodeText : LargeString;
  QuoteNodeID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  _Quote : Association to one sap.c4c.SalesQuoteCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteExternalPriceTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteExternalPriceCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteExternalPriceRateCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteExternalPriceRateMeasureUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteExternalPriceRateBaseMeasureUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteExternalPriceCalculatedAmountCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteExternalPriceInactivityReasonCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteExternalPriceOriginCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemScheduleLineCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  QuoteID : String(35);
  QuoteItemID : String(10);
  ID : String(4);
  TypeCode : String(2);
  TypeCodeText : LargeString;
  Quantity : Decimal(31, 14);
  unitCode : String(3);
  unitCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  StartDateTime : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EndDateTime : Timestamp;
  timeZoneCode : String(10);
  timeZoneCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  SalesQuote : Association to one sap.c4c.SalesQuoteCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SalesQuoteItem : Association to one sap.c4c.SalesQuoteItemCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemScheduleLineTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemScheduleLineunitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemScheduleLinetimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemReferenceCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  QuoteID : String(35);
  QuoteItemID : String(10);
  RelationshipRoleCode : String(3);
  RelationshipRoleCodeText : LargeString;
  ID : String(35);
  TypeCode : String(15);
  TypeCodeText : LargeString;
  ItemID : String(10);
  ItemTypeCode : String(5);
  ItemTypeCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  SalesQuote : Association to one sap.c4c.SalesQuoteCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SalesQuoteItem : Association to one sap.c4c.SalesQuoteItemCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemReferenceRelationshipRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemReferenceTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemReferenceItemTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemTextCollectionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  QuoteID : String(35);
  QuoteItemID : String(10);
  Text : LargeString;
  TypeCode : String(5);
  TypeCodeText : LargeString;
  AuthorName : String(40);
  AuthorUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  UpdatedOn : Timestamp;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  SalesQuoteItem : Association to one sap.c4c.SalesQuoteItemCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Quote : Association to one sap.c4c.SalesQuoteCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemTextCollectionTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemAttachmentFolderCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  UUID : UUID;
  TypeCode : String(5);
  TypeCodeText : LargeString;
  MimeType : LargeString;
  Binary : LargeBinary;
  DocumentLink : LargeString;
  Name : LargeString;
  CategoryCode : String(1);
  CategoryCodeText : LargeString;
  LinkWebURI : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastUpdatedOn : Timestamp;
  CreatedBy : String(80);
  LastUpdatedBy : String(80);
  SizeInkB : Decimal(31, 14);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemAttachmentFolderTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemAttachmentFolderCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuotePriceItemCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  QuoteID : String(35);
  QuoteItemID : String(10);
  ProductID : String(40);
  TypeCode : String(4);
  TypeCodeText : LargeString;
  Description : String(40);
  MajorLevelOrdinalNumberValue : Integer;
  MinorLevelOrdinalNumberValue : Integer;
  CategoryCode : String(1);
  CategoryCodeText : LargeString;
  RateDecimalValue : Decimal(31, 14);
  RateCurrencyCode : String(3);
  RateCurrencyCodeText : LargeString;
  RateMeasureUnitCode : String(3);
  RateMeasureUnitCodeText : LargeString;
  RateBaseDecimalValue : Decimal(31, 14);
  RateBaseMeasureUnitCode : String(3);
  RateBaseMeasureUnitCodeText : LargeString;
  CalculatedAmount : Decimal(28, 6);
  CalculatedAmountCurrencyCode : String(3);
  CalculatedAmountCurrencyCodeText : LargeString;
  EffectiveIndicator : Boolean;
  InactivityReasonCode : String(2);
  InactivityReasonCodeText : LargeString;
  ManuallyChangedIndicator : Boolean;
  OriginCode : String(2);
  OriginCodeText : LargeString;
  QuoteNodeID : String(70);
  QuoteItemNodeID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  _Quote : Association to one sap.c4c.SalesQuoteCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _QuoteItem : Association to one sap.c4c.SalesQuoteItemCollection on _QuoteItem.ObjectID = ParentObjectID;
  @cds.ambiguous : 'missing on condition?'
  _Product : Association to one sap.c4c.ProductCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuotePriceItemTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuotePriceItemCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuotePriceItemRateCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuotePriceItemRateMeasureUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuotePriceItemRateBaseMeasureUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuotePriceItemCalculatedAmountCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuotePriceItemInactivityReasonCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuotePriceItemOriginCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteExternalPriceItemCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  QuoteID : String(35);
  QuoteItemID : String(10);
  ProductID : String(40);
  TypeCode : String(4);
  TypeCodeText : LargeString;
  MajorLevelOrdinalNumberValue : Integer;
  MinorLevelOrdinalNumberValue : Integer;
  CategoryCode : String(1);
  CategoryCodeText : LargeString;
  RateDecimalValue : Decimal(31, 14);
  RateCurrencyCode : String(3);
  RateCurrencyCodeText : LargeString;
  RateMeasureUnitCode : String(3);
  RateMeasureUnitCodeText : LargeString;
  RateBaseDecimalValue : Decimal(31, 14);
  RateBaseMeasureUnitCode : String(3);
  RateBaseMeasureUnitCodeText : LargeString;
  CalculatedAmount : Decimal(28, 6);
  CalculatedAmountCurrencyCode : String(3);
  CalculatedAmountCurrencyCodeText : LargeString;
  EffectiveIndicator : Boolean;
  ManuallyChangedIndicator : Boolean;
  InactivityReasonCode : String(2);
  InactivityReasonCodeText : LargeString;
  OriginCode : String(2);
  OriginCodeText : LargeString;
  QuoteNodeID : String(70);
  QuoteItemNodeID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  _Quote : Association to one sap.c4c.SalesQuoteCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _QuoteItem : Association to one sap.c4c.SalesQuoteItemCollection on _QuoteItem.ObjectID = ParentObjectID;
  @cds.ambiguous : 'missing on condition?'
  _Product : Association to one sap.c4c.ProductCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteExternalPriceItemTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteExternalPriceItemCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteExternalPriceItemRateCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteExternalPriceItemRateMeasureUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteExternalPriceItemRateBaseMeasureUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteExternalPriceItemCalculatedAmountCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteExternalPriceItemInactivityReasonCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteExternalPriceItemOriginCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemPartyCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  QuoteID : String(35);
  QuoteItemID : String(10);
  PartyID : String(60);
  RoleCode : String(10);
  RoleCodeText : LargeString;
  MainIndicator : Boolean;
  PartyContactPartyID : String(60);
  PartyName : String(80);
  PartyContactPartyName : String(80);
  CountryCode : String(3);
  CountryCodeText : LargeString;
  RegionCode : String(6);
  RegionCodeText : LargeString;
  CareOfName : String(40);
  StreetPrefixName : String(40);
  AdditionalStreetPrefixName : String(40);
  HouseID : String(10);
  StreetName : String(60);
  StreetSuffixName : String(40);
  AdditionalStreetSuffixName : String(40);
  DistrictName : String(40);
  CityName : String(40);
  AdditionalCityName : String(40);
  StreetPostalCode : String(10);
  CountyName : String(40);
  CompanyPostalCode : String(10);
  POBoxIndicator : Boolean;
  POBoxID : String(10);
  POBoxPostalCode : String(10);
  POBoxDeviatingCountryCode : String(3);
  POBoxDeviatingCountryCodeText : LargeString;
  POBoxDeviatingRegionCode : String(6);
  POBoxDeviatingRegionCodeText : LargeString;
  POBoxDeviatingCityName : String(40);
  BuildingID : String(10);
  FloorID : String(10);
  RoomID : String(10);
  Phone : String(40);
  Mobile : String(40);
  Fax : String(40);
  Email : String(255);
  Web : String(1280);
  CorrespondenceLanguageCode : String(2);
  CorrespondenceLanguageCodeText : LargeString;
  PreferredCommunicationMediumTypeCode : String(3);
  PreferredCommunicationMediumTypeCodeText : LargeString;
  FirstLineName : String(40);
  SecondLineName : String(40);
  ThirdLineName : String(40);
  FourthLineName : String(40);
  @cds.ambiguous : 'missing on condition?'
  SalesQuote : Association to one sap.c4c.SalesQuoteCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SalesQuoteItem : Association to one sap.c4c.SalesQuoteItemCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _PartyContactParty : Association to one sap.c4c.ContactCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemPartyRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemPartyCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemPartyRegionCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemPartyPOBoxDeviatingCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemPartyPOBoxDeviatingRegionCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemPartyCorrespondenceLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemPartyPreferredCommunicationMediumTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteWorklistItemCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  QuoteID : String(35);
  ActivityWorklistItemUUID : UUID;
  ActivityWorklistItemTypeCode : String(5);
  ActivityWorklistItemTypeCodeText : LargeString;
  ExecutedIndicator : Boolean;
  ActivityTaskUUID : UUID;
  ValuationCollectionUUID : UUID;
  Execute : Boolean;
  Revoke : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  SalesQuote : Association to one sap.c4c.SalesQuoteCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteWorklistItemActivityWorklistItemTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteReferenceObjectCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  QuoteID : String(35);
  MainIndicator : Boolean;
  InstallationPointID : String(40);
  InstalledBaseID : String(40);
  ProductInternalID : String(40);
  ProductSerialID : String(30);
  @cds.ambiguous : 'missing on condition?'
  SalesQuote : Association to one sap.c4c.SalesQuoteCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _InstallationPoint : Association to one sap.c4c.InstallationPointCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _InstalledBase : Association to one sap.c4c.InstalledBaseCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Product : Association to one sap.c4c.ProductCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteOutputCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  QuoteNodeID : String(100);
  QuoteID : String(35);
  FormTemplateCode : String(15);
  FormTemplateCodeText : LargeString;
  FormTemplateLanguageCode : String(2);
  FormTemplateLanguageCodeText : LargeString;
  OutputStatusCode : String(2);
  OutputStatusCodeText : LargeString;
  OutputChannelCode : String(3);
  OutputChannelCodeText : LargeString;
  OutputPdfName : LargeString;
  OutputPdf : LargeBinary;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreationDateTime : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastChangeDateTime : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  _Quote : Association to one sap.c4c.SalesQuoteCollection on _Quote.ObjectID = ParentObjectID;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteOutputFormTemplateCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteOutputFormTemplateLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteOutputOutputStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteOutputOutputChannelCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceAgentOrganisationalUnitAssignmentCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ServiceAgentID : String(20);
  OrgUnitID : String(20);
  JobID : String(20);
  RoleCode : String(10);
  RoleCodeText : LargeString;
  StartDate : Date;
  EndDate : Date;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  _ServiceAgent : Association to one sap.c4c.ServiceAgentCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _OrgUnit : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Job : Association to one sap.c4c.JobDefinitionCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ServiceAgentOrganisationalUnitAssignmentRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceAgentCollection {
  key ObjectID : String(70);
  ServiceAgentID : String(20);
  ServiceAgentUUID : UUID;
  LifeCycleStatusCode : String(2);
  LifeCycleStatusCodeText : LargeString;
  TitleCode : String(4);
  TitleCodeText : LargeString;
  AcademicTitleCode : String(4);
  AcademicTitleCodeText : LargeString;
  BusinessPartnerFormattedName : String(480);
  FirstName : String(40);
  LastName : String(40);
  MiddleName : String(40);
  NickName : String(40);
  GenderCode : String(1);
  GenderCodeText : LargeString;
  LanguageCode : String(2);
  LanguageCodeText : LargeString;
  NationalityCountryCode : String(3);
  NationalityCountryCodeText : LargeString;
  BirthName : String(40);
  FormattedPostalAddressDescription : String(480);
  CountryCode : String(3);
  CountryCodeText : LargeString;
  RegionCode : String(6);
  RegionCodeText : LargeString;
  AddressLine1 : String(40);
  AddressLine2 : String(40);
  HouseNumber : String(10);
  Street : String(60);
  AddressLine4 : String(40);
  AddressLine5 : String(40);
  District : String(40);
  City : String(40);
  DifferentCity : String(40);
  PostalCode : String(10);
  County : String(40);
  CompanyPostalCode : String(10);
  POBox : String(10);
  POBoxPostalCode : String(10);
  POBoxCountryCode : String(3);
  POBoxCountryCodeText : LargeString;
  POBoxRegionCode : String(6);
  POBoxRegionCodeText : LargeString;
  POBoxCity : String(40);
  TimeZoneCode : String(10);
  TimeZoneCodeText : LargeString;
  TaxJurisdictionCode : String(25);
  TaxJurisdictionCodeText : LargeString;
  Building : String(10);
  Floor : String(10);
  Room : String(10);
  InhouseMail : String(10);
  OfficePhoneNumber : String(40);
  MobilePhoneNumber : String(40);
  FaxNumber : String(40);
  Email : String(255);
  NormalisedOfficePhoneNumber : String(40);
  NormalisedMobilePhoneNumber : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(480);
  CreatedByIdentityUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ChangedOn : Timestamp;
  ChangedBy : String(480);
  ChangedByIdentityUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  ServiceAgentAttachmentFolder : Association to many sap.c4c.ServiceAgentAttachmentFolderCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ServiceAgentOrganisationalUnitAssignment : Association to many sap.c4c.ServiceAgentOrganisationalUnitAssignmentCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ServiceAgentTextCollection : Association to many sap.c4c.ServiceAgentTextCollectionCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ServiceAgentLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceAgentTitleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceAgentAcademicTitleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceAgentGenderCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceAgentLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceAgentNationalityCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceAgentCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceAgentRegionCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceAgentPOBoxCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceAgentPOBoxRegionCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceAgentTimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceAgentTaxJurisdictionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceAgentTextCollectionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ServiceAgentID : String(20);
  Text : LargeString;
  LanguageCode : String(2);
  LanguageCodeText : LargeString;
  AuthorName : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(480);
  CreatedByIdentityID : String(40);
  CreatedByTechnicalUserIndicator : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  UpdatedOn : Timestamp;
  LastUpdatedBy : String(480);
  LastUpdatedByIdentityID : String(40);
  LastUpdatedByTechnicalUserIndicator : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  ServiceAgent : Association to one sap.c4c.ServiceAgentCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _CreatedByIdentity : Association to one sap.c4c.BusinessUserCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _LastUpdatedByIdentity : Association to one sap.c4c.BusinessUserCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ServiceAgentTextCollectionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceAgentAttachmentFolderCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  Binary : LargeBinary;
  CategoryCode : String(1);
  CategoryCodeText : LargeString;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  DocumentLink : LargeString;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastUpdatedOn : Timestamp;
  LinkWebURI : LargeString;
  MimeType : LargeString;
  Name : LargeString;
  ParentObjectID : String(70);
  ServiceAgentID : String(20);
  SizeInkB : Decimal(31, 14);
  TypeCode : String(5);
  TypeCodeText : LargeString;
  UUID : UUID;
  @cds.ambiguous : 'missing on condition?'
  _ServiceAgent : Association to one sap.c4c.ServiceAgentCollection on _ServiceAgent.ObjectID = ParentObjectID;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceAgentAttachmentFolderCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceAgentAttachmentFolderTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartnerContactCollection {
  key ObjectID : String(70);
  PartnerContactID : String(20);
  PartnerContactUUID : UUID;
  UserID : String(40);
  IdentityUUID : UUID;
  CreateUser : Boolean;
  BusinessPartnerID : String(10);
  PartnerID : String(10);
  StatusCode : String(2);
  StatusCodeText : LargeString;
  TitleCode : String(4);
  TitleCodeText : LargeString;
  AcademicTitleCode : String(4);
  AcademicTitleCodeText : LargeString;
  BusinessPartnerFormattedName : String(480);
  FirstName : String(40);
  LastName : String(40);
  MiddleName : String(40);
  AdditionalLastName : String(40);
  GenderCode : String(1);
  GenderCodeText : LargeString;
  MaritalStatusCode : String(1);
  MaritalStatusCodeText : LargeString;
  LanguageCode : String(2);
  LanguageCodeText : LargeString;
  BirthDate : Date;
  VIPContactCode : String(1);
  VIPContactCodeText : LargeString;
  Department : String(40);
  JobTitle : String(40);
  FormattedPostalAddressDescription : String(480);
  CountryCode : String(3);
  CountryCodeText : LargeString;
  StateCode : String(6);
  StateCodeText : LargeString;
  AddressLine1 : String(40);
  AddressLine2 : String(40);
  HouseNumber : String(10);
  Street : String(60);
  AddressLine4 : String(40);
  AddressLine5 : String(40);
  City : String(40);
  StreetPostalCode : String(10);
  Phone : String(40);
  Mobile : String(40);
  Fax : String(40);
  Email : String(255);
  BestReachedByCode : String(3);
  BestReachedByCodeText : LargeString;
  NormalisedPhone : String(40);
  NormalisedMobile : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(480);
  CreatedByIdentityUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ChangedOn : Timestamp;
  ChangedBy : String(480);
  ChangedByIdentityUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  BusinessUser : Association to one sap.c4c.BusinessUserCollection {  };
  @cds.ambiguous : 'missing on condition?'
  PartnerContactBusinessRoleAssignment : Association to many sap.c4c.PartnerContactBusinessRoleAssignmentCollection {  };
  @cds.ambiguous : 'missing on condition?'
  PartnerContactSalesResponsibility : Association to many sap.c4c.PartnerContactSalesResponsibilityCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _BusinessPartner : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Partner : Association to one sap.c4c.PartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.PartnerContactStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartnerContactTitleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartnerContactAcademicTitleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartnerContactGenderCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartnerContactMaritalStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartnerContactLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartnerContactVIPContactCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartnerContactCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartnerContactStateCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartnerContactBestReachedByCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartnerContactSalesResponsibilityCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  PartnerContactID : String(20);
  SalesOrganisationID : String(20);
  DistributionChannelCode : String(2);
  DistributionChannelCodeText : LargeString;
  DivisionCode : String(2);
  DivisionCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  PartnerContact : Association to one sap.c4c.PartnerContactCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesOrganisation : Association to one sap.c4c.OrganisationalUnitCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.PartnerContactSalesResponsibilityDistributionChannelCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartnerContactSalesResponsibilityDivisionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartnerContactBusinessRoleAssignmentCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  PartnerContactID : String(20);
  BusinessRoleID : String(255);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  _PartnerContact : Association to one sap.c4c.PartnerContactCollection on _PartnerContact.ObjectID = ParentObjectID;
};

@cds.persistence.skip : true
entity sap.c4c.CompetitorCollection {
  key ObjectID : String(70);
  CompetitorID : String(10);
  CompetitorUUID : UUID;
  StatusCode : String(2);
  StatusCodeText : LargeString;
  ClassificationCode : String(1);
  ClassificationCodeText : LargeString;
  BusinessPartnerFormattedName : String(480);
  Name : String(40);
  AdditionalName : String(40);
  FormattedPostalAddressDescription : String(480);
  CountryCode : String(3);
  CountryCodeText : LargeString;
  RegionCode : String(6);
  RegionCodeText : LargeString;
  CareOfName : String(40);
  AddressLine1 : String(40);
  AddressLine2 : String(40);
  HouseNumber : String(10);
  Street : String(60);
  AddressLine4 : String(40);
  AddressLine5 : String(40);
  City : String(40);
  AdditionalCityName : String(40);
  District : String(40);
  County : String(40);
  CompanyPostalCode : String(10);
  StreetPostalCode : String(10);
  POBoxPostalCode : String(10);
  POBox : String(10);
  POBoxDeviatingCountryCode : String(3);
  POBoxDeviatingCountryCodeText : LargeString;
  POBoxDeviatingCity : String(40);
  TimeZoneCode : String(10);
  TimeZoneCodeText : LargeString;
  TaxJurisdictionCode : String(25);
  TaxJurisdictionCodeText : LargeString;
  POBoxDeviatingStateCode : String(6);
  POBoxDeviatingStateCodeText : LargeString;
  Phone : String(40);
  Fax : String(40);
  Email : String(255);
  WebSite : String(1280);
  LanguageCode : String(2);
  LanguageCodeText : LargeString;
  BestReachedByCode : String(3);
  BestReachedByCodeText : LargeString;
  NormalisedPhone : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(480);
  CreatedByIdentityUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ChangedOn : Timestamp;
  ChangedBy : String(480);
  ChangedByIdentityUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  CompetitorSalesOrganisation : Association to many sap.c4c.CompetitorSalesOrganisationCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.CompetitorStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CompetitorClassificationCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CompetitorCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CompetitorRegionCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CompetitorPOBoxDeviatingCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CompetitorTimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CompetitorTaxJurisdictionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CompetitorPOBoxDeviatingStateCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CompetitorLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CompetitorBestReachedByCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CompetitorSalesOrganisationCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  SalesOrganisationID : String(20);
  CompetitorID : String(10);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Competitor : Association to one sap.c4c.CompetitorCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesOrganisation : Association to one sap.c4c.OrganisationalUnitCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.PartnerCollection {
  key ObjectID : String(70);
  PartnerID : String(10);
  PartnerUUID : UUID;
  LifeCycleStatusCode : String(2);
  LifeCycleStatusCodeText : LargeString;
  DUNS : String(60);
  LegalFormCode : String(2);
  LegalFormCodeText : LargeString;
  PartnerABCClassificationCode : String(1);
  PartnerABCClassificationCodeText : LargeString;
  IndustrialSectorCode : String(10);
  IndustrialSectorCodeText : LargeString;
  ContactPermissionCode : String(1);
  ContactPermissionCodeText : LargeString;
  BusinessPartnerFormattedName : String(480);
  Name : String(40);
  AdditionalName : String(40);
  AdditionalName2 : String(40);
  AdditionalName3 : String(40);
  FormattedPostalAddressDescription : String(480);
  CountryCode : String(3);
  CountryCodeText : LargeString;
  StateCode : String(6);
  StateCodeText : LargeString;
  CareOfName : String(40);
  AddressLine1 : String(40);
  AddressLine2 : String(40);
  HouseNumber : String(10);
  Street : String(60);
  AddressLine4 : String(40);
  AddressLine5 : String(40);
  District : String(40);
  City : String(40);
  DifferentCity : String(40);
  StreetPostalCode : String(10);
  County : String(40);
  CompanyPostalCode : String(10);
  POBoxIndicator : Boolean;
  POBox : String(10);
  POBoxPostalCode : String(10);
  POBoxDeviatingCountryCode : String(3);
  POBoxDeviatingCountryCodeText : LargeString;
  POBoxDeviatingStateCode : String(6);
  POBoxDeviatingStateCodeText : LargeString;
  POBoxDeviatingCity : String(40);
  TimeZoneCode : String(10);
  TimeZoneCodeText : LargeString;
  Building : String(10);
  Floor : String(10);
  Room : String(10);
  Phone : String(40);
  Mobile : String(40);
  Fax : String(40);
  Email : String(255);
  WebSite : String(1280);
  LanguageCode : String(2);
  LanguageCodeText : LargeString;
  BestReachedByCode : String(3);
  BestReachedByCodeText : LargeString;
  TotalPoints : LargeString;
  PartnerLevel : String(4);
  PartnerLevelText : LargeString;
  NormalisedPhone : String(40);
  NormalisedMobile : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(480);
  CreatedByIdentityUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ChangedOn : Timestamp;
  ChangedBy : String(480);
  ChangedByIdentityUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  PartnerAddress : Association to many sap.c4c.PartnerAddressCollection {  };
  @cds.ambiguous : 'missing on condition?'
  PartnerAttachment : Association to many sap.c4c.PartnerAttachmentCollection {  };
  @cds.ambiguous : 'missing on condition?'
  PartnerHasPartnerContact : Association to many sap.c4c.PartnerHasPartnerContactCollection {  };
  @cds.ambiguous : 'missing on condition?'
  PartnerPrograms : Association to many sap.c4c.PartnerProgramsCollection {  };
  @cds.ambiguous : 'missing on condition?'
  PartnerSalesOrganisation : Association to many sap.c4c.PartnerSalesOrganisationCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.PartnerLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartnerLegalFormCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartnerPartnerABCClassificationCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartnerIndustrialSectorCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartnerContactPermissionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartnerCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartnerStateCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartnerPOBoxDeviatingCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartnerPOBoxDeviatingStateCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartnerTimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartnerLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartnerBestReachedByCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartnerPartnerLevelCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartnerAttachmentCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  Binary : LargeBinary;
  CategoryCode : String(1);
  CategoryCodeText : LargeString;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  DocumentLink : LargeString;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastUpdatedOn : Timestamp;
  LinkWebURI : LargeString;
  MimeType : LargeString;
  Name : LargeString;
  ParentObjectID : String(70);
  PartnerID : String(10);
  SizeInkB : Decimal(31, 14);
  TypeCode : String(5);
  TypeCodeText : LargeString;
  UUID : UUID;
  @cds.ambiguous : 'missing on condition?'
  _Partner : Association to one sap.c4c.PartnerCollection on _Partner.ObjectID = ParentObjectID;
};

@cds.persistence.skip : true
entity sap.c4c.PartnerAttachmentCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartnerAttachmentTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartnerAddressCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  PartnerID : String(10);
  MainIndicator : Boolean;
  ShipTo : Boolean;
  DefaultShipTo : Boolean;
  BillTo : Boolean;
  DefaultBillTo : Boolean;
  FormattedPostalAddressDescription : String(480);
  CountryCode : String(3);
  CountryCodeText : LargeString;
  StateCode : String(6);
  StateCodeText : LargeString;
  CareOfName : String(40);
  AddressLine1 : String(40);
  AddressLine2 : String(40);
  HouseNumber : String(10);
  Street : String(60);
  AddressLine4 : String(40);
  AddressLine5 : String(40);
  District : String(40);
  City : String(40);
  DifferentCity : String(40);
  StreetPostalCode : String(10);
  County : String(40);
  CompanyPostalCode : String(10);
  POBoxIndicator : Boolean;
  POBox : String(10);
  POBoxPostalCode : String(10);
  POBoxDeviatingCountryCode : String(3);
  POBoxDeviatingCountryCodeText : LargeString;
  POBoxDeviatingStateCode : String(6);
  POBoxDeviatingStateCodeText : LargeString;
  POBoxDeviatingCity : String(40);
  TimeZoneCode : String(10);
  TimeZoneCodeText : LargeString;
  Building : String(10);
  Floor : String(10);
  Room : String(10);
  Phone : String(40);
  Mobile : String(40);
  Fax : String(40);
  Email : String(255);
  WebSite : String(1280);
  LanguageCode : String(2);
  LanguageCodeText : LargeString;
  BestReachedByCode : String(3);
  BestReachedByCodeText : LargeString;
  NormalisedPhone : String(40);
  NormalisedMobile : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Partner : Association to one sap.c4c.PartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.PartnerAddressCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartnerAddressStateCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartnerAddressPOBoxDeviatingCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartnerAddressPOBoxDeviatingStateCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartnerAddressTimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartnerAddressLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartnerAddressBestReachedByCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartnerProgramsCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  PartnerProgram : String(4);
  PartnerProgramText : LargeString;
  MembershipID : String(10);
  PartnerType : String(4);
  PartnerTypeText : LargeString;
  Status : String(2);
  StatusText : LargeString;
  AgreementStartDate : Date;
  AgreementEndDate : Date;
  @cds.ambiguous : 'missing on condition?'
  PartnerProductDimensions : Association to many sap.c4c.PartnerProductDimensionsCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.PartnerProgramsPartnerProgramCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartnerProgramsPartnerTypeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartnerProgramsStatusCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartnerProductDimensionsCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  DimensionStatus : String(2);
  DimensionStatusText : LargeString;
  ProductID : String(60);
  StartDate : Date;
  EndDate : Date;
  @cds.ambiguous : 'missing on condition?'
  PartnerPrograms : Association to one sap.c4c.PartnerProgramsCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Product : Association to one sap.c4c.ProductCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.PartnerProductDimensionsDimensionStatusCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartnerHasPartnerContactCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  PartnerID : String(10);
  PartnerContactID : String(20);
  MainIndicator : Boolean;
  DepartmentCode : String(4);
  DepartmentCodeText : LargeString;
  FunctionCode : String(4);
  FunctionCodeText : LargeString;
  VIPReasonCode : String(1);
  VIPReasonCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  PartnerHasPartnerContactFunction : Association to many sap.c4c.PartnerHasPartnerContactFunctionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Partner : Association to one sap.c4c.PartnerCollection on _Partner.ObjectID = ParentObjectID;
  @cds.ambiguous : 'missing on condition?'
  _PartnerContact : Association to one sap.c4c.PartnerContactCollection on _PartnerContact.ObjectID = ParentObjectID;
};

@cds.persistence.skip : true
entity sap.c4c.PartnerHasPartnerContactDepartmentCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartnerHasPartnerContactFunctionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartnerHasPartnerContactVIPReasonCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartnerHasPartnerContactFunctionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  PartnerContactID : String(35);
  ContactID : String(10);
  PartnerID : String(10);
  PartnerType : String(4);
  PartnerTypeText : LargeString;
  MainContact : Boolean;
  StartDate : Date;
  EndDate : Date;
  @cds.ambiguous : 'missing on condition?'
  _PartnerContact : Association to one sap.c4c.PartnerHasPartnerContactCollection on _PartnerContact.ObjectID = ParentObjectID;
  @cds.ambiguous : 'missing on condition?'
  _Contact : Association to one sap.c4c.PartnerContactCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Partner : Association to one sap.c4c.PartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.PartnerHasPartnerContactFunctionPartnerTypeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartnerSalesOrganisationCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  PartnerID : String(10);
  SalesOrganisationID : String(20);
  SalesOrganisationUUID : UUID;
  @cds.ambiguous : 'missing on condition?'
  Partner : Association to one sap.c4c.PartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesOrganisation : Association to one sap.c4c.OrganisationalUnitCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SocialMediaActivityCollection {
  key ObjectID : String(70);
  SocialMediaMessageAuthor : String(80);
  CategoryCode : String(3);
  PrivateSocialMediaMessageIndicator : Boolean;
  SocialMediaMessageDomain : LargeString;
  ID : String(35);
  RootSocialMediaActivityUUID : UUID;
  SocialMediaMessageURI : LargeString;
  ParentSocialMediaActivityUUID : UUID;
  SocialMediaActivityProviderUUID : UUID;
  SocialMediaUserProfileUUID : UUID;
  SocialFeedbackLikeUnlike : Boolean;
  SocialMediaChannelCode : String(3);
  SocialMediaMessageID : String(256);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  SocialMediaMessageCreationDateTime : Timestamp;
  UUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  Text : LargeString;
  languageCode : String(2);
  PriorityCode : String(1);
  InitiatorCode : String(1);
  SocialMediaActivityProviderName : String(80);
  SocialMediaActivityProviderID : String(35);
  @cds.ambiguous : 'missing on condition?'
  SocialMediaActivityAccessControlList : Association to one sap.c4c.SocialMediaActivityAccessControlListCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SocialMediaActivityAttachmentFolder : Association to many sap.c4c.SocialMediaActivityAttachmentFolderCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SocialMediaActivityToChildSocialMediaActivity : Association to many sap.c4c.SocialMediaActivityToChildSocialMediaActivityCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SocialMediaActivityCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SocialMediaActivitySocialMediaChannelCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SocialMediaActivitylanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SocialMediaActivityPriorityCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SocialMediaActivityInitiatorCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SocialMediaActivityAccessControlListCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  SocialMediaActivity : Association to one sap.c4c.SocialMediaActivityCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SocialMediaActivityAttachmentFolderCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  Binary : LargeBinary;
  CategoryCode : String(1);
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  DocumentLink : LargeString;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastUpdatedOn : Timestamp;
  LinkWebURI : LargeString;
  MimeType : LargeString;
  Name : LargeString;
  ParentObjectID : String(70);
  SizeInkB : Decimal(31, 14);
  SocialMediaActivitySocialMediaMessageID : String(256);
  TypeCode : String(5);
  UUID : UUID;
  @cds.ambiguous : 'missing on condition?'
  _SocialMediaActivitySocialMediaMessage : Association to one sap.c4c.SocialMediaActivityCollection on _SocialMediaActivitySocialMediaMessage.ObjectID = ParentObjectID;
};

@cds.persistence.skip : true
entity sap.c4c.SocialMediaActivityAttachmentFolderCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SocialMediaActivityAttachmentFolderTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SocialMediaActivityToChildSocialMediaActivityCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
};

@cds.persistence.skip : true
entity sap.c4c.CodTimeReportPartyCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  DeterminationMethodCode : String(2);
  AddressHostTypeCode : String(1);
  MainIndicator : Boolean;
  PartyID : String(60);
  PartyTypeCode : String(15);
  RoleCategoryCode : String(3);
  RoleCode : String(10);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  CodTimeReport : Association to one sap.c4c.CodTimeReportCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.CodTimeReportPartyDeterminationMethodCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CodTimeReportPartyAddressHostTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CodTimeReportPartyPartyTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CodTimeReportPartyRoleCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CodTimeReportPartyRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CodTimeReportCollection {
  key ObjectID : String(70);
  Description : String(255);
  languageCode : String(2);
  EmployeeUUID : UUID;
  EndDate : Date;
  ID : String(35);
  InformationLifeCycleStatusCode : String(2);
  RejectionReason : LargeString;
  languageCode1 : String(2);
  ReportName : String(255);
  languageCode2 : String(2);
  StartDate : Date;
  Status : String(2);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreationDateTime : Timestamp;
  CreationIdentityUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastChangeDateTime : Timestamp;
  LastChangeIdentityUUID : UUID;
  TotalDuration : String(20);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  CodTimeEntry : Association to many sap.c4c.CodTimeEntryCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CodTimeReportAttachmentFolder : Association to many sap.c4c.CodTimeReportAttachmentFolderCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CodTimeReportParty : Association to many sap.c4c.CodTimeReportPartyCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.CodTimeReportlanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CodTimeReportInformationLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CodTimeReportlanguageCode1Collection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CodTimeReportlanguageCode2Collection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CodTimeReportStatusCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CodTimeReportAttachmentFolderCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  CodTimeReportID : String(35);
  UUID : UUID;
  TypeCode : String(5);
  MimeType : LargeString;
  Binary : LargeBinary;
  DocumentLink : LargeString;
  Name : LargeString;
  CategoryCode : String(1);
  LinkWebURI : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastUpdatedOn : Timestamp;
  CreatedBy : String(80);
  LastUpdatedBy : String(80);
  SizeInkB : Decimal(31, 14);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  _CodTimeReport : Association to one sap.c4c.CodTimeReportCollection on _CodTimeReport.ObjectID = ParentObjectID;
};

@cds.persistence.skip : true
entity sap.c4c.CodTimeReportAttachmentFolderTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CodTimeReportAttachmentFolderCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CodTimeEntryCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  AutoTimeRecordingIndicator : Boolean;
  BillingRelevanceIndicator : Boolean;
  Date : Date;
  Description : String(255);
  languageCode : String(2);
  Duration : String(20);
  EmployeeUUID : UUID;
  ID : String(35);
  InformationLifeCycleStatusCode : String(2);
  ItemReferenceUUID : UUID;
  BusinessTransactionDocumentTypeCode : String(15);
  LifeCycleStatusCode : String(2);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreationDateTime : Timestamp;
  CreationIdentityUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastChangeDateTime : Timestamp;
  LastChangeIdentityUUID : UUID;
  TimeReportUUID : UUID;
  TimeTypeCode : String(2);
  TimeZone : String(10);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
};

@cds.persistence.skip : true
entity sap.c4c.CodTimeEntrylanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CodTimeEntryInformationLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CodTimeEntryBusinessTransactionDocumentTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CodTimeEntryLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CodTimeEntryTimeTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CodTimeEntryTimeZoneCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CompetitorProductCollection {
  key ObjectID : String(70);
  CompetitorProductID : String(40);
  CompetitorProductUUID : UUID;
  CompetitorProductName : String(40);
  CompetitorID : String(10);
  ListPrice : Decimal(28, 6);
  Currency : String(3);
  BestSellerIndicator : Boolean;
  ProductComparison : String(1);
  OwnProductID : String(60);
  OwnProductName : String(40);
  OwnProductCategoryID : String(20);
  BaseUOM : String(3);
  Status : String(2);
  CreatedBy : String(480);
  LastChangedBy : String(480);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  CompetitorProductAttachmentFolder : Association to many sap.c4c.CompetitorProductAttachmentFolderCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CompetitorProductTextCollection : Association to many sap.c4c.CompetitorProductTextCollectionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Competitor : Association to one sap.c4c.CompetitorCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _OwnProduct : Association to one sap.c4c.ProductCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _OwnProductCategory : Association to one sap.c4c.ProductCategoryHierarchyCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.CompetitorProductCurrencyCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CompetitorProductProductComparisonCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CompetitorProductBaseUOMCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CompetitorProductStatusCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CompetitorProductAttachmentFolderCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  CompetitorProductInternalID : String(40);
  UUID : UUID;
  TypeCode : String(5);
  MimeType : LargeString;
  Binary : LargeBinary;
  DocumentLink : LargeString;
  Name : LargeString;
  CategoryCode : String(1);
  LinkWebURI : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastUpdatedOn : Timestamp;
  CreatedBy : String(80);
  LastUpdatedBy : String(80);
  SizeInkB : Decimal(31, 14);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  _CompetitorProduct : Association to one sap.c4c.CompetitorProductCollection on _CompetitorProduct.ObjectID = ParentObjectID;
};

@cds.persistence.skip : true
entity sap.c4c.CompetitorProductAttachmentFolderTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CompetitorProductAttachmentFolderCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CompetitorProductTextCollectionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  CompetitorProductInternalID : String(40);
  Text : LargeString;
  LanguageCode : String(2);
  TypeCode : String(5);
  AuthorName : String(40);
  AuthorUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  UpdatedOn : Timestamp;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  CompetitorProduct : Association to one sap.c4c.CompetitorProductCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _CompetitorProduct : Association to one sap.c4c.CompetitorProductCollection on _CompetitorProduct.ObjectID = ParentObjectID;
};

@cds.persistence.skip : true
entity sap.c4c.CompetitorProductTextCollectionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CompetitorProductTextCollectionTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceAssignmentCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  ProcessingTypeCode : String(4);
  ProcessingTypeCodeText : LargeString;
  CustomerTypeCode : String(15);
  CustomerTypeCodeText : LargeString;
  Customer : String(255);
  CustomerID : String(60);
  ServiceTechnicianTypeCode : String(15);
  ServiceTechnicianTypeCodeText : LargeString;
  ServiceTechnician : String(255);
  ServiceTechnicianID : String(60);
  TypeCode : String(15);
  TypeCodeText : LargeString;
  Subject : String(765);
  LifeCycleStatusCode : String(2);
  LifeCycleStatusCodeText : LargeString;
  ID : String(35);
  FullDayIndicator : Boolean;
  Status : String(5);
  StatusText : LargeString;
  AssignmentUUID : UUID;
  BusinessActivityUUID : UUID;
  StartDateTimeZoneCode : String(10);
  StartDateTimeZoneCodeText : LargeString;
  Priority : String(1);
  PriorityText : LargeString;
  DivisionCode : String(2);
  DivisionCodeText : LargeString;
  Released : String(1);
  ReleasedText : LargeString;
  Fixed : String(1);
  FixedText : LargeString;
  PrimaryContactID : String(60);
  PrimaryContact : String(255);
  PrimaryContactTypeCode : String(15);
  PrimaryContactTypeCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreationDateTime : Timestamp;
  CreatedBy : String(40);
  LastChangedBy : String(40);
  OrganizerID : String(60);
  OrganizerName : String(255);
  OrganizerTypeCode : String(15);
  OrganizerTypeCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EndDateTime : Timestamp;
  EndDateTimeZoneCode : String(10);
  EndDateTimeZoneCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  StartDateTime : Timestamp;
  AssignmentSchedulingSource : String(3);
  AssignmentSchedulingSourceText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  ServiceAssignmentBusinessTransactionDocReference : Association to many sap.c4c.ServiceAssignmentBusinessTransactionDocReferenceCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ServiceAssignmentNotes : Association to many sap.c4c.ServiceAssignmentNotesCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ServiceRequestAssignmentServiceRequestItem : Association to one sap.c4c.ServiceRequestAssignmentServiceRequestItemCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Customer : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ServiceTechnician : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _PrimaryContact : Association to one sap.c4c.ContactCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Organizer : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ServiceAssignmentProcessingTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceAssignmentCustomerTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceAssignmentServiceTechnicianTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceAssignmentTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceAssignmentLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceAssignmentStatusCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceAssignmentStartDateTimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceAssignmentPriorityCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceAssignmentDivisionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceAssignmentReleasedCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceAssignmentFixedCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceAssignmentPrimaryContactTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceAssignmentOrganizerTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceAssignmentEndDateTimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceAssignmentAssignmentSchedulingSourceCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceAssignmentBusinessTransactionDocReferenceCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  ReferenceDocumentID : String(35);
  ReferenceDocumentItemID : String(10);
  ReferenceDocumentItemTypeCode : String(5);
  ReferenceDocumentItemTypeCodeText : LargeString;
  ReferenceDocumentItemUUID : UUID;
  ReferenceDocumentTypeCode : String(15);
  ReferenceDocumentTypeCodeText : LargeString;
  ReferenceDocumentUUID : UUID;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceAssignmentBusinessTransactionDocReferenceReferenceDocumentItemTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceAssignmentBusinessTransactionDocReferenceReferenceDocumentTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceAssignmentNotesCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  Text : LargeString;
  LanguageCode : String(2);
  LanguageCodeText : LargeString;
  TypeCode : String(5);
  TypeCodeText : LargeString;
  AuthorName : String(40);
  AuthorUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  UpdatedOn : Timestamp;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceAssignmentNotesLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceAssignmentNotesTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestAssignmentServiceRequestItemCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  ServiceRequestItemID : String(10);
  ItemProcessingTypeCode : String(4);
  ItemProcessingTypeCodeText : LargeString;
  ServiceRequestID : String(35);
  TicketTypeCode : String(4);
  TicketTypeCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  _ServiceRequestItem : Association to one sap.c4c.ServiceRequestItemCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ServiceRequest : Association to one sap.c4c.ServiceRequestCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestAssignmentServiceRequestItemItemProcessingTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestAssignmentServiceRequestItemTicketTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.JobDefinitionCollection {
  key ObjectID : String(70);
  JobID : String(20);
  JobName : String(40);
  ExpirationDate : Date;
  @cds.ambiguous : 'missing on condition?'
  JobDefinitionAttachmentFolder : Association to many sap.c4c.JobDefinitionAttachmentFolderCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.JobDefinitionAttachmentFolderCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  Binary : LargeBinary;
  CategoryCode : String(1);
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  DocumentLink : LargeString;
  JobJobID : String(20);
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastUpdatedOn : Timestamp;
  LinkWebURI : LargeString;
  MimeType : LargeString;
  Name : LargeString;
  ParentObjectID : String(70);
  SizeInkB : Decimal(31, 14);
  TypeCode : String(5);
  UUID : UUID;
  @cds.ambiguous : 'missing on condition?'
  _Job : Association to one sap.c4c.JobDefinitionCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.JobDefinitionAttachmentFolderCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.JobDefinitionAttachmentFolderTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InternalPriceDiscountListCollection {
  key ObjectID : String(70);
  PriceDiscountListID : String(60);
  Description : String(40);
  DescriptionLanguageCode : String(2);
  CurrencyCode : String(3);
  ValidityStartDate : Date;
  @odata.precision : 0
  @odata.type : 'Edm.DateTimeOffset'
  ValidityEndDate : DateTime;
  ReleaseStatusCode : String(2);
  IsBasePriceList : Boolean;
  IsBasePriceListByProdCategory : Boolean;
  IsDistributionChainPriceList : Boolean;
  IsDistributionChainPriceListByProdCategory : Boolean;
  IsAccountHierarchySpecificPriceList : Boolean;
  IsCustomerGroupSpecificPriceList : Boolean;
  IsCustomerSpecificPriceList : Boolean;
  IsOverallCustomerDiscount : Boolean;
  IsOverallCustomerGroupDiscount : Boolean;
  IsAccountHierarchySpecificDiscountList : Boolean;
  IsCustomerSpecificDiscountProducts : Boolean;
  IsCustomerSpecificDiscountProductCategory : Boolean;
  ProductCategoryID : String(50);
  SalesOrgID : String(50);
  DistributionChannel : String(50);
  CustomerGroup : String(50);
  AccountID : String(50);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  InternalPriceDiscountListItems : Association to many sap.c4c.InternalPriceDiscountListItemsCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ProductCategory : Association to one sap.c4c.ProductCategoryHierarchyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesOrg : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Account : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.InternalPriceDiscountListDescriptionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InternalPriceDiscountListCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InternalPriceDiscountListReleaseStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InternalPriceDiscountListItemsCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  PriceDiscountListID : String(60);
  Amount : Decimal(28, 6);
  AmountCurrencyCode : String(3);
  PriceUnitContent : Decimal(31, 14);
  PriceUnitCode : String(3);
  Percent : Decimal(16, 6);
  ProductID : String(50);
  AccountID : String(50);
  CustomerGroup : String(50);
  ProductCategoryID : String(50);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  InternalPriceDiscountList : Association to one sap.c4c.InternalPriceDiscountListCollection {  };
  @cds.ambiguous : 'missing on condition?'
  InternalPriceListScaleLines : Association to many sap.c4c.InternalPriceListScaleLinesCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Product : Association to one sap.c4c.ProductCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Account : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ProductCategory : Association to one sap.c4c.ProductCategoryHierarchyCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.InternalPriceDiscountListItemsAmountCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InternalPriceDiscountListItemsPriceUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InternalPriceListScaleLinesCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  PriceListID : String(60);
  ScaleFromQuantity : String(100);
  AmountRate : Decimal(31, 14);
  @cds.ambiguous : 'missing on condition?'
  InternalPriceDiscountListItems : Association to one sap.c4c.InternalPriceDiscountListItemsCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _PriceList : Association to one sap.c4c.InternalPriceDiscountListCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.BuyingCenterCollection {
  key ObjectID : String(70);
  BuyingCenterID : String(35);
  ObjectUUID : UUID;
  ObjectTypeCode : String(15);
  CustomerID : String(10);
  OpportunityID : String(35);
  Name : String(255);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  BuyingCenterRelationship : Association to many sap.c4c.BuyingCenterRelationshipCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Customer : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Opportunity : Association to one sap.c4c.OpportunityCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.BuyingCenterObjectTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.BuyingCenterRelationshipCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  BuyingCenterID : String(35);
  FirstBusinessPartnerUUID : UUID;
  SecondBusinessPartnerUUID : UUID;
  SecondBusinessPartnerEmployeeUUID : UUID;
  UUID : UUID;
  FirstBusinessPartnerID : String(10);
  SecondBusinessPartnerID : String(10);
  BuyingCenterRelationshipTypeCode : String(6);
  BusinessPartnerRelationshipTypeCode : String(16);
  BusinessPartnerRelationshipPrimary : Boolean;
  BuyingCenterAttitude : String(1);
  BuyingCenterStrengthOfInfluence : String(1);
  BuyingCenterLevelOfInfluence : Decimal(16, 6);
  BuyingCenterFrequencyOfInteraction : String(1);
  BuyingCenterNotes : String(255);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  BuyingCenter : Association to one sap.c4c.BuyingCenterCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _FirstBusinessPartner : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SecondBusinessPartner : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.BuyingCenterRelationshipBuyingCenterRelationshipTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.BuyingCenterRelationshipBusinessPartnerRelationshipTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.BuyingCenterRelationshipBuyingCenterAttitudeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.BuyingCenterRelationshipBuyingCenterStrengthOfInfluenceCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.BuyingCenterRelationshipBuyingCenterFrequencyOfInteractionCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EmployeeCollection {
  key ObjectID : String(70);
  EmployeeID : String(20);
  UUID : UUID;
  UserID : String(40);
  IdentityUUID : UUID;
  GlobalUserID : String(36);
  BusinessPartnerID : String(10);
  EmployeeValidityStartDate : Date;
  EmployeeValidityEndDate : Date;
  BusinessPartnerFormattedName : String(480);
  TitleCode : String(4);
  TitleCodeText : LargeString;
  AcademicTitleCode : String(4);
  AcademicTitleCodeText : LargeString;
  FirstName : String(40);
  MiddleName : String(40);
  LastName : String(40);
  SecondLastName : String(40);
  NickName : String(40);
  GenderCode : String(1);
  GenderCodeText : LargeString;
  MaritalStatusCode : String(1);
  MaritalStatusCodeText : LargeString;
  LanguageCode : String(2);
  LanguageCodeText : LargeString;
  NationalityCountryCode : String(3);
  NationalityCountryCodeText : LargeString;
  BirthName : String(40);
  BirthDate : Date;
  BirthPlace : String(40);
  FormattedPostalAddressDescription : String(480);
  CountryCode : String(3);
  CountryCodeText : LargeString;
  RegionCode : String(6);
  RegionCodeText : LargeString;
  CareOfName : String(40);
  AddressLine1 : String(40);
  AddressLine2 : String(40);
  HouseNumber : String(10);
  Street : String(60);
  AddressLine4 : String(40);
  AddressLine5 : String(40);
  District : String(40);
  City : String(40);
  DifferentCity : String(40);
  PostalCode : String(10);
  County : String(40);
  CompanyPostalCode : String(10);
  POBox : String(10);
  POBoxPostalCode : String(10);
  POBoxCountryCode : String(3);
  POBoxCountryCodeText : LargeString;
  POBoxRegionCode : String(6);
  POBoxRegionCodeText : LargeString;
  POBoxCity : String(40);
  TimeZoneCode : String(10);
  TimeZoneCodeText : LargeString;
  TaxJurisdictionCode : String(25);
  TaxJurisdictionCodeText : LargeString;
  Building : String(10);
  Floor : String(10);
  Room : String(10);
  InhouseMail : String(10);
  OfficePhoneNumber : String(40);
  NormalisedOfficePhoneNumber : String(40);
  MobilePhoneNumber : String(40);
  NormalisedMobilePhoneNumber : String(40);
  FaxNumber : String(40);
  Email : String(255);
  UserValidityStartDate : Date;
  UserValidityEndDate : Date;
  UserPasswordPolicyCode : String(40);
  UserPasswordPolicyCodeText : LargeString;
  UserLockedIndicator : Boolean;
  UserCountedIndicator : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(480);
  CreatedByIdentityUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ChangedOn : Timestamp;
  ChangedBy : String(480);
  ChangedByIdentityUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  BusinessUser : Association to one sap.c4c.BusinessUserCollection {  };
  @cds.ambiguous : 'missing on condition?'
  EmployeeOrganisationalUnitAssignment : Association to many sap.c4c.EmployeeOrganisationalUnitAssignmentCollection {  };
  @cds.ambiguous : 'missing on condition?'
  EmployeeSalesResponsibility : Association to many sap.c4c.EmployeeSalesResponsibilityCollection {  };
  @cds.ambiguous : 'missing on condition?'
  EmployeeSkills : Association to many sap.c4c.EmployeeSkillsCollection {  };
  @cds.ambiguous : 'missing on condition?'
  EmployeeUserBusinessRoleAssignment : Association to many sap.c4c.EmployeeUserBusinessRoleAssignmentCollection {  };
  @cds.ambiguous : 'missing on condition?'
  EmployeeUserSubscriptionAssignment : Association to many sap.c4c.EmployeeUserSubscriptionAssignmentCollection {  };
  @cds.ambiguous : 'missing on condition?'
  EmployeeWorkingHours : Association to many sap.c4c.EmployeeWorkingHoursCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _BusinessPartner : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.EmployeeTitleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EmployeeAcademicTitleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EmployeeGenderCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EmployeeMaritalStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EmployeeLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EmployeeNationalityCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EmployeeCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EmployeeRegionCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EmployeePOBoxCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EmployeePOBoxRegionCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EmployeeTimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EmployeeTaxJurisdictionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EmployeeUserPasswordPolicyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EmployeeSalesResponsibilityCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  EmployeeID : String(20);
  SalesOrganisationID : String(20);
  DistributionChannelCode : String(2);
  DistributionChannelCodeText : LargeString;
  DivisionCode : String(2);
  DivisionCodeText : LargeString;
  MainIndicator : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Employee : Association to one sap.c4c.EmployeeCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesOrganisation : Association to one sap.c4c.OrganisationalUnitCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.EmployeeSalesResponsibilityDistributionChannelCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EmployeeSalesResponsibilityDivisionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EmployeeOrganisationalUnitAssignmentCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  EmployeeID : String(20);
  OrgUnitID : String(20);
  RoleCode : String(10);
  RoleCodeText : LargeString;
  StartDate : Date;
  EndDate : Date;
  JobID : String(20);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Employee : Association to one sap.c4c.EmployeeCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _OrgUnit : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Job : Association to one sap.c4c.JobDefinitionCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.EmployeeOrganisationalUnitAssignmentRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EmployeeUserBusinessRoleAssignmentCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  EmployeeID : String(20);
  UserID : String(40);
  BusinessRoleID : String(255);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  _Employee : Association to one sap.c4c.EmployeeCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _User : Association to one sap.c4c.BusinessUserCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.EmployeeUserSubscriptionAssignmentCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  EmployeeID : String(20);
  UserID : String(40);
  UserTypeCode : String(3);
  UserTypeCodeText : LargeString;
  UserSubscriptionTypeCode : String(40);
  UserSubscriptionTypeCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  _Employee : Association to one sap.c4c.EmployeeCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _User : Association to one sap.c4c.BusinessUserCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.EmployeeUserSubscriptionAssignmentUserTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EmployeeUserSubscriptionAssignmentUserSubscriptionTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EmployeeWorkingHoursCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  EmployeeID : String(20);
  WorkingHoursType : String(2);
  WorkingHoursTypeText : LargeString;
  StartDate : Date;
  EndDate : Date;
  TimeZoneCode : String(10);
  TimeZoneCodeText : LargeString;
  WorkingDayCalendarCode : String(6);
  WorkingDayCalendarCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Employee : Association to one sap.c4c.EmployeeCollection {  };
  @cds.ambiguous : 'missing on condition?'
  EmployeeWorkingHoursRecurrence : Association to many sap.c4c.EmployeeWorkingHoursRecurrenceCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.EmployeeWorkingHoursWorkingHoursTypeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EmployeeWorkingHoursTimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EmployeeWorkingHoursWorkingDayCalendarCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EmployeeWorkingHoursRecurrenceCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  EmployeeID : String(20);
  MondayIndicator : Boolean;
  TuesdayIndicator : Boolean;
  WednesdayIndicator : Boolean;
  ThursdayIndicator : Boolean;
  FridayIndicator : Boolean;
  SaturdayIndicator : Boolean;
  SundayIndicator : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  EmployeeWorkingHours : Association to one sap.c4c.EmployeeWorkingHoursCollection {  };
  @cds.ambiguous : 'missing on condition?'
  EmployeeWorkingHoursOperatingPeriod : Association to many sap.c4c.EmployeeWorkingHoursOperatingPeriodCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Employee : Association to one sap.c4c.EmployeeCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.EmployeeWorkingHoursOperatingPeriodCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  EmployeeID : String(20);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  EmployeeWorkingHoursRecurrence : Association to one sap.c4c.EmployeeWorkingHoursRecurrenceCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Employee : Association to one sap.c4c.EmployeeCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.EmployeeSkillsCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  EmployeeID : String(20);
  SkillID : String(20);
  ValidFrom : Date;
  ValidTo : Date;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Employee : Association to one sap.c4c.EmployeeCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.TimeEntryCollection {
  key ObjectID : String(70);
  UUID : UUID;
  InternalID : String(10);
  BusinessPartnerFormattedName : String(480);
  ServiceRequestID : String(35);
  AutoTimeRecordingIndicator : Boolean;
  BillingRelevanceIndicator : Boolean;
  Date : Date;
  Duration : String(20);
  EmployeeUUID : UUID;
  Description : String(255);
  languageCode : String(2);
  HeaderReferenceUUID : UUID;
  ID : String(35);
  InformationLifeCycleStatusCode : String(2);
  ItemReferenceUUID : UUID;
  BusinessTransactionDocumentTypeCode : String(15);
  LifeCycleStatusCode : String(2);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastChangeDateTime : Timestamp;
  TimeReportUUID : UUID;
  TimeTypeCode : String(2);
  TimeZone : String(10);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreationDateTime : Timestamp;
  LastChangeIdentityUUID : UUID;
  CreationIdentityUUID : UUID;
  EmployeeID : String(60);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  TimeEntryItem : Association to many sap.c4c.TimeEntryItemCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Employee : Association to one sap.c4c.EmployeeCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ServiceRequest : Association to one sap.c4c.ServiceRequestCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.TimeEntrylanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.TimeEntryInformationLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.TimeEntryBusinessTransactionDocumentTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.TimeEntryLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.TimeEntryTimeTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.TimeEntryTimeZoneCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.TimeEntryItemCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  TimeItemDuration : String(20);
  TimeItemEndDate : Date;
  ID : String(10);
  ProductID : String(40);
  ServiceItemUUID : UUID;
  TimeItemStartDate : Date;
  TimeItemUUID : UUID;
  TimeZoneCode : String(10);
  UUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  TimeEntry : Association to one sap.c4c.TimeEntryCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Product : Association to one sap.c4c.ProductCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.TimeEntryItemTimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PaymentCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  AccountPartyID : String(60);
  AccountPartyName : String(480);
  Amount : Decimal(28, 6);
  AmountCurrencyCode : String(3);
  BankName : String(255);
  ChequeDate : Date;
  ChequeNumber : String(20);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreationDate : Timestamp;
  EmployeeResponsible : String(480);
  EmployeeResposibleID : String(60);
  ID : String(35);
  InformationLifeCycleStatusCode : String(2);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastChangeDate : Timestamp;
  Name : String(255);
  Payer : String(255);
  PaymentDate : Date;
  PaymentMode : String(2);
  PaymentStatusCode : String(2);
  TransferStatusCode : String(2);
  @cds.ambiguous : 'missing on condition?'
  PaymentAttachmentFolder : Association to many sap.c4c.PaymentAttachmentFolderCollection {  };
  @cds.ambiguous : 'missing on condition?'
  PaymentInvoiceReference : Association to many sap.c4c.PaymentInvoiceReferenceCollection {  };
  @cds.ambiguous : 'missing on condition?'
  PaymentParty : Association to many sap.c4c.PaymentPartyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  PaymentTextCollection : Association to many sap.c4c.PaymentTextCollectionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _AccountParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _EmployeeResposible : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.PaymentAmountCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PaymentInformationLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PaymentPaymentModeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PaymentPaymentStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PaymentTransferStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PaymentAttachmentFolderCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  Binary : LargeBinary;
  CategoryCode : String(1);
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  DocumentLink : LargeString;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastUpdatedOn : Timestamp;
  LinkWebURI : LargeString;
  MimeType : LargeString;
  Name : LargeString;
  ParentObjectID : String(70);
  PaymentID : String(35);
  SizeInkB : Decimal(31, 14);
  TypeCode : String(5);
  UUID : UUID;
  @cds.ambiguous : 'missing on condition?'
  _Payment : Association to one sap.c4c.PaymentCollection on _Payment.ObjectID = ParentObjectID;
};

@cds.persistence.skip : true
entity sap.c4c.PaymentAttachmentFolderCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PaymentAttachmentFolderTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PaymentInvoiceReferenceCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  CreationDate : Date;
  DueAmount : Decimal(28, 6);
  DueAmountCurrencyCode : String(3);
  ID : String(35);
  InvoiceAmount : Decimal(28, 6);
  InvoiceAmountCurrencyCode : String(3);
  InvoiceAmountPaid : Decimal(28, 6);
  Name : String(255);
  ParentObjectID : String(70);
  currencyCode : String(3);
  @cds.ambiguous : 'missing on condition?'
  Payment : Association to one sap.c4c.PaymentCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.PaymentInvoiceReferenceDueAmountCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PaymentInvoiceReferenceInvoiceAmountCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PaymentInvoiceReferencecurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PaymentPartyCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  Address : String(480);
  ID : String(60);
  MainIndicator : Boolean;
  Name : String(480);
  ParentObjectID : String(70);
  Phone : String(350);
  RoleCode : String(10);
  URI : String(765);
  @cds.ambiguous : 'missing on condition?'
  Payment : Association to one sap.c4c.PaymentCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.PaymentPartyRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PaymentTextCollectionCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  AuthorName : String(40);
  AuthorUUID : UUID;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  LanguageCode : String(2);
  LastUpdatedBy : String(80);
  ParentObjectID : String(70);
  PaymentID : String(35);
  Text : LargeString;
  TypeCode : String(5);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  UpdatedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  _Payment : Association to one sap.c4c.PaymentCollection on _Payment.ObjectID = ParentObjectID;
};

@cds.persistence.skip : true
entity sap.c4c.PaymentTextCollectionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PaymentTextCollectionTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.VehicleCollection {
  key ObjectID : String(70);
  CustomerID : String(60);
  ProductUUID : UUID;
  VIN : String(30);
  Description : String(40);
  LicensePlateNumber : String(30);
  ModelYear : String(4);
  OdometerReading : String(22);
  TUVValidity : Date;
  ID : String(35);
  RegisteredProductCategory : String(3);
  ProductID : String(60);
  ModelCatalog : String(4);
  ModelSalesCode : String(18);
  DeliveryDate : Date;
  PurchaseDate : Date;
  RegistrationDate : Date;
  IndividualProductUUID : UUID;
  InstallationPointUUID : UUID;
  ChassisNumber : String(30);
  CSNumber : String(40);
  EngineCapacity : Decimal(17);
  EngineCapacityUnitCode : String(3);
  EngineNumber : String(40);
  FuelType : String(4);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  _Customer : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Product : Association to one sap.c4c.ProductCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.VehicleRegisteredProductCategoryCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.VehicleModelCatalogCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.VehicleEngineCapacityUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.VehicleFuelTypeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.StockLocationCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  ID : String(35);
  Type : String(4);
  TypeText : LargeString;
  ServiceTechnician : String(20);
  ServiceOrganisation : String(20);
  ServiceTeam : String(20);
  Plant : String(10);
  StorageLocation : String(10);
  Customer : String(10);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreationDateTime : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastChangeDateTime : Timestamp;
  CreatedBy : String(40);
  LastChangedBy : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  StockLocationDescription : Association to many sap.c4c.StockLocationDescriptionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  StockLocationItem : Association to many sap.c4c.StockLocationItemCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.StockLocationTypeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.StockLocationDescriptionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  StockLocationID : String(35);
  Description : String(40);
  languageCode : String(2);
  languageCodeText : LargeString;
  @cds.ambiguous : 'missing on condition?'
  StockLocation : Association to one sap.c4c.StockLocationCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.StockLocationDescriptionlanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.StockLocationItemCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  ID : String(10);
  MaterialID : String(40);
  StockLocationID : String(35);
  ValuatedUnrestrictedUseStock : Decimal(31, 14);
  ValuatedUnrestrictedUseStockUnitCode : String(3);
  ValuatedUnrestrictedUseStockUnitCodeText : LargeString;
  SpecialStockIndicator : String(1);
  AccountNumberOfVendorOrCreditor : String(10);
  SalesandDistributionDocumentNumber : String(10);
  StockInQualityInspection : Decimal(31, 14);
  StockInQualityInspectionUnitCode : String(3);
  StockInQualityInspectionUnitCodeText : LargeString;
  BlockedStock : Decimal(31, 14);
  BlockedStockUnitCode : String(3);
  BlockedStockUnitCodeText : LargeString;
  BlockedStockReturns : Decimal(31, 14);
  BlockedStockReturnsUnitCode : String(3);
  BlockedStockReturnsUnitCodeText : LargeString;
  ConsignmentStockInQualityInspection : Decimal(31, 14);
  ConsignmentStockInQualityInspectionUnitCode : String(3);
  ConsignmentStockInQualityInspectionUnitCodeText : LargeString;
  UnrestrictedUseConsignmentStock : Decimal(31, 14);
  UnrestrictedUseConsignmentStockUnitCode : String(3);
  UnrestrictedUseConsignmentStockUnitCodeText : LargeString;
  BlockedConsignmentStock : Decimal(31, 14);
  BatchNumber : String(10);
  BaseUnitofMeasure : String(3);
  BaseUnitofMeasureText : LargeString;
  WorkBreakdownStructureElement : String(10);
  @cds.ambiguous : 'missing on condition?'
  StockLocation : Association to one sap.c4c.StockLocationCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Material : Association to one sap.c4c.ProductCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.StockLocationItemValuatedUnrestrictedUseStockUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.StockLocationItemStockInQualityInspectionUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.StockLocationItemBlockedStockUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.StockLocationItemBlockedStockReturnsUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.StockLocationItemConsignmentStockInQualityInspectionUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.StockLocationItemUnrestrictedUseConsignmentStockUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.StockLocationItemBaseUnitofMeasureCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.DealRegistrationCollection {
  key ObjectID : String(70);
  DealID : String(35);
  DealName : String(255);
  AccountID : String(60);
  AccountName : String(480);
  UserStatusCode : String(2);
  UserStatusCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  StartDate : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EndDate : Timestamp;
  Owner_ID : String(60);
  OwnerName : String(480);
  Campaign_ID : String(35);
  Engagement_Type : String(4);
  Engagement_TypeText : LargeString;
  TotalValueAmount : Decimal(28, 6);
  TotalValueCurrencyCode : String(3);
  TotalValueCurrencyCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  DealBTDRef : Association to many sap.c4c.DealBTDRefCollection {  };
  @cds.ambiguous : 'missing on condition?'
  DealItem : Association to many sap.c4c.DealItemCollection {  };
  @cds.ambiguous : 'missing on condition?'
  DealQuestionnaire : Association to many sap.c4c.DealQuestionnaireCollection {  };
  @cds.ambiguous : 'missing on condition?'
  Party : Association to many sap.c4c.PartyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  Question : Association to many sap.c4c.QuestionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Account : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Owner : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Campaign_ : Association to one sap.c4c.CampaignCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.DealRegistrationUserStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.DealRegistrationEngagement_TypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.DealRegistrationTotalValueCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.DealItemCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  DealID : String(35);
  ProductDescription : String(40);
  ProductID : String(60);
  ProductUUID : UUID;
  ProductName : String(40);
  ProductQuantity : Decimal(31, 14);
  ProductQuantityunitCode : String(3);
  ProductQuantityunitCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  DealRegistration : Association to one sap.c4c.DealRegistrationCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Product : Association to one sap.c4c.ProductCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.DealItemProductQuantityunitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartyCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  DealID : String(35);
  RoleCategoryCode : String(3);
  RoleCategoryCodeText : LargeString;
  RoleCode : String(10);
  RoleCodeText : LargeString;
  PartyID : String(60);
  PartyTypeCode : String(15);
  PartyTypeCodeText : LargeString;
  PartyUUID : UUID;
  MainIndicator : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  DealRegistration : Association to one sap.c4c.DealRegistrationCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.PartyRoleCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartyRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PartyPartyTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.DealBTDRefCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  DealID : String(35);
  ID : String(35);
  TypeCode : String(15);
  TypeCodeText : LargeString;
  BusinessTransactionDocumentRelationshipRoleCode : String(3);
  BusinessTransactionDocumentRelationshipRoleCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  DealRegistration : Association to one sap.c4c.DealRegistrationCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.DealBTDRefTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.DealBTDRefBusinessTransactionDocumentRelationshipRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.QuestionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  LeadUUID : UUID;
  QuestionID : String(10);
  CodeAnswer : String(2);
  CodeAnswerText : LargeString;
  AnswerType : String(3);
  AnswerTypeText : LargeString;
  DescriptiveAnswer : String(50);
};

@cds.persistence.skip : true
entity sap.c4c.QuestionCodeAnswerCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.QuestionAnswerTypeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.DealQuestionnaireCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  DealID : String(35);
  QuestionID : String(10);
  CodeAnswer : String(2);
  CodeAnswerText : LargeString;
  AnswerType : String(3);
  AnswerTypeText : LargeString;
  DescriptiveAnswer : String(50);
  @cds.ambiguous : 'missing on condition?'
  _Deal : Association to one sap.c4c.DealRegistrationCollection on _Deal.ObjectID = ParentObjectID;
  @cds.ambiguous : 'missing on condition?'
  _Question : Association to one sap.c4c.QuestionCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.DealQuestionnaireCodeAnswerCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.DealQuestionnaireAnswerTypeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InstalledBaseCollection {
  key ObjectID : String(70);
  ID : String(40);
  LifeCycleStatusCode : String(2);
  LifeCycleStatusCodeText : LargeString;
  SalesTerritoryID : String(6);
  ServiceTerritoryID : String(6);
  Country : String(3);
  CountryText : LargeString;
  State : String(6);
  StateText : LargeString;
  County : String(240);
  District : String(240);
  Building : String(10);
  Floor : String(10);
  Room : String(10);
  House : String(100);
  AdditionalHouse : String(100);
  AddressLine1 : String(240);
  AddressLine2 : String(240);
  StreetName : String(60);
  AddressLine4 : String(240);
  AddressLine5 : String(240);
  City : String(240);
  AdditionalCityName : String(240);
  StreetPostalCode : String(100);
  POBoxPostalCode : String(100);
  CompanyPostalCode : String(100);
  TaxJurisdictionCode : String(25);
  TaxJurisdictionCodeText : LargeString;
  TimeZoneCode : String(10);
  TimeZoneCodeText : LargeString;
  LatitudeMeasure : Decimal(31, 14);
  LatitudeMeasureUnitCode : String(3);
  LatitudeMeasureUnitCodeText : LargeString;
  LongitudeMeasure : Decimal(31, 14);
  LongitudeMeasureUnitCode : String(3);
  LongitudeMeasureUnitCodeText : LargeString;
  OrganisationNameFirstLine : String(240);
  OrganisationNameSecondLine : String(240);
  OrganisationNameThirdLine : String(240);
  OrganisationNameFourthLine : String(240);
  FormOfAddressCode : String(4);
  FormOfAddressCodeText : LargeString;
  CustomerPartyID : String(60);
  CustomerMainContactPartyID : String(60);
  BillToPartyID : String(60);
  BillToMainContactPartyID : String(60);
  OwnerPartyID : String(60);
  OwnerMainContactPartyID : String(60);
  ShipToPartyID : String(60);
  ShipToMainContactPartyID : String(60);
  PayerPartyID : String(60);
  PayerMainContactPartyID : String(60);
  EmployeeResponsiblePartyID : String(60);
  ServiceTechnicianPartyID : String(60);
  ServiceTeamPartyID : String(60);
  ResponsiblePlannerPartyID : String(60);
  CreatedBy : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  LastChangedBy : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  InstalledBaseCompetitorProduct : Association to many sap.c4c.InstalledBaseCompetitorProductCollection {  };
  @cds.ambiguous : 'missing on condition?'
  InstalledBaseDescription : Association to many sap.c4c.InstalledBaseDescriptionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  InstalledBaseNotes : Association to many sap.c4c.InstalledBaseNotesCollection {  };
  @cds.ambiguous : 'missing on condition?'
  InstalledBaseOtherParties : Association to many sap.c4c.InstalledBaseOtherPartiesCollection {  };
  @cds.ambiguous : 'missing on condition?'
  InstalledBaseSkill : Association to many sap.c4c.InstalledBaseSkillCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesTerritory : Association to one sap.c4c.SalesTerritoryCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _CustomerParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _CustomerMainContactParty : Association to one sap.c4c.ContactCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _BillToParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _BillToMainContactParty : Association to one sap.c4c.ContactCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _OwnerParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _OwnerMainContactParty : Association to one sap.c4c.ContactCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ShipToParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ShipToMainContactParty : Association to one sap.c4c.ContactCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _PayerParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _PayerMainContactParty : Association to one sap.c4c.ContactCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _EmployeeResponsibleParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ServiceTechnicianParty : Association to one sap.c4c.EmployeeCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ServiceTeamParty : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ResponsiblePlannerParty : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.InstalledBaseLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InstalledBaseCountryCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InstalledBaseStateCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InstalledBaseTaxJurisdictionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InstalledBaseTimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InstalledBaseLatitudeMeasureUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InstalledBaseLongitudeMeasureUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InstalledBaseFormOfAddressCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InstalledBaseDescriptionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  InstalledBaseID : String(40);
  LanguageCode : String(2);
  LanguageCodeText : LargeString;
  Description : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  InstalledBase : Association to one sap.c4c.InstalledBaseCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.InstalledBaseDescriptionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InstalledBaseCompetitorProductCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  InstalledBaseID : String(40);
  CompetitorProductID : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  InstalledBase : Association to one sap.c4c.InstalledBaseCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _CompetitorProduct : Association to one sap.c4c.CompetitorProductCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.InstalledBaseNotesCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  InstalledBaseID : String(40);
  Text : LargeString;
  LanguageCode : String(2);
  LanguageCodeText : LargeString;
  FormattedText : LargeString;
  AuthorUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  AuthorName : String(40);
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  UpdatedOn : Timestamp;
  LastUpdatedBy : String(80);
  TechnicalUserIndicator : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  InstalledBase : Association to one sap.c4c.InstalledBaseCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.InstalledBaseNotesLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InstalledBaseOtherPartiesCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  InstalledBaseID : String(40);
  RoleCode : String(10);
  RoleCodeText : LargeString;
  PartyID : String(60);
  MainContactPartyID : String(60);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  InstalledBase : Association to one sap.c4c.InstalledBaseCollection {  };
  @cds.ambiguous : 'missing on condition?'
  InstalledBaseOtherContactParties : Association to many sap.c4c.InstalledBaseOtherContactPartiesCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _MainContactParty : Association to one sap.c4c.ContactCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.InstalledBaseOtherPartiesRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InstalledBaseSkillCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  InstalledBaseID : String(40);
  SkillID : String(20);
  Mandatory : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  InstalledBase : Association to one sap.c4c.InstalledBaseCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.InstalledBaseOtherContactPartiesCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  InstalledBaseID : String(40);
  RoleCode : String(10);
  RoleCodeText : LargeString;
  PartyID : String(60);
  ContactPartyID : String(60);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  InstalledBase : Association to one sap.c4c.InstalledBaseCollection {  };
  @cds.ambiguous : 'missing on condition?'
  InstalledBaseOtherParties : Association to one sap.c4c.InstalledBaseOtherPartiesCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ContactParty : Association to one sap.c4c.ContactCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.InstalledBaseOtherContactPartiesRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesTerritoryCollection {
  key ObjectID : String(70);
  Id : String(6);
  Name : String(40);
  ParentID : String(6);
  EmployeeResponsible : String(20);
  HierarchyLevelCode : String(4);
  HierarchyLevelCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  SalesTerritoryAccount : Association to many sap.c4c.SalesTerritoryAccountCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SalesTerritoryTeam : Association to many sap.c4c.SalesTerritoryTeamCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Parent : Association to one sap.c4c.SalesTerritoryCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SalesTerritoryHierarchyLevelCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesTerritoryAccountCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  TerritoryId : String(6);
  CustomerID : String(60);
  TerritoryAssignmentManualOverrideAllowedIndicator : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  SalesTerritory : Association to one sap.c4c.SalesTerritoryCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Customer : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SalesTerritoryTeamCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  TerritoryId : String(6);
  PartyRole : String(10);
  PartyRoleText : LargeString;
  EmployeeID : String(20);
  StartDate : Date;
  EndDate : Date;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  SalesTerritory : Association to one sap.c4c.SalesTerritoryCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Employee : Association to one sap.c4c.EmployeeCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SalesTerritoryTeamPartyRoleCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RegisteredProductCollection {
  key ObjectID : String(70);
  ID : String(40);
  SerialID : String(30);
  ProductID : String(60);
  RegisteredProductCategory : String(3);
  RegisteredProductCategoryText : LargeString;
  Status : String(2);
  StatusText : LargeString;
  BelongstoInstallationPointID : String(40);
  InstalledBaseID : String(40);
  ReferenceDate : String(14);
  ValidFrom : Date;
  ValidTo : Date;
  WarrantyID : String(60);
  WarrantyStartDate : Date;
  WarrantyEndDate : Date;
  StatusProfile : String(8);
  StatusProfileText : LargeString;
  UserStatus : String(5);
  UserStatusText : LargeString;
  SalesTerritoryID : String(6);
  ServiceTerritoryID : String(6);
  SalesOrganisationID : String(20);
  DistributionChannelCode : String(2);
  DistributionChannelCodeText : LargeString;
  DivisionCode : String(2);
  DivisionCodeText : LargeString;
  SalesOfficeID : String(20);
  SalesGroupID : String(20);
  ServiceOrganisationID : String(20);
  Country : String(3);
  CountryText : LargeString;
  State : String(6);
  StateText : LargeString;
  County : String(240);
  District : String(240);
  Building : String(10);
  Floor : String(10);
  Room : String(10);
  House : String(100);
  AdditionalHouseID : String(100);
  AddressLine1 : String(240);
  AddressLine2 : String(240);
  Street : String(60);
  AddressLine4 : String(240);
  AddressLine5 : String(240);
  City : String(240);
  AdditionalCityName : String(240);
  PostalCode : String(100);
  CareOfName : String(240);
  POBoxID : String(100);
  POBoxPostalCode : String(100);
  CompanyPostalCode : String(100);
  TaxJurisdictionCode : String(25);
  TaxJurisdictionCodeText : LargeString;
  TimeZoneCode : String(10);
  TimeZoneCodeText : LargeString;
  Latitude : Decimal(31, 14);
  LatitudeUnitCode : String(3);
  LatitudeUnitCodeText : LargeString;
  Longitude : Decimal(31, 14);
  LongitudeUnitCode : String(3);
  LongitudeUnitCodeText : LargeString;
  CreatedBy : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreationDateTime : Timestamp;
  ChangedBy : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastChangeDateTime : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  RegisteredProductAttachmentFolder : Association to many sap.c4c.RegisteredProductAttachmentFolderCollection {  };
  @cds.ambiguous : 'missing on condition?'
  RegisteredProductDescription : Association to many sap.c4c.RegisteredProductDescriptionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  RegisteredProductPartyInformation : Association to many sap.c4c.RegisteredProductPartyInformationCollection {  };
  @cds.ambiguous : 'missing on condition?'
  RegisteredProductSkills : Association to many sap.c4c.RegisteredProductSkillsCollection {  };
  @cds.ambiguous : 'missing on condition?'
  RegisteredProductTextCollection : Association to many sap.c4c.RegisteredProductTextCollectionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Product : Association to one sap.c4c.ProductCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _BelongstoInstallationPoint : Association to one sap.c4c.InstallationPointCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _InstalledBase : Association to one sap.c4c.InstalledBaseCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesTerritory : Association to one sap.c4c.SalesTerritoryCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesOrganisation : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesOffice : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesGroup : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ServiceOrganisation : Association to one sap.c4c.OrganisationalUnitCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.RegisteredProductRegisteredProductCategoryCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RegisteredProductStatusCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RegisteredProductStatusProfileCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RegisteredProductUserStatusCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RegisteredProductDistributionChannelCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RegisteredProductDivisionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RegisteredProductCountryCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RegisteredProductStateCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RegisteredProductTaxJurisdictionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RegisteredProductTimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RegisteredProductLatitudeUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RegisteredProductLongitudeUnitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RegisteredProductDescriptionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  RegisteredProductID : String(40);
  languageCode : String(2);
  languageCodeText : LargeString;
  Description : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  _RegisteredProduct : Association to one sap.c4c.RegisteredProductCollection on _RegisteredProduct.ObjectID = ParentObjectID;
};

@cds.persistence.skip : true
entity sap.c4c.RegisteredProductDescriptionlanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RegisteredProductPartyInformationCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  RegisteredProductID : String(40);
  RoleCode : String(10);
  RoleCodeText : LargeString;
  PartyID : String(60);
  ContactPartyID : String(60);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  RegisteredProduct : Association to one sap.c4c.RegisteredProductCollection {  };
  @cds.ambiguous : 'missing on condition?'
  RegisteredProductOtherPartyContactParties : Association to many sap.c4c.RegisteredProductOtherPartyContactPartiesCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ContactParty : Association to one sap.c4c.ContactCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.RegisteredProductPartyInformationRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RegisteredProductSkillsCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  RegisteredProductID : String(40);
  SkillID : String(20);
  Mandatory : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  RegisteredProduct : Association to one sap.c4c.RegisteredProductCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.RegisteredProductTextCollectionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  RegisteredProductID : String(40);
  Text : LargeString;
  LanguageCode : String(2);
  LanguageCodeText : LargeString;
  FormattedText : LargeString;
  TypeCode : String(5);
  TypeCodeText : LargeString;
  AuthorUUID : UUID;
  AuthorName : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  UpdatedOn : Timestamp;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  TechnicalUserIndicator : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  RegisteredProduct : Association to one sap.c4c.RegisteredProductCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.RegisteredProductTextCollectionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RegisteredProductTextCollectionTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RegisteredProductOtherPartyContactPartiesCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  RegisteredProductID : String(40);
  RoleCode : String(10);
  RoleCodeText : LargeString;
  PartyID : String(60);
  ContactPartyID : String(60);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  RegisteredProduct : Association to one sap.c4c.RegisteredProductCollection {  };
  @cds.ambiguous : 'missing on condition?'
  RegisteredProductPartyInformation : Association to one sap.c4c.RegisteredProductPartyInformationCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ContactParty : Association to one sap.c4c.ContactCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.RegisteredProductOtherPartyContactPartiesRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RegisteredProductAttachmentFolderCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  UUID : UUID;
  Name : LargeString;
  MimeType : LargeString;
  Binary : LargeBinary;
  SizeInkB : Decimal(31, 14);
  DocumentLink : LargeString;
  OutputRelevanceIndicator : Boolean;
  LinkWebURI : LargeString;
  TypeCode : String(5);
  TypeCodeText : LargeString;
  CategoryCode : String(1);
  CategoryCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastUpdatedOn : Timestamp;
  LastUpdatedBy : String(80);
  Title : LargeString;
  RegisteredProductID : String(40);
  @cds.ambiguous : 'missing on condition?'
  _RegisteredProduct : Association to one sap.c4c.RegisteredProductCollection on _RegisteredProduct.ObjectID = ParentObjectID;
};

@cds.persistence.skip : true
entity sap.c4c.RegisteredProductAttachmentFolderTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RegisteredProductAttachmentFolderCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CampaignCollection {
  key ObjectID : String(70);
  CampaignType : String(3);
  CampaignTypeText : LargeString;
  CampaignID : String(35);
  CampaignName : String(80);
  EndDate : Date;
  StartDate : Date;
  Status : String(2);
  StatusText : LargeString;
  ChannelTypeCode : String(3);
  ChannelTypeCodeText : LargeString;
  TargetGroupID : String(10);
  SalesOrganization : String(20);
  EmployeeResponsibleID : String(20);
  ReferenceID : String(35);
  ReferenceBusinessSystemID : String(32);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  CampaignAttachments : Association to many sap.c4c.CampaignAttachmentsCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CampaignInboundBusinessTransactionDocumentReference : Association to many sap.c4c.CampaignInboundBusinessTransactionDocumentReferenceCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CampaignNotes : Association to many sap.c4c.CampaignNotesCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CampaignOutboundMarketingActivity : Association to many sap.c4c.CampaignOutboundMarketingActivityCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _TargetGroup : Association to one sap.c4c.TargetGroupCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _EmployeeResponsible : Association to one sap.c4c.EmployeeCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.CampaignCampaignTypeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CampaignStatusCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CampaignChannelTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CampaignAttachmentsCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  Binary : LargeBinary;
  CampaignID : String(35);
  CategoryCode : String(1);
  CategoryCodeText : LargeString;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  DocumentLink : LargeString;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastUpdatedOn : Timestamp;
  LinkWebURI : LargeString;
  MimeType : LargeString;
  Name : LargeString;
  ParentObjectID : String(70);
  SizeInkB : Decimal(31, 14);
  TypeCode : String(5);
  TypeCodeText : LargeString;
  UUID : UUID;
  @cds.ambiguous : 'missing on condition?'
  _Campaign : Association to one sap.c4c.CampaignCollection on _Campaign.ObjectID = ParentObjectID;
};

@cds.persistence.skip : true
entity sap.c4c.CampaignAttachmentsCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CampaignAttachmentsTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CampaignNotesCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  CampaignID : String(35);
  Text : LargeString;
  LanguageCode : String(2);
  LanguageCodeText : LargeString;
  TypeCode : String(5);
  TypeCodeText : LargeString;
  AuthorName : String(40);
  AuthorUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  UpdatedOn : Timestamp;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Campaign : Association to one sap.c4c.CampaignCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.CampaignNotesLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CampaignNotesTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CampaignOutboundMarketingActivityCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  CampaignID : String(35);
  AccountID : String(10);
  ContactID : String(10);
  EmployeeID : String(10);
  CommunicationStatusCode : String(2);
  CommunicationStatusCodeText : LargeString;
  CommunicationFailureReasonCode : String(2);
  CommunicationFailureReasonCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreationDateTime : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastChangeDateTime : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Campaign : Association to one sap.c4c.CampaignCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Account : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Contact : Association to one sap.c4c.ContactCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Employee : Association to one sap.c4c.EmployeeCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.CampaignOutboundMarketingActivityCommunicationStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CampaignOutboundMarketingActivityCommunicationFailureReasonCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CampaignInboundBusinessTransactionDocumentReferenceCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  CampaignID : String(35);
  AccountID : String(10);
  ContactID : String(10);
  EmployeeID : String(10);
  ReactionTypeCode : String(2);
  ReactionTypeCodeText : LargeString;
  ActivityID : String(35);
  OpportunityID : String(35);
  LeadID : String(35);
  QuoteID : String(35);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreationDateTime : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Campaign : Association to one sap.c4c.CampaignCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Account : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Contact : Association to one sap.c4c.ContactCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Employee : Association to one sap.c4c.EmployeeCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Activity : Association to one sap.c4c.ActivityCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Opportunity : Association to one sap.c4c.OpportunityCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Lead : Association to one sap.c4c.LeadCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Quote : Association to one sap.c4c.SalesQuoteCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.CampaignInboundBusinessTransactionDocumentReferenceReactionTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.MarketingPermissionCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  BusinessPartner_ID : String(35);
  BusinessPartnerUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreationDateTime : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastChangeDateTime : Timestamp;
  AlternativeID : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  ChannelPermission : Association to many sap.c4c.ChannelPermissionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CommunicationTypePermission : Association to many sap.c4c.CommunicationTypePermissionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _BusinessPartner : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ChannelPermissionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  Channel : String(3);
  ChannelText : LargeString;
  Consent : String(1);
  ConsentText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreationDateTime : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastChangeDateTime : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  ChannelPermissionAttachments : Association to many sap.c4c.ChannelPermissionAttachmentsCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ChannelPermissionNotes : Association to many sap.c4c.ChannelPermissionNotesCollection {  };
  @cds.ambiguous : 'missing on condition?'
  MarketingPermission : Association to one sap.c4c.MarketingPermissionCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ChannelPermissionChannelCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ChannelPermissionConsentCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ChannelPermissionAttachmentsCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  Binary : LargeBinary;
  CategoryCode : String(1);
  CategoryCodeText : LargeString;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  DocumentLink : LargeString;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastUpdatedOn : Timestamp;
  LinkWebURI : LargeString;
  MimeType : LargeString;
  Name : LargeString;
  ParentObjectID : String(70);
  SizeInkB : Decimal(31, 14);
  TypeCode : String(5);
  TypeCodeText : LargeString;
  UUID : UUID;
};

@cds.persistence.skip : true
entity sap.c4c.ChannelPermissionAttachmentsCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ChannelPermissionAttachmentsTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ChannelPermissionNotesCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  Text : LargeString;
  LanguageCode : String(2);
  LanguageCodeText : LargeString;
  TypeCode : String(5);
  TypeCodeText : LargeString;
  AuthorName : String(40);
  AuthorUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  UpdatedOn : Timestamp;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  ChannelPermission : Association to one sap.c4c.ChannelPermissionCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ChannelPermissionNotesLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ChannelPermissionNotesTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.CommunicationTypePermissionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  CommunicationTypeCode : String(3);
  CommunicationTypeCodeText : LargeString;
  SubscribedIndicator : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreationDateTime : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastChangeDateTime : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  MarketingPermission : Association to one sap.c4c.MarketingPermissionCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.CommunicationTypePermissionCommunicationTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.TargetGroupCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  ID : String(10);
  LifeCycleStatusCode : String(2);
  Description : String(80);
  MemberNumberValue : Integer;
  SalesOrganizationID : String(20);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  TargetGroupMember : Association to many sap.c4c.TargetGroupMemberCollection {  };
  @cds.ambiguous : 'missing on condition?'
  TargetGroupNotes : Association to many sap.c4c.TargetGroupNotesCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesOrganization : Association to one sap.c4c.OrganisationalUnitCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.TargetGroupLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.TargetGroupNotesCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  TargetGroupID : String(10);
  Text : LargeString;
  LanguageCode : String(2);
  TypeCode : String(5);
  AuthorName : String(40);
  AuthorUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  UpdatedOn : Timestamp;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  TargetGroup : Association to one sap.c4c.TargetGroupCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.TargetGroupNotesLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.TargetGroupNotesTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.TargetGroupMemberCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  AccountID : String(10);
  ContactID : String(10);
  EmployeeID : String(20);
  TargetGroupID : String(10);
  TargetGroupName : String(80);
  @cds.ambiguous : 'missing on condition?'
  TargetGroup : Association to one sap.c4c.TargetGroupCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Account : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Contact : Association to one sap.c4c.ContactCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Employee : Association to one sap.c4c.EmployeeCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SurveyRootCollection {
  key ObjectID : String(70);
  ID : String(35);
  Version : String(32);
  Name : String(255);
  NameLanguageCode : String(2);
  NameLanguageCodeText : LargeString;
  TypeCode : String(2);
  TypeCodeText : LargeString;
  CategoryCode : String(3);
  CategoryCodeText : LargeString;
  ValidFromDate : Date;
  ValidToDate : Date;
  LifeCycleStatusCode : String(2);
  LifeCycleStatusCodeText : LargeString;
  PreviousAnswersIndicator : Boolean;
  PreviousRuntimeProductsIndicator : Boolean;
  MatrixViewIndicator : Boolean;
  PaginationIndicator : Boolean;
  IncludeProductListIndicator : Boolean;
  SalesOrganisationID : String(20);
  ServiceOrganisationID : String(20);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  TotalMaximumScoreValue : Integer;
  TotalMinimumScoreValue : Integer;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  SurveyCreationDateTime : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  SurveyCompetitor : Association to many sap.c4c.SurveyCompetitorCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SurveyExceptionCondition : Association to many sap.c4c.SurveyExceptionConditionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SurveyFollowUpAction : Association to many sap.c4c.SurveyFollowUpActionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SurveyInformation : Association to many sap.c4c.SurveyInformationCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SurveyName : Association to many sap.c4c.SurveyNameCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SurveyProduct : Association to many sap.c4c.SurveyProductCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SurveyProductList : Association to many sap.c4c.SurveyProductListCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SurveyQuestion : Association to many sap.c4c.SurveyQuestionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesOrganisation : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ServiceOrganisation : Association to one sap.c4c.OrganisationalUnitCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SurveyRootNameLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveyRootTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveyRootCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveyRootLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveyNameCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  Name : String(255);
  LanguageCode : String(2);
  LanguageCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  SurveyRoot : Association to one sap.c4c.SurveyRootCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SurveyNameLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveyQuestionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  OrdinalNumberValue : Integer;
  QuestionTypeCode : String(2);
  QuestionTypeCodeText : LargeString;
  Description : LargeString;
  DescriptionLanguageCode : String(2);
  DescriptionLanguageCodeText : LargeString;
  AdditionalInformation : LargeString;
  ShortDescription : String(60);
  QuestionCategoryCode : String(3);
  QuestionCategoryCodeText : LargeString;
  InsertPageBreakAfterQuestionIndicator : Boolean;
  MandatoryIndicator : Boolean;
  ScoreValue : Integer;
  AnswerRepresentationTypeCode : String(3);
  AnswerRepresentationTypeCodeText : LargeString;
  AllowAttachmentsIndicator : Boolean;
  AllowRuntimeAttachmentsIndicator : Boolean;
  ExcludePreviousAnswerIndicator : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  InvisibleIndicator : Boolean;
  MaximumScoreValue : Integer;
  MinimumScoreValue : Integer;
  @cds.ambiguous : 'missing on condition?'
  SurveyAnswerValueRange : Association to many sap.c4c.SurveyAnswerValueRangeCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SurveyBranchingCondition : Association to many sap.c4c.SurveyBranchingConditionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SurveyQuestionAnswerOption : Association to many sap.c4c.SurveyQuestionAnswerOptionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SurveyQuestionDescription : Association to many sap.c4c.SurveyQuestionDescriptionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SurveyQuestionPlanogramAttachmentType : Association to many sap.c4c.SurveyQuestionPlanogramAttachmentTypeCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SurveyQuestionRating : Association to many sap.c4c.SurveyQuestionRatingCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SurveyQuestionResponseOption : Association to many sap.c4c.SurveyQuestionResponseOptionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SurveyRoot : Association to one sap.c4c.SurveyRootCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SurveyQuestionQuestionTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveyQuestionDescriptionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveyQuestionQuestionCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveyQuestionAnswerRepresentationTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveyQuestionDescriptionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  Description : LargeString;
  DescriptionLanguageCode : String(2);
  DescriptionLanguageCodeText : LargeString;
  ShortDescription : String(60);
  ShortDescriptionLanguageCode : String(2);
  ShortDescriptionLanguageCodeText : LargeString;
  AdditionalInformation : LargeString;
  AdditionalInformationLanguageCode : String(2);
  AdditionalInformationLanguageCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  SurveyQuestion : Association to one sap.c4c.SurveyQuestionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SurveyRoot : Association to one sap.c4c.SurveyRootCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SurveyQuestionDescriptionDescriptionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveyQuestionDescriptionShortDescriptionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveyQuestionDescriptionAdditionalInformationLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveyQuestionAnswerOptionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  AttributeSetID : String(40);
  AttributeID : String(40);
  AnswerCategoryCode : String(3);
  AnswerCategoryCodeText : LargeString;
  Score : Integer;
  DefaultAmount : Decimal(28, 6);
  DefaultDate : Date;
  DefaultAnswerValueIndicator : Boolean;
  CurrencyCode : String(3);
  CurrencyCodeText : LargeString;
  DefaultQuantity : Decimal(31, 14);
  DefaultText : LargeString;
  LowerBoundaryAmount : Decimal(28, 6);
  UpperBoundaryAmount : Decimal(28, 6);
  LowerBoundaryQuantity : Decimal(31, 14);
  UnitOfMeasure : String(3);
  UnitOfMeasureText : LargeString;
  UpperBoundaryQuantity : Decimal(31, 14);
  Duration : String(20);
  OrdinalNumberValue : Integer;
  DefaultNumericValue : Integer;
  LowerBoundaryNumericValue : Integer;
  UpperBoundaryNumericValue : Integer;
  AnswerOptionDescription : LargeString;
  AnswerOptionDescriptionLanguageCode : String(2);
  AnswerOptionDescriptionLanguageCodeText : LargeString;
  AnswerOptionShortDescription : String(60);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  SurveyQuestion : Association to one sap.c4c.SurveyQuestionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SurveyQuestionAnswerOptionDescription : Association to many sap.c4c.SurveyQuestionAnswerOptionDescriptionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SurveyRoot : Association to one sap.c4c.SurveyRootCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SurveyQuestionAnswerOptionAnswerCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveyQuestionAnswerOptionCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveyQuestionAnswerOptionUnitOfMeasureCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveyQuestionAnswerOptionAnswerOptionDescriptionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveyQuestionRatingCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  Description : LargeString;
  DescriptionLanguageCode : String(2);
  DescriptionLanguageCodeText : LargeString;
  RatingValue : Integer;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  SurveyQuestion : Association to one sap.c4c.SurveyQuestionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SurveyQuestionRatingDescription : Association to many sap.c4c.SurveyQuestionRatingDescriptionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SurveyRoot : Association to one sap.c4c.SurveyRootCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SurveyQuestionRatingDescriptionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveyQuestionResponseOptionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  Description : LargeString;
  DescriptionLanguageCode : String(2);
  DescriptionLanguageCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  SurveyQuestion : Association to one sap.c4c.SurveyQuestionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SurveyQuestionResponseOptionDescription : Association to many sap.c4c.SurveyQuestionResponseOptionDescriptionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SurveyRoot : Association to one sap.c4c.SurveyRootCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SurveyQuestionResponseOptionDescriptionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveyQuestionAnswerOptionDescriptionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  Description : LargeString;
  DescriptionLanguageCode : String(2);
  DescriptionLanguageCodeText : LargeString;
  AnswerShortDescription : String(60);
  ShortDescriptionLanguageCode : String(2);
  ShortDescriptionLanguageCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  SurveyQuestionAnswerOption : Association to one sap.c4c.SurveyQuestionAnswerOptionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SurveyRoot : Association to one sap.c4c.SurveyRootCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SurveyQuestionAnswerOptionDescriptionDescriptionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveyQuestionAnswerOptionDescriptionShortDescriptionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveyQuestionRatingDescriptionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  Description : LargeString;
  DescriptionLanguageCode : String(2);
  DescriptionLanguageCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  SurveyQuestionRating : Association to one sap.c4c.SurveyQuestionRatingCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SurveyRoot : Association to one sap.c4c.SurveyRootCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SurveyQuestionRatingDescriptionDescriptionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveyQuestionResponseOptionDescriptionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  Description : LargeString;
  DescriptionLanguageCode : String(2);
  DescriptionLanguageCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  SurveyQuestionResponseOption : Association to one sap.c4c.SurveyQuestionResponseOptionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SurveyRoot : Association to one sap.c4c.SurveyRootCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SurveyQuestionResponseOptionDescriptionDescriptionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveyQuestionPlanogramAttachmentTypeCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  AttachmentTypeCategoryCode : String(5);
  AttachmentTypeCategoryCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  SurveyQuestion : Association to one sap.c4c.SurveyQuestionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SurveyRoot : Association to one sap.c4c.SurveyRootCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SurveyQuestionPlanogramAttachmentTypeAttachmentTypeCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveyAnswerValueRangeCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  AmountLowerBoundary : Decimal(28, 6);
  AmountUpperBoundary : Decimal(28, 6);
  QuantityLowerBoundary : Decimal(31, 14);
  QuantityUpperBoundary : Decimal(31, 14);
  NumericValueLowerBoundary : Integer;
  NumericValueUpperBoundary : Integer;
  Score : Integer;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  SurveyQuestion : Association to one sap.c4c.SurveyQuestionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SurveyRoot : Association to one sap.c4c.SurveyRootCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SurveyProductCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ProductID : String(60);
  ProductDescription : String(60);
  ProductCategoryID : String(20);
  ProductCategoryDescription : String(60);
  ProductCategoryUUID : UUID;
  ProductUUID : UUID;
  CompetitorProductIndicator : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  SurveyRoot : Association to one sap.c4c.SurveyRootCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Product : Association to one sap.c4c.ProductCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ProductCategory : Association to one sap.c4c.ProductCategoryHierarchyCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SurveyProductListCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  ProductListID : String(40);
  ProductListDescription : String(40);
  ProductListUUID : UUID;
  ProductListCategoryCode : String(4);
  ProductListCategoryCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  SurveyRoot : Association to one sap.c4c.SurveyRootCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SurveyProductListProductListCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveyCompetitorCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  CompetitorDescription : String(40);
  CompetitorID : String(60);
  PartyRoleCategoryCode : String(3);
  PartyRoleCategoryCodeText : LargeString;
  PartyUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  SurveyRoot : Association to one sap.c4c.SurveyRootCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Competitor : Association to one sap.c4c.CompetitorCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SurveyCompetitorPartyRoleCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveyInformationCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  TypeCode : String(2);
  TypeCodeText : LargeString;
  UUID : UUID;
  Description : LargeString;
  DescriptionLanguageCode : String(2);
  DescriptionLanguageCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  SurveyInformationDescription : Association to many sap.c4c.SurveyInformationDescriptionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SurveyRoot : Association to one sap.c4c.SurveyRootCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SurveyInformationTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveyInformationDescriptionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveyExceptionConditionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  QuestionExternalKey : String(40);
  ElementUUID : UUID;
  Operator : String(40);
  LowValue : String(40);
  HighValue : String(40);
  ElementValueUUID : LargeString;
  LowRefQuestionExternalKey : String(40);
  HighRefQuestionExternalKey : String(40);
  LowRefQuestionUUID : UUID;
  HighRefQuestionUUID : UUID;
  ExceptionDescription : LargeString;
  DescriptionLanguageCode : String(2);
  DescriptionLanguageCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  SurveyExceptionConditionDescription : Association to many sap.c4c.SurveyExceptionConditionDescriptionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SurveyRoot : Association to one sap.c4c.SurveyRootCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SurveyExceptionConditionDescriptionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveyFollowUpActionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  PrimaryQuestionExternalKey : String(40);
  SecondaryQuestionExternalKey : String(40);
  PrimaryAnswerOptionExternalKey : String(40);
  BusinessTransactionDocumentTypeCode : String(15);
  BusinessTransactionDocumentTypeCodeText : LargeString;
  PrimaryElementUUID : UUID;
  PrimaryElementValueUUID : UUID;
  SecondaryElementUUID : UUID;
  @cds.ambiguous : 'missing on condition?'
  SurveyRoot : Association to one sap.c4c.SurveyRootCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SurveyFollowUpActionBusinessTransactionDocumentTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveyExceptionConditionDescriptionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  Description : LargeString;
  DescriptionLanguageCode : String(2);
  DescriptionLanguageCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  SurveyExceptionCondition : Association to one sap.c4c.SurveyExceptionConditionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SurveyRoot : Association to one sap.c4c.SurveyRootCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SurveyExceptionConditionDescriptionDescriptionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveyBranchingConditionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  SourceQuestionUUID : UUID;
  SourceAnswerOptionUUID : UUID;
  TargetQuestionUUID : UUID;
  SourceAnswerOptionExternalKey : String(40);
  TargetQuestionExternalKey : String(40);
  UnansweredIndicator : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  SurveyQuestion : Association to one sap.c4c.SurveyQuestionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SurveyRoot : Association to one sap.c4c.SurveyRootCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SurveyInformationDescriptionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  Description : LargeString;
  languageCode : String(2);
  languageCodeText : LargeString;
  @cds.ambiguous : 'missing on condition?'
  SurveyInformation : Association to one sap.c4c.SurveyInformationCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SurveyRoot : Association to one sap.c4c.SurveyRootCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SurveyInformationDescriptionlanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OrganisationalUnitCollection {
  key ObjectID : String(70);
  OrganisationalUnitID : String(20);
  LifeCycleStatusCode : String(2);
  StartDate : Date;
  EndDate : Date;
  MarkAsDeleted : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  OrganisationalUnitCompany : Association to many sap.c4c.OrganisationalUnitCompanyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  OrganisationalUnitDistributionChannelAndDivision : Association to many sap.c4c.OrganisationalUnitDistributionChannelAndDivisionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  OrganisationalUnitEmployeeAssignment : Association to many sap.c4c.OrganisationalUnitEmployeeAssignmentCollection {  };
  @cds.ambiguous : 'missing on condition?'
  OrganisationalUnitFunctions : Association to many sap.c4c.OrganisationalUnitFunctionsCollection {  };
  @cds.ambiguous : 'missing on condition?'
  OrganisationalUnitManager : Association to many sap.c4c.OrganisationalUnitManagerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  OrganisationalUnitNameAndAddress : Association to many sap.c4c.OrganisationalUnitNameAndAddressCollection {  };
  @cds.ambiguous : 'missing on condition?'
  OrganisationalUnitParentOrganisationalUnitAssignment : Association to many sap.c4c.OrganisationalUnitParentOrganisationalUnitAssignmentCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.OrganisationalUnitLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OrganisationalUnitManagerCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  OrganisationalUnitID : String(20);
  BusinessPartnerInternalID : String(10);
  FunctionalManagerIndicator : Boolean;
  ReportingLineManagerIndicator : Boolean;
  StartDate : Date;
  EndDate : Date;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  OrganisationalUnit : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _BusinessPartner : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.OrganisationalUnitCompanyCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  OrganisationalUnitID : String(20);
  CompanyID : String(20);
  StartDate : Date;
  EndDate : Date;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  OrganisationalUnit : Association to one sap.c4c.OrganisationalUnitCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.OrganisationalUnitFunctionsCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  OrganisationalUnitID : String(20);
  CompanyIndicator : Boolean;
  SalesIndicator : Boolean;
  SalesOrganisationIndicator : Boolean;
  SalesOfficeIndicator : Boolean;
  SalesGroupIndicator : Boolean;
  ServiceIndicator : Boolean;
  ServiceOrganisationIndicator : Boolean;
  MarketingIndicator : Boolean;
  ReportingLineIndicator : Boolean;
  PlantIndicator : Boolean;
  CurrencyCode : String(3);
  StartDate : Date;
  EndDate : Date;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  OrganisationalUnit : Association to one sap.c4c.OrganisationalUnitCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.OrganisationalUnitFunctionsCurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OrganisationalUnitNameAndAddressCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  OrganisationalUnitID : String(20);
  Name : String(40);
  FormattedPostalAddressDescription : String(480);
  CountryCode : String(3);
  RegionCode : String(6);
  CareOfName : String(240);
  StreetPrefixName : String(240);
  AdditionalStreetPrefixName : String(240);
  HouseID : String(100);
  StreetName : String(360);
  StreetSuffixName : String(240);
  AdditionalStreetSuffixName : String(240);
  DistrictName : String(240);
  CityName : String(240);
  StreetPostalCode : String(100);
  CountyName : String(240);
  POBoxIndicator : Boolean;
  POBoxID : String(100);
  POBoxPostalCode : String(100);
  POBoxDeviatingCountryCode : String(3);
  POBoxDeviatingRegionCode : String(6);
  POBoxDeviatingCityName : String(240);
  TimeZoneCode : String(10);
  ConventionalPhoneFormattedNumberDescription : String(350);
  MobileFormattedNumberDescription : String(350);
  FacsimileFormattedNumberDescription : String(350);
  EmailURI : String(765);
  EmailNormalisedURI : String(765);
  WebURI : String(1280);
  StartDate : Date;
  EndDate : Date;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  OrganisationalUnit : Association to one sap.c4c.OrganisationalUnitCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.OrganisationalUnitNameAndAddressCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OrganisationalUnitNameAndAddressRegionCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OrganisationalUnitNameAndAddressStreetPostalCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OrganisationalUnitNameAndAddressPOBoxPostalCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OrganisationalUnitNameAndAddressPOBoxDeviatingCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OrganisationalUnitNameAndAddressPOBoxDeviatingRegionCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OrganisationalUnitNameAndAddressTimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OrganisationalUnitEmployeeAssignmentCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  OrganisationalUnitID : String(20);
  BusinessPartnerInternalID : String(10);
  EmployeeID : String(20);
  JobID : String(20);
  ReportingLineIndicator : Boolean;
  RoleCode : String(10);
  FunctionalIndicator : Boolean;
  StartDate : Date;
  EndDate : Date;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  OrganisationalUnit : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _BusinessPartner : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Employee : Association to one sap.c4c.EmployeeCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Job : Association to one sap.c4c.JobDefinitionCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.OrganisationalUnitEmployeeAssignmentRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OrganisationalUnitParentOrganisationalUnitAssignmentCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  OrganisationalUnitID : String(20);
  ParentOrganisationalUnitID : String(20);
  StartDate : Date;
  EndDate : Date;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  OrganisationalUnit : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ParentOrganisationalUnit : Association to one sap.c4c.OrganisationalUnitCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.OrganisationalUnitDistributionChannelAndDivisionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  OrganisationalUnitID : String(20);
  DistributionChannelCode : String(2);
  DivisionCode : String(2);
  StartDate : Date;
  EndDate : Date;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  OrganisationalUnit : Association to one sap.c4c.OrganisationalUnitCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.OrganisationalUnitDistributionChannelAndDivisionDistributionChannelCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.OrganisationalUnitDistributionChannelAndDivisionDivisionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ChatActivityCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  TypeCode : String(15);
  TypeCodeText : LargeString;
  LifeCycleStatusCode : String(2);
  LifeCycleStatusCodeText : LargeString;
  LastChangeDate : Date;
  ActivityWorklistItemUUID : UUID;
  ActualDuration : String(20);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ActualEndDateTime : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ActualStartDateTime : Timestamp;
  ActivitySentimentTypeCode : String(2);
  ActivitySentimentTypeCodeText : LargeString;
  AdditionalLocationName : String(765);
  AvailabilityCode : String(2);
  AvailabilityCodeText : LargeString;
  BouncedIndicator : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CompletionDateTime : Timestamp;
  CompletionPercent : Decimal(5, 2);
  CorrespondenceTransmissionStatusCode : String(2);
  CorrespondenceTransmissionStatusCodeText : LargeString;
  CreationDate : Date;
  DataOriginTypeCode : String(3);
  DataOriginTypeCodeText : LargeString;
  DistributionChannelCode : String(2);
  DistributionChannelCodeText : LargeString;
  DistributionChannelDeterminationMethodCode : String(2);
  DistributionChannelDeterminationMethodCodeText : LargeString;
  DivisionCode : String(2);
  DivisionCodeText : LargeString;
  DivisionDeterminationMethodCode : String(2);
  DivisionDeterminationMethodCodeText : LargeString;
  ExternalName : String(40);
  FullDayIndicator : Boolean;
  GroupwareItemID : String(765);
  GroupCode : String(4);
  GroupCodeText : LargeString;
  GroupwareSynchronizationNonRelevanceIndicator : Boolean;
  ID : String(35);
  InformationSensitivityCode : String(1);
  InformationSensitivityCodeText : LargeString;
  InitiatingActivityUUID : UUID;
  InitiatorCode : String(1);
  InitiatorCodeText : LargeString;
  LocationName : String(480);
  MarkedForDeletionDate : Date;
  MarkedForDeletion : Boolean;
  MigratedDataAdaptationTypeCode : String(1);
  MigratedDataAdaptationTypeCodeText : LargeString;
  PerfectStoreIndicator : Boolean;
  PlannedDuration : String(20);
  PredecessorActivityUUID : UUID;
  PriorityCode : String(1);
  PriorityCodeText : LargeString;
  ProcessingTypeCode : String(4);
  ProcessingTypeCodeText : LargeString;
  ReportedDate : Date;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ReportedDateTime : Timestamp;
  SalesOrganisationID : String(20);
  SalesOrganisationUUID : UUID;
  SalesOrganizationDeterminationMethodCode : String(2);
  SalesOrganizationDeterminationMethodCodeText : LargeString;
  SalesTerritoryDeterminationMethodCode : String(2);
  SalesTerritoryDeterminationMethodCodeText : LargeString;
  SalesTerritoryID : String(6);
  SalesTerritoryUUID : UUID;
  ScheduledEndDate : Date;
  ScheduledStartDate : Date;
  SilentDataMigrationID : String(2);
  SocialMediaActivityProviderUUID : UUID;
  ActivityFollowUpServiceRequestBlockingReasonCode : String(2);
  ActivityFollowUpServiceRequestBlockingReasonCodeText : LargeString;
  StatusSchemaName : String(30);
  SubjectName : String(765);
  TransmittedDate : Date;
  VisitWorkItemGenerationCode : String(1);
  VisitWorkItemGenerationCodeText : LargeString;
  VisitTypeCode : String(4);
  VisitTypeCodeText : LargeString;
  VisitTourPlanUUID : UUID;
  ChatMainPartyUUID : UUID;
  ChatMainPartyID : String(60);
  ChatMainEmailURI : String(254);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  ChatActivityAttachment : Association to many sap.c4c.ChatActivityAttachmentCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ChatActivityBTDReference : Association to many sap.c4c.ChatActivityBTDReferenceCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ChatActivityParties : Association to many sap.c4c.ChatActivityPartiesCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ChatActivityTextCollection : Association to many sap.c4c.ChatActivityTextCollectionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesOrganisation : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesTerritory : Association to one sap.c4c.SalesTerritoryCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ChatActivityTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ChatActivityLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ChatActivityActivitySentimentTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ChatActivityAvailabilityCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ChatActivityCorrespondenceTransmissionStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ChatActivityDataOriginTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ChatActivityDistributionChannelCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ChatActivityDistributionChannelDeterminationMethodCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ChatActivityDivisionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ChatActivityDivisionDeterminationMethodCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ChatActivityGroupCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ChatActivityInformationSensitivityCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ChatActivityInitiatorCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ChatActivityMigratedDataAdaptationTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ChatActivityPriorityCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ChatActivityProcessingTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ChatActivitySalesOrganizationDeterminationMethodCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ChatActivitySalesTerritoryDeterminationMethodCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ChatActivityActivityFollowUpServiceRequestBlockingReasonCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ChatActivityVisitWorkItemGenerationCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ChatActivityVisitTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ChatActivityAttachmentCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  UUID : UUID;
  Name : LargeString;
  MimeType : LargeString;
  Binary : LargeBinary;
  SizeInkB : Decimal(31, 14);
  DocumentLink : LargeString;
  OutputRelevanceIndicator : Boolean;
  LinkWebURI : LargeString;
  TypeCode : String(5);
  TypeCodeText : LargeString;
  CategoryCode : String(1);
  CategoryCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastUpdatedOn : Timestamp;
  LastUpdatedBy : String(80);
  Title : LargeString;
  ChatActivityID : String(35);
  @cds.ambiguous : 'missing on condition?'
  _ChatActivity : Association to one sap.c4c.ChatActivityCollection on _ChatActivity.ObjectID = ParentObjectID;
};

@cds.persistence.skip : true
entity sap.c4c.ChatActivityAttachmentFolderTypeCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ChatActivityAttachmentFolderCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ChatActivityBTDReferenceCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  ID : String(35);
  TypeCode : String(15);
  TypeCodeText : LargeString;
  RoleCode : String(3);
  RoleCodeText : LargeString;
  ChatBusinessSystemID : String(60);
  ChatActivityID : String(35);
  ChatActivityTypeCode : String(15);
  ChatActivityTypeCodeText : LargeString;
  ChatBTDRefSystemID : String(32);
  @cds.ambiguous : 'missing on condition?'
  ChatActivity : Association to one sap.c4c.ChatActivityCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ChatActivityBTDReferenceTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ChatActivityBTDReferenceRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ChatActivityBTDReferenceChatActivityTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ChatActivityTextCollectionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  Text : LargeString;
  LanguageCode : String(2);
  LanguageCodeText : LargeString;
  TypeCode : String(5);
  TypeCodeText : LargeString;
  AuthorUUID : UUID;
  AuthorName : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  UpdatedOn : Timestamp;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  ChatActivity : Association to one sap.c4c.ChatActivityCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ChatTextCollectionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ChatTextCollectionTypeCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ChatActivityPartiesCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  ChatActivityID : String(35);
  PartyUUID : UUID;
  PartyID : String(60);
  PartyTypeCode : String(15);
  PartyTypeCodeText : LargeString;
  RoleCode : String(10);
  RoleCodeText : LargeString;
  RoleCategoryCode : String(3);
  RoleCategoryCodeText : LargeString;
  PartyEmailURI : String(254);
  MainIndicator : Boolean;
  PartyName : String(255);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ToParent_ObjectID : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  ChatActivity : Association to one sap.c4c.ChatActivityCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ChatActivityPartiesPartyTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ChatActivityPartiesRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ChatActivityPartiesRoleCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceCategoryCatalogueCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  ID : String(25);
  VersionID : String(32);
  LifeCycleStatusCode : String(2);
  LifeCycleStatusCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EndDateTime : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  StartDateTime : Timestamp;
  ServiceCategoryCatalogueName : String(40);
  ServiceCategoryCatalogueNamelanguageCode : String(2);
  ServiceCategoryCatalogueNamelanguageCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  ServiceCategory : Association to many sap.c4c.ServiceCategoryCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ServiceCategoryCatalogueUsage : Association to many sap.c4c.ServiceCategoryCatalogueUsageCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ServiceCategoryCatalogueLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceCategoryCatalogueServiceCategoryCatalogueNamelanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceCategoryCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  ID : String(25);
  ParentCategoryUUID : UUID;
  TypeCode : String(2);
  TypeCodeText : LargeString;
  CategoryUUID : UUID;
  CatalogueID : String(25);
  LifeCycleStatusCode : String(2);
  LifeCycleStatusCodeText : LargeString;
  CatalogueVersionID : String(32);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CatalogueEndDateTime : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CatalogueStartDateTime : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  ServiceCategoryCatalogue : Association to one sap.c4c.ServiceCategoryCatalogueCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ServiceCategoryDescription : Association to many sap.c4c.ServiceCategoryDescriptionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ServiceCategoryName : Association to many sap.c4c.ServiceCategoryNameCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ServiceCategoryTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceCategoryLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceCategoryNameCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  Name : String(40);
  languageCode : String(2);
  languageCodeText : LargeString;
  @cds.ambiguous : 'missing on condition?'
  ServiceCategory : Association to one sap.c4c.ServiceCategoryCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ServiceCategoryCatalogue : Association to one sap.c4c.ServiceCategoryCatalogueCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ServiceCategoryNamelanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceCategoryDescriptionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  Description : String(80);
  languageCode : String(2);
  languageCodeText : LargeString;
  @cds.ambiguous : 'missing on condition?'
  ServiceCategory : Association to one sap.c4c.ServiceCategoryCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ServiceCategoryCatalogue : Association to one sap.c4c.ServiceCategoryCatalogueCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ServiceCategoryDescriptionlanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceCategoryCatalogueUsageCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  BusinessTransactionDocumentProcessingTypeCode : String(4);
  BusinessTransactionDocumentProcessingTypeCodeText : LargeString;
  UsageCode : String(40);
  UsageCodeText : LargeString;
  @cds.ambiguous : 'missing on condition?'
  ServiceCategoryCatalogue : Association to one sap.c4c.ServiceCategoryCatalogueCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ServiceCategoryCatalogueUsageBusinessTransactionDocumentProcessingTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceCategoryCatalogueUsageUsageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.BusinessUserCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  EmployeeID : String(20);
  EmployeeUUID : UUID;
  UserID : String(40);
  TechnicalUserID : String(255);
  IdentityUUID : UUID;
  BusinessPartnerID : String(10);
  BusinessPartnerFormattedName : String(480);
  DepartmentName : String(40);
  CompanyName : String(40);
  ManagerName : String(480);
  EmailURI : String(255);
  DecimalFormatCode : String(2);
  DecimalFormatCodeText : LargeString;
  DateFormatCode : String(2);
  DateFormatCodeText : LargeString;
  TimeFormatCode : String(2);
  TimeFormatCodeText : LargeString;
  TimeZoneCode : String(10);
  TimeZoneCodeText : LargeString;
  LogonLanguageCode : String(2);
  LogonLanguageCodeText : LargeString;
  UserValidityStartDate : Date;
  UserValidityEndDate : Date;
  UserLockedIndicator : Boolean;
  UserCountedIndicator : Boolean;
  PasswordPolicyCode : String(40);
  PasswordPolicyCodeText : LargeString;
  PasswordInactiveIndicator : Boolean;
  PasswordLockedIndicator : Boolean;
  UserAccountTypeCode : String(1);
  UserAccountTypeCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  UserCreatedBy : String(480);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  UserChangedBy : String(480);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  UserChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  BusinessUserBusinessRoleAssignment : Association to many sap.c4c.BusinessUserBusinessRoleAssignmentCollection {  };
  @cds.ambiguous : 'missing on condition?'
  BusinessUserSubscriptionAssignment : Association to many sap.c4c.BusinessUserSubscriptionAssignmentCollection {  };
  @cds.ambiguous : 'missing on condition?'
  EmployeeBasicData : Association to one sap.c4c.EmployeeBasicDataCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _BusinessPartner : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.BusinessUserDecimalFormatCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.BusinessUserDateFormatCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.BusinessUserTimeFormatCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.BusinessUserTimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.BusinessUserLogonLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.BusinessUserPasswordPolicyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.BusinessUserUserAccountTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.BusinessUserBusinessRoleAssignmentCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  EmployeeID : String(20);
  UserID : String(40);
  BusinessRoleID : String(255);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  _Employee : Association to one sap.c4c.EmployeeCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _User : Association to one sap.c4c.BusinessUserCollection on _User.ObjectID = ParentObjectID;
};

@cds.persistence.skip : true
entity sap.c4c.BusinessUserSubscriptionAssignmentCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  EmployeeID : String(20);
  UserID : String(40);
  UserTypeCode : String(3);
  UserTypeCodeText : LargeString;
  UserSubscriptionTypeCode : String(40);
  UserSubscriptionTypeCodeText : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _Employee : Association to one sap.c4c.EmployeeCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _User : Association to one sap.c4c.BusinessUserCollection on _User.ObjectID = ParentObjectID;
};

@cds.persistence.skip : true
entity sap.c4c.BusinessUserSubscriptionAssignmentUserTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.BusinessUserSubscriptionAssignmentUserSubscriptionTypeCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RouteCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  ID : String(35);
  Name : String(255);
  RouteTypeCode : String(1);
  RouteTypeCodeText : LargeString;
  StartDate : Date;
  ExcludeMondayIndicator : Boolean;
  ExcludeTuesdayIndicator : Boolean;
  ExcludeWednesdayIndicator : Boolean;
  ExcludeThursdayIndicator : Boolean;
  ExcludeFridayIndicator : Boolean;
  ExcludeSaturdayIndicator : Boolean;
  ExcludeSundayIndicator : Boolean;
  SalesTerritoryID : String(6);
  SalesOrganisationID : String(20);
  OrganizerPartyID : String(60);
  DefaultPreparationTime : String(20);
  DefaultDuration : String(20);
  VisitTypeCode : String(4);
  VisitTypeCodeText : LargeString;
  Status : String(2);
  StatusText : LargeString;
  ProcessingStatus : String(2);
  ProcessingStatusText : LargeString;
  OwnerPartyID : String(60);
  OwnerPartyUUID : UUID;
  PerfectStoreIndicator : Boolean;
  DistributionChannelCode : String(2);
  DistributionChannelCodeText : LargeString;
  DivisionCode : String(2);
  DivisionCodeText : LargeString;
  AutomaticResequencing : Boolean;
  EndDate : Date;
  WorkingDayCalendarCode : String(6);
  WorkingDayCalendarCodeText : LargeString;
  @cds.ambiguous : 'missing on condition?'
  RouteAccount : Association to many sap.c4c.RouteAccountCollection {  };
  @cds.ambiguous : 'missing on condition?'
  RouteAttendeeParty : Association to many sap.c4c.RouteAttendeePartyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  RouteInvolvedParties : Association to many sap.c4c.RouteInvolvedPartiesCollection {  };
  @cds.ambiguous : 'missing on condition?'
  RouteNotes : Association to many sap.c4c.RouteNotesCollection {  };
  @cds.ambiguous : 'missing on condition?'
  RouteRecurringDayProgramme : Association to many sap.c4c.RouteRecurringDayProgrammeCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesTerritory : Association to one sap.c4c.SalesTerritoryCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesOrganisation : Association to one sap.c4c.OrganisationalUnitCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _OrganizerParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _OwnerParty : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.RouteRouteTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RouteVisitTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RouteStatusCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RouteProcessingStatusCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RouteDistributionChannelCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RouteDivisionCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RouteWorkingDayCalendarCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RouteAccountCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  RouteID : String(35);
  AccountID : String(60);
  AccountUUID : UUID;
  AllDayEvent : Boolean;
  DayNumber : Integer;
  DriveTime : String(20);
  Duration : String(20);
  PreparationTime : String(20);
  VisitDate : Date;
  VisitTypeCode : String(4);
  VisitTypeCodeText : LargeString;
  VisitUUID : UUID;
  VisitID : String(35);
  @cds.ambiguous : 'missing on condition?'
  Route : Association to one sap.c4c.RouteCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Account : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Visit : Association to one sap.c4c.VisitCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.RouteAccountVisitTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RouteNotesCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  RouteID : String(35);
  Text : LargeString;
  LanguageCode : String(2);
  LanguageCodeText : LargeString;
  TypeCode : String(5);
  TypeCodeText : LargeString;
  AuthorUUID : UUID;
  AuthorName : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  UpdatedOn : Timestamp;
  LastUpdatedBy : String(80);
  @cds.ambiguous : 'missing on condition?'
  Route : Association to one sap.c4c.RouteCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.RouteNotesLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RouteNotesTypeCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RouteInvolvedPartiesCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  RouteID : String(35);
  PartyID : String(60);
  PartyName : String(255);
  RoleCode : String(10);
  RoleCodeText : LargeString;
  RoleCategoryCode : String(3);
  RoleCategoryCodeText : LargeString;
  PartyTypeCode : String(15);
  PartyTypeCodeText : LargeString;
  Address : UUID;
  Email : String(254);
  FormattedPhoneNumberDescription : String(40);
  @cds.ambiguous : 'missing on condition?'
  Route : Association to one sap.c4c.RouteCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.RouteInvolvedPartiesRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RouteInvolvedPartiesRoleCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RouteInvolvedPartiesPartyTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RouteAttendeePartyCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  RouteID : String(35);
  PartyID : String(60);
  PartyName : String(255);
  EmailURI : String(254);
  PartyTypeCode : String(15);
  PartyTypeCodeText : LargeString;
  FormattedPhoneNumberDescription : String(40);
  RoleCode : String(10);
  RoleCodeText : LargeString;
  RoleCategoryCode : String(3);
  RoleCategoryCodeText : LargeString;
  @cds.ambiguous : 'missing on condition?'
  Route : Association to one sap.c4c.RouteCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.RouteAttendeePartyPartyTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RouteAttendeePartyRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RouteAttendeePartyRoleCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RouteRecurringDayProgrammeCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  FrequencyCode : String(2);
  FrequencyCodeText : LargeString;
  FrequencyValue : Integer;
  EndDate : Date;
  StartDate : Date;
  FridayIndicator : Boolean;
  MondayIndicator : Boolean;
  SundayIndicator : Boolean;
  WednesdayIndicator : Boolean;
  ThursdayIndicator : Boolean;
  TuesdayIndicator : Boolean;
  SaturdayIndicator : Boolean;
  @cds.ambiguous : 'missing on condition?'
  Route : Association to one sap.c4c.RouteCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.RouteRecurringDayProgrammeFrequencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RecurringActivityCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  DocumentType : String(4);
  ID : String(35);
  SubjectName : String(255);
  LifeCycleStatusCode : String(2);
  OrganizerUUID : UUID;
  OrganizerPartyID : String(60);
  OwnerUUID : UUID;
  OwnerPartyID : String(60);
  PrimaryContact : UUID;
  FullDayIndicator : Boolean;
  Account : UUID;
  MainAccountPartyID : String(60);
  MainContactPartyID : String(60);
  Location : String(480);
  Priority : String(1);
  SalesTerritoryUUID : UUID;
  SalesTerritoryID : String(6);
  SalesTerritoryName : String(40);
  SalesOrganisation : String(20);
  DistributionChannel : String(2);
  Division : String(2);
  InformationSensitivityCode : String(1);
  AccountName : String(80);
  AdditionalLocationName : String(255);
  ChangedBy : String(480);
  CreatedBy : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  DataOriginTypeCode : String(3);
  GroupwareItemID : String(765);
  OrganizerEmailURI : String(254);
  OrganizerName : String(80);
  OrganizerPartyName : String(255);
  OwnerName : String(80);
  Phone : String(40);
  PrimaryContactName : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ReportedDateTime : Timestamp;
  UUID : UUID;
  AvailabilityCode : String(2);
  VisitTypeCode : String(4);
  PerfectStoreIndicator : Boolean;
  RecurrenceUUID : UUID;
  RecurringActivityUUID : UUID;
  TimeZone : String(10);
  Duration : String(20);
  RecurrenceStartDate : Date;
  RecurrenceEndDate : Date;
  EndOcurrences : Integer;
  NoEndDate : Boolean;
  RecurrencePattern : String(2);
  DailyEveryDays : Integer;
  DailyEveryWeekDay : Boolean;
  RecurEveryWeeksOn : Integer;
  WeeklyIsMonday : Boolean;
  WeeklyIsTuesday : Boolean;
  WeeklyIsWednesday : Boolean;
  WeeklyIsThursday : Boolean;
  WeeklyIsFriday : Boolean;
  weeklyIsSaturday : Boolean;
  weeklyIsSunday : Boolean;
  MonthlyDayOfEveryMonths : Integer;
  MonthlyDayOfEveryNthMonths : Integer;
  MonthlyNthWeekdayofMonths : Integer;
  MonthlyWeekdayOfMonths : String(1);
  MonthlyWeekedayOfEveryNthMonths : Integer;
  YearlyRecurEveryNthYear : Integer;
  YearlyOnMonth : String(4);
  YearlyOnDateOfMonth : Integer;
  YearlyOnTheNthWeekday : Integer;
  YearlyOnTheWeekday : String(1);
  YearlyOnTheMonth : String(4);
  Category : String(4);
  GeneratedTilllDate : Date;
  MonthlyWeekdayOfMonths1 : String(2);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  RecurringActivityAttachmentFolder : Association to many sap.c4c.RecurringActivityAttachmentFolderCollection {  };
  @cds.ambiguous : 'missing on condition?'
  RecurringActivityParty : Association to many sap.c4c.RecurringActivityPartyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  RecurringActivityText : Association to many sap.c4c.RecurringActivityTextCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _OrganizerParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _OwnerParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _MainAccountParty : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _MainContactParty : Association to one sap.c4c.ContactCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _SalesTerritory : Association to one sap.c4c.SalesTerritoryCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.RecurringActivityDocumentTypeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RecurringActivityLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RecurringActivityPriorityCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RecurringActivityDistributionChannelCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RecurringActivityDivisionCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RecurringActivityInformationSensitivityCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RecurringActivityDataOriginTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RecurringActivityAvailabilityCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RecurringActivityVisitTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RecurringActivityTimeZoneCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RecurringActivityRecurrencePatternCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RecurringActivityMonthlyWeekdayOfMonthsCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RecurringActivityYearlyOnMonthCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RecurringActivityYearlyOnTheWeekdayCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RecurringActivityYearlyOnTheMonthCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RecurringActivityCategoryCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RecurringActivityMonthlyWeekdayOfMonths1Collection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RecurringActivityPartyCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  ID : String(35);
  PartyID : String(60);
  RoleCode : String(10);
  RoleCategoryCode : String(3);
  PartyTypeCode : String(15);
  MainIndicator : Boolean;
  PartyEmailURI : String(254);
  PartyUUID : UUID;
  PartyName : String(255);
  FormattedPhoneNumberDescription : String(350);
  @cds.ambiguous : 'missing on condition?'
  RecurringActivity : Association to one sap.c4c.RecurringActivityCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.RecurringActivityPartyRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RecurringActivityPartyRoleCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RecurringActivityPartyPartyTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RecurringActivityTextCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  RecurringActivityID : String(35);
  Text : LargeString;
  LanguageCode : String(2);
  TypeCode : String(5);
  AuthorName : String(40);
  AuthorUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  RecurringActivity : Association to one sap.c4c.RecurringActivityCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.RecurringActivityTextLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RecurringActivityTextTypeCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RecurringActivityAttachmentFolderCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  UUID : UUID;
  Name : LargeString;
  MimeType : LargeString;
  Binary : LargeBinary;
  SizeInkB : Decimal(31, 14);
  DocumentLink : LargeString;
  OutputRelevanceIndicator : Boolean;
  LinkWebURI : LargeString;
  TypeCode : String(5);
  CategoryCode : String(1);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastUpdatedOn : Timestamp;
  LastUpdatedBy : String(80);
  Title : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RecurringActivityAttachmentFolderTypeCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.RecurringActivityAttachmentFolderCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LoggedInUserInfoCollection {
  key ObjectID : String(70);
  UserID : String(40);
  UserName : String(480);
  UserAccountID : String(255);
  UUID : UUID;
  EmployeeID : String(20);
  BusinessPartnerID : String(10);
  EmployeeUUID : UUID;
  Email : String(765);
  DateFormatCode : String(2);
  DateFormatCodeText : LargeString;
  DecimalFormatCode : String(2);
  DecimalFormatCodeText : LargeString;
  LogonLanguageCode : String(2);
  LogonLanguageCodeText : LargeString;
  TimeFormatCode : String(2);
  TimeFormatCodeText : LargeString;
  TimeZoneCode : String(10);
  TimeZoneCodeText : LargeString;
  TechnicalUserIndicator : Boolean;
  KeyUserIndicator : Boolean;
  InactiveIndicator : Boolean;
  PasswordInactiveIndicator : Boolean;
  PasswordLockedIndicator : Boolean;
  PasswordPolicyCode : String(40);
  PasswordPolicyCodeText : LargeString;
  UserAccountTypeCode : String(1);
  UserAccountTypeCodeText : LargeString;
  StatusCode : String(2);
  StatusCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(480);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ChangedOn : Timestamp;
  ChangedBy : String(480);
  CreatedByUUID : UUID;
  ChangedByUUID : UUID;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  _User : Association to one sap.c4c.BusinessUserCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Employee : Association to one sap.c4c.EmployeeCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _BusinessPartner : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.LoggedInUserInfoDateFormatCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LoggedInUserInfoDecimalFormatCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LoggedInUserInfoLogonLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LoggedInUserInfoTimeFormatCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LoggedInUserInfoTimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LoggedInUserInfoPasswordPolicyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LoggedInUserInfoUserAccountTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LoggedInUserInfoStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.StoreValuationCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  TotalScoreValue : Decimal(5, 2);
  ReferenceVisitUUID : UUID;
  StoreLayoutName : String(255);
  ValidFromDate : Date;
  ValidToDate : Date;
  ReferenceVisitID : String(35);
  StoreLayoutID : String(35);
  StoreLayoutVersion : String(32);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  AdvancedKPIValuation : Association to many sap.c4c.AdvancedKPIValuationCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CalculationKPIValuation : Association to many sap.c4c.CalculationKPIValuationCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ComparisonKPIValuation : Association to many sap.c4c.ComparisonKPIValuationCollection {  };
  @cds.ambiguous : 'missing on condition?'
  EngagementMapAttachments : Association to many sap.c4c.EngagementMapAttachmentsCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SellingPointValuation : Association to many sap.c4c.SellingPointValuationCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _ReferenceVisit : Association to one sap.c4c.VisitCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.SellingPointValuationCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  TotalScoreValue : Decimal(5, 2);
  PointOfEngagementID : String(35);
  PointOfEngagementName : String(255);
  @cds.ambiguous : 'missing on condition?'
  PoEAttachments : Association to many sap.c4c.PoEAttachmentsCollection {  };
  @cds.ambiguous : 'missing on condition?'
  PoEQuestion : Association to many sap.c4c.PoEQuestionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  PoETasks : Association to many sap.c4c.PoETasksCollection {  };
  @cds.ambiguous : 'missing on condition?'
  StoreValuation : Association to one sap.c4c.StoreValuationCollection {  };
  @cds.ambiguous : 'missing on condition?'
  Surveys : Association to many sap.c4c.SurveysCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.CalculationKPIValuationCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  ScoreValue : Decimal(5, 2);
  KPIName : String(255);
  @cds.ambiguous : 'missing on condition?'
  StoreValuation : Association to one sap.c4c.StoreValuationCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ComparisonKPIValuationCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  ScoreValue : Decimal(5, 2);
  KPIName : String(255);
  @cds.ambiguous : 'missing on condition?'
  StoreValuation : Association to one sap.c4c.StoreValuationCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.AdvancedKPIValuationCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  KPIUsageTypeCode : String(1);
  KPIUsageTypeCodeText : LargeString;
  KPIName : String(255);
  ScoreValue : String(60);
  @cds.ambiguous : 'missing on condition?'
  StoreValuation : Association to one sap.c4c.StoreValuationCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.AdvancedKPIValuationKPIUsageTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SurveysCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  ValuationCollectionUUID : UUID;
  SurveyID : String(35);
  SurveyVersion : String(32);
  @cds.ambiguous : 'missing on condition?'
  SellingPointValuation : Association to one sap.c4c.SellingPointValuationCollection {  };
  @cds.ambiguous : 'missing on condition?'
  StoreValuation : Association to one sap.c4c.StoreValuationCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Survey : Association to one sap.c4c.SurveyCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.PoEQuestionCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  QuestionTypeCode : String(2);
  QuestionTypeCodeText : LargeString;
  QuestionDefinitionUUID : UUID;
  @cds.ambiguous : 'missing on condition?'
  QuestionResponses : Association to many sap.c4c.QuestionResponsesCollection {  };
  @cds.ambiguous : 'missing on condition?'
  SellingPointValuation : Association to one sap.c4c.SellingPointValuationCollection {  };
  @cds.ambiguous : 'missing on condition?'
  StoreValuation : Association to one sap.c4c.StoreValuationCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.PoEQuestionQuestionTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.QuestionResponsesCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  OptionDescription : String(500);
  QuestionTypeCode : String(2);
  QuestionTypeCodeText : LargeString;
  SelectedIndicator : Boolean;
  QuestionDescription : String(500);
  @cds.ambiguous : 'missing on condition?'
  PoEQuestion : Association to one sap.c4c.PoEQuestionCollection {  };
  @cds.ambiguous : 'missing on condition?'
  StoreValuation : Association to one sap.c4c.StoreValuationCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.QuestionResponsesQuestionTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PoETasksCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  ActivityTaskUUID : UUID;
  TaskID : String(35);
  @cds.ambiguous : 'missing on condition?'
  SellingPointValuation : Association to one sap.c4c.SellingPointValuationCollection {  };
  @cds.ambiguous : 'missing on condition?'
  StoreValuation : Association to one sap.c4c.StoreValuationCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Task : Association to one sap.c4c.TasksCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.PoEAttachmentsCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  UUID : UUID;
  Name : LargeString;
  MimeType : LargeString;
  Binary : LargeBinary;
  SizeInkB : Decimal(31, 14);
  DocumentLink : LargeString;
  OutputRelevanceIndicator : Boolean;
  LinkWebURI : LargeString;
  TypeCode : String(5);
  TypeCodeText : LargeString;
  CategoryCode : String(1);
  CategoryCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastUpdatedOn : Timestamp;
  LastUpdatedBy : String(80);
  Title : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PoEAttachmentsTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PoEAttachmentsCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EngagementMapAttachmentsCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  UUID : UUID;
  Name : LargeString;
  MimeType : LargeString;
  Binary : LargeBinary;
  SizeInkB : Decimal(31, 14);
  DocumentLink : LargeString;
  OutputRelevanceIndicator : Boolean;
  LinkWebURI : LargeString;
  TypeCode : String(5);
  TypeCodeText : LargeString;
  CategoryCode : String(1);
  CategoryCodeText : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastUpdatedOn : Timestamp;
  LastUpdatedBy : String(80);
  Title : LargeString;
  StoreValuationID : String(35);
};

@cds.persistence.skip : true
entity sap.c4c.EngagementMapAttachmentsTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EngagementMapAttachmentsCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EmployeeBasicDataCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  EmployeeID : String(20);
  EmployeeUUID : UUID;
  UserID : String(40);
  IdentityUUID : UUID;
  BusinessPartnerID : String(10);
  CurrentInternalEmployeeIndicator : Boolean;
  CurrentExternalEmployeeIndicator : Boolean;
  FormattedName : String(480);
  TitleCode : String(4);
  AcademicTitleCode : String(4);
  FirstName : String(40);
  MiddleName : String(40);
  LastName : String(40);
  SecondLastName : String(40);
  NickName : String(40);
  GenderCode : String(1);
  LanguageCode : String(2);
  FormattedAddress : String(480);
  CountryCode : String(3);
  RegionCode : String(6);
  AddressLine1 : String(40);
  AddressLine2 : String(40);
  HouseNumber : String(10);
  Street : String(60);
  AddressLine4 : String(40);
  AddressLine5 : String(40);
  City : String(40);
  PostalCode : String(10);
  Phone : String(40);
  Mobile : String(40);
  Fax : String(40);
  Email : String(255);
  UserValidityStartDate : Date;
  UserValidityEndDate : Date;
  UserPasswordPolicyCode : String(40);
  UserLockedIndicator : Boolean;
  TimeZoneCode : String(10);
  ManagerUUID : UUID;
  ManagerFormattedName : String(480);
  JobName : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(480);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ChangedOn : Timestamp;
  ChangedBy : String(480);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  BusinessUser : Association to one sap.c4c.BusinessUserCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ManagerEmployeeBasicData : Association to one sap.c4c.EmployeeBasicDataCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _BusinessPartner : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.EmployeeBasicDataTitleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EmployeeBasicDataAcademicTitleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EmployeeBasicDataGenderCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EmployeeBasicDataLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EmployeeBasicDataCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EmployeeBasicDataRegionCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EmployeeBasicDataUserPasswordPolicyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.EmployeeBasicDataTimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.AccountDuplicateCheckResultCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  AccountID : String(10);
  AccountUUID : UUID;
  StatusCode : String(2);
  StatusCodeText : LargeString;
  Name : String(480);
  Address : String(480);
  Phone : String(40);
  Mobile : String(40);
  Fax : String(40);
  Email : String(255);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(480);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  EntityLastChangedBy : String(480);
  SimilarityPercent : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _Account : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.AccountDuplicateCheckResultStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ObjectIdentifierMappingCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  LocalObjectID : String(100);
  RemoteObjectID : String(100);
  RemoteIdentifierDefiningSchemeCode : String(15);
  RemoteIdentifierDefiningSchemeCodeText : LargeString;
  RemoteBusinessSystemID : String(32);
  LocalObjectUUID : UUID;
  RemoteBusinessSystemUUID : UUID;
  DefaultIndicator : Boolean;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
};

@cds.persistence.skip : true
entity sap.c4c.ObjectIdentifierMappingRemoteIdentifierDefiningSchemeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerDuplicateCheckResultCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  CustomerID : String(10);
  CustomerUUID : UUID;
  StatusCode : String(2);
  StatusCodeText : LargeString;
  Name : String(480);
  GenderCode : String(1);
  GenderCodeText : LargeString;
  BirthDate : Date;
  NationalityCountryCode : String(3);
  NationalityCountryCodeText : LargeString;
  Address : String(480);
  Phone : String(40);
  Mobile : String(40);
  Fax : String(40);
  Email : String(255);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(480);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ChangedOn : Timestamp;
  ChangedBy : String(480);
  SimilarityPercent : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  _Customer : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerDuplicateCheckResultStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerDuplicateCheckResultGenderCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.IndividualCustomerDuplicateCheckResultNationalityCountryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ContactDuplicateCheckResultCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  ContactID : String(10);
  ContactUUID : UUID;
  StatusCode : String(2);
  StatusCodeText : LargeString;
  Name : String(480);
  PersonalAddress : String(480);
  AccountID : String(10);
  AccountName : String(480);
  AccountAddress : String(480);
  Department : String(40);
  JobTitle : String(40);
  Phone : String(40);
  Mobile : String(40);
  Fax : String(40);
  Email : String(255);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(480);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ChangedOn : Timestamp;
  ChangedBy : String(480);
  SimilarityPercent : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Contact : Association to one sap.c4c.ContactCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Account : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ContactDuplicateCheckResultStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ActivityCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  ID : String(35);
  ProcessingTypeCode : String(4);
  PriorityCode : String(1);
  ReportedDate : Date;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ReportedDateTime : Timestamp;
  SubjectName : String(765);
  UUID : UUID;
  TypeCode : String(15);
  LifeCycleStatusCode : String(2);
  InitiatorCode : String(1);
  CreationDate : Date;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  ActivityAttachmentFolder : Association to many sap.c4c.MemoActivityAttachmentFolderCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ActivityBusinessTransactionDocumentReference : Association to many sap.c4c.MemoActivityBusinessTransactionDocumentReferenceCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ActivityParty : Association to many sap.c4c.MemoActivityPartyCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ActivityText : Association to many sap.c4c.MemoActivityTextCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ActivityProcessingTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ActivityPriorityCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ActivityTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ActivityLifeCycleStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ActivityInitiatorCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.MemoActivityPartyCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  PartyID : String(60);
  PartyName : String(255);
  PartyTypeCode : String(15);
  RoleCode : String(10);
  MainIndicator : Boolean;
  @cds.ambiguous : 'missing on condition?'
  Activity : Association to one sap.c4c.ActivityCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _Party : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ActivityPartyPartyTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ActivityPartyRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.MemoActivityAttachmentFolderCollection {
  key ObjectID : String(70);
  ActivityID : String(35);
  Binary : LargeBinary;
  CategoryCode : String(1);
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  DocumentLink : LargeString;
  DocumentTitle : LargeString;
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  LastUpdatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  LastUpdatedOn : Timestamp;
  LinkWebURI : LargeString;
  MimeType : LargeString;
  Name : LargeString;
  OutputRelevanceIndicator : Boolean;
  ParentObjectID : String(70);
  SizeInkB : Decimal(31, 14);
  TypeCode : String(5);
  UUID : UUID;
  @cds.ambiguous : 'missing on condition?'
  _Activity : Association to one sap.c4c.ActivityCollection on _Activity.ObjectID = ParentObjectID;
};

@cds.persistence.skip : true
entity sap.c4c.ActivityAttachmentFolderCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ActivityAttachmentFolderTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.MemoActivityBusinessTransactionDocumentReferenceCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  ID : String(35);
  TypeCode : String(15);
  RoleCode : String(3);
  @cds.ambiguous : 'missing on condition?'
  Activity : Association to one sap.c4c.ActivityCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ActivityBusinessTransactionDocumentReferenceTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ActivityBusinessTransactionDocumentReferenceRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.MemoActivityTextCollection {
  key ObjectID : String(70);
  ParentObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  Text : LargeString;
  LanguageCode : String(2);
  TypeCode : String(5);
  AuthorUUID : UUID;
  AuthorName : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  CreatedOn : Timestamp;
  CreatedBy : String(80);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  UpdatedOn : Timestamp;
  LastUpdatedBy : String(80);
  FormattedText : LargeString;
  languageCode : String(2);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Activity : Association to many sap.c4c.ActivityCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.ActivityTextLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ActivityTextTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ActivityTextlanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.BusinessPartnerCollection {
  key ObjectID : String(70);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  ETag : Timestamp;
  BusinessPartnerUUID : UUID;
  BusinessPartnerID : String(10);
  Name : String(480);
  ThingType : String(40);
  @odata.precision : 7
  @odata.type : 'Edm.DateTimeOffset'
  EntityLastChangedOn : Timestamp;
  @cds.ambiguous : 'missing on condition?'
  Competitor : Association to one sap.c4c.CompetitorCollection {  };
  @cds.ambiguous : 'missing on condition?'
  Contact : Association to one sap.c4c.ContactCollection {  };
  @cds.ambiguous : 'missing on condition?'
  CorporateAccount : Association to one sap.c4c.CorporateAccountCollection {  };
  @cds.ambiguous : 'missing on condition?'
  Employee : Association to one sap.c4c.EmployeeCollection {  };
  @cds.ambiguous : 'missing on condition?'
  IndividualCustomer : Association to one sap.c4c.IndividualCustomerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  Partner : Association to one sap.c4c.PartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  PartnerContact : Association to one sap.c4c.PartnerContactCollection {  };
  @cds.ambiguous : 'missing on condition?'
  ServiceAgent : Association to one sap.c4c.ServiceAgentCollection {  };
};

@cds.persistence.skip : true
entity sap.c4c.BusinessAttributeAssignmentItemlanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ExternalPriceDocumentExternalPriceDocumentCalculationStatusCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InstallationPointInstalledObjectIndividualProductProductTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InstallationPointInstalledObjectTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InstallationPointPartyInformationRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InstalledBaseAddressInformationTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InstalledBaseContactPartiesRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InstalledBasePOBoxPostalCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InstalledBaseTextCollectionLanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InstalledBaseTextCollectionTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InstalledBaseTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InstalledBaselanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.LeadSalesPartnerPartyRoleCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PaymentInvoiceReferenceBusinessTransactionDocumentRelationshipRoleCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.PaymentInvoiceReferenceTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemTotalValuesBaseQuantityTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemTotalValuescurrencyCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuoteItemunitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesQuotetimeZoneCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.SalesTerritorySubordinateSalesTerritoryHierarchyLevelCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceCategoryCatalogueUsageCustomerProblemAndSolutionProcessingTypeCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceIssueCategoryCatalogueCategoryDescriptionlanguageCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.ServiceRequestPartnerContactPartyRoleCategoryCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.StockLocationItemunitCodeCollection {
  key Code : LargeString;
  Description : LargeString;
};

@cds.persistence.skip : true
entity sap.c4c.InstalledBaseRegionCodeCollection {
  key Context : LargeString;
  key Code : LargeString;
  Description : LargeString;
};

type sap.c4c.ElementRatingCollection_Description {
  languageCode : String(2);
  content : LargeString;
};

type sap.c4c.ElementResponseOptionCollection_Description {
  languageCode : String(2);
  content : LargeString;
};

type sap.c4c.ResponseItemCollection_ProductDescription {
  languageCode : String(2);
  content : String(40);
};

type sap.c4c.QuestionAnswersCollection_ResponseOptionDescription {
  languageCode : String(2);
  content : LargeString;
};

type sap.c4c.QuestionAnswersCollection_AmountValue {
  currencyCode : String(3);
  content : Decimal(28, 6);
};

type sap.c4c.QuestionAnswersCollection_QuantityValue {
  unitCode : String(3);
  content : Decimal(31, 14);
};

type sap.c4c.QuestionAnswersCollection_TextValue {
  languageCode : String(9);
  content : LargeString;
};

type sap.c4c.QuestionAnswersCollection_QuestionDescription {
  languageCode : String(2);
  content : LargeString;
};

type sap.c4c.QuestionAnswersCollection_QuestionLowerBoundaryValueAmount {
  currencyCode : String(3);
  content : Decimal(28, 6);
};

type sap.c4c.QuestionAnswersCollection_QuestionLowerBoundaryValueQuantity {
  unitCode : String(3);
  content : Decimal(31, 14);
};

type sap.c4c.QuestionAnswersCollection_QuestionUpperBoundaryValueAmount {
  currencyCode : String(3);
  content : Decimal(28, 6);
};

type sap.c4c.QuestionAnswersCollection_QuestionUpperBoundaryValueQuantity {
  unitCode : String(3);
  content : Decimal(31, 14);
};

type sap.c4c.QuestionAnswersCollection_AnswerDescription {
  languageCode : String(2);
  content : LargeString;
};

type sap.c4c.QuestionAnswersCollection_RatingDescription {
  languageCode : String(2);
  content : LargeString;
};

type sap.c4c.QuestionsCollection_QuestionDescription {
  languageCode : String(2);
  content : LargeString;
};

type sap.c4c.AnswerOptionsCollection_DefaultAmount {
  currencyCode : String(3);
  content : Decimal(28, 6);
};

type sap.c4c.AnswerOptionsCollection_DefaultQuantity {
  unitCode : String(3);
  content : Decimal(31, 14);
};

type sap.c4c.AnswerOptionsCollection_DefaultText {
  languageCode : String(9);
  content : LargeString;
};

type sap.c4c.AnswerOptionsCollection_LowerBoundaryValueQuantity {
  unitCode : String(3);
  content : Decimal(31, 14);
};

type sap.c4c.AnswerOptionsCollection_UpperBoundaryValueQuantity {
  unitCode : String(3);
  content : Decimal(31, 14);
};

type sap.c4c.AnswerOptionsCollection_AnswerOptionDescription {
  languageCode : String(2);
  content : LargeString;
};

type sap.c4c.AnswerOptionsCollection_UpperBoundaryValueAmount {
  currencyCode : String(3);
  content : Decimal(28, 6);
};

type sap.c4c.AnswerOptionsCollection_LowerBoundaryValueAmount {
  currencyCode : String(3);
  content : Decimal(28, 6);
};

type sap.c4c.AnswersCollection_AmountValue {
  currencyCode : String(3);
  content : Decimal(28, 6);
};

type sap.c4c.AnswersCollection_QuantityValue {
  unitCode : String(3);
  content : Decimal(31, 14);
};

type sap.c4c.AnswersCollection_TextValue {
  languageCode : String(9);
  content : LargeString;
};

@cds.external : true
service sap.c4c {};

