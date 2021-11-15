/* checksum : 58d7d6c61d6cda9122e2c3929160856d */
entity sap.s4.A_AddressEmailAddress {
  key AddressID : String(10);
  key Person : String(10);
  key OrdinalNumber : String(3);
  IsDefaultEmailAddress : Boolean;
  EmailAddress : String(241);
  SearchEmailAddress : String(20);
  AddressCommunicationRemarkText : String(50);
};

entity sap.s4.A_AddressFaxNumber {
  key AddressID : String(10);
  key Person : String(10);
  key OrdinalNumber : String(3);
  IsDefaultFaxNumber : Boolean;
  FaxCountry : String(3);
  FaxNumber : String(30);
  FaxNumberExtension : String(10);
  InternationalFaxNumber : String(30);
  AddressCommunicationRemarkText : String(50);
};

entity sap.s4.A_AddressHomePageURL {
  key AddressID : String(10);
  key Person : String(10);
  key OrdinalNumber : String(3);
  key ValidityStartDate : Date;
  key IsDefaultURLAddress : Boolean;
  SearchURLAddress : String(50);
  AddressCommunicationRemarkText : String(50);
  URLFieldLength : Integer;
  WebsiteURL : String(2048);
};

entity sap.s4.A_AddressPhoneNumber {
  key AddressID : String(10);
  key Person : String(10);
  key OrdinalNumber : String(3);
  DestinationLocationCountry : String(3);
  IsDefaultPhoneNumber : Boolean;
  PhoneNumber : String(30);
  PhoneNumberExtension : String(10);
  InternationalPhoneNumber : String(30);
  PhoneNumberType : String(1);
  AddressCommunicationRemarkText : String(50);
};

entity sap.s4.A_BPContactToAddress {
  key RelationshipNumber : String(12);
  key BusinessPartnerCompany : String(10);
  key BusinessPartnerPerson : String(10);
  key ValidityEndDate : Date;
  key AddressID : String(10);
  AddressNumber : String(10);
  AdditionalStreetPrefixName : String(40);
  AdditionalStreetSuffixName : String(40);
  AddressTimeZone : String(6);
  CareOfName : String(40);
  CityCode : String(12);
  CityName : String(40);
  CompanyPostalCode : String(10);
  Country : String(3);
  County : String(40);
  DeliveryServiceNumber : String(10);
  DeliveryServiceTypeCode : String(4);
  District : String(40);
  FormOfAddress : String(4);
  FullName : String(80);
  HomeCityName : String(40);
  HouseNumber : String(10);
  HouseNumberSupplementText : String(10);
  Language : String(2);
  POBox : String(10);
  POBoxDeviatingCityName : String(40);
  POBoxDeviatingCountry : String(3);
  POBoxDeviatingRegion : String(3);
  POBoxIsWithoutNumber : Boolean;
  POBoxLobbyName : String(40);
  POBoxPostalCode : String(10);
  Person : String(10);
  PostalCode : String(10);
  PrfrdCommMediumType : String(3);
  Region : String(3);
  StreetName : String(60);
  StreetPrefixName : String(40);
  StreetSuffixName : String(40);
  TaxJurisdiction : String(15);
  TransportZone : String(10);
  AddressRepresentationCode : String(1);
  ContactRelationshipFunction : String(40);
  ContactRelationshipDepartment : String(40);
  Floor : String(10);
  ContactPersonBuilding : String(10);
  RoomNumber : String(10);
  ContactPersonPrfrdCommMedium : String(3);
  CorrespondenceShortName : String(10);
  InhouseMail : String(10);

  /**
   * Please add an ON condition
   * 
   */
  to_EmailAddress : Association to many sap.s4.A_AddressEmailAddress {  };

  /**
   * Please add an ON condition
   * 
   */
  to_FaxNumber : Association to many sap.s4.A_AddressFaxNumber {  };

  /**
   * Please add an ON condition
   * 
   */
  to_MobilePhoneNumber : Association to many sap.s4.A_AddressPhoneNumber {  };

  /**
   * Please add an ON condition
   * 
   */
  to_PhoneNumber : Association to many sap.s4.A_AddressPhoneNumber {  };

  /**
   * Please add an ON condition
   * 
   */
  to_URLAddress : Association to many sap.s4.A_AddressHomePageURL {  };
};

entity sap.s4.A_BPContactToFuncAndDept {
  key RelationshipNumber : String(12);
  key BusinessPartnerCompany : String(10);
  key BusinessPartnerPerson : String(10);
  key ValidityEndDate : Date;
  ContactPersonFunction : String(4);
  ContactPersonDepartment : String(4);
  PhoneNumber : String(30);
  PhoneNumberExtension : String(10);
  FaxNumber : String(30);
  FaxNumberExtension : String(10);
  EmailAddress : String(241);
  RelationshipCategory : String(6);
};

entity sap.s4.A_BuPaAddressUsage {
  key BusinessPartner : String(10);
  key ValidityEndDate : Timestamp;
  key AddressUsage : String(10);
  key AddressID : String(10);
  ValidityStartDate : Timestamp;
  StandardUsage : Boolean;
  AuthorizationGroup : String(4);
};

entity sap.s4.A_BuPaIdentification {
  key BusinessPartner : String(10);
  key BPIdentificationType : String(6);
  key BPIdentificationNumber : String(60);
  BPIdnNmbrIssuingInstitute : String(40);
  BPIdentificationEntryDate : Date;
  Country : String(3);
  Region : String(3);
  ValidityStartDate : Date;
  ValidityEndDate : Date;
  AuthorizationGroup : String(4);
};

entity sap.s4.A_BuPaIndustry {
  key IndustrySector : String(10);
  key IndustrySystemType : String(4);
  key BusinessPartner : String(10);
  IsStandardIndustry : String(1);
  IndustryKeyDescription : String(100);
};

entity sap.s4.A_BusinessPartner {
  key BusinessPartner : String(10);
  Customer : String(10);
  Supplier : String(10);
  AcademicTitle : String(4);
  AuthorizationGroup : String(4);
  BusinessPartnerCategory : String(1);
  BusinessPartnerFullName : String(81);
  BusinessPartnerGrouping : String(4);
  BusinessPartnerName : String(81);
  BusinessPartnerUUID : UUID;
  CorrespondenceLanguage : String(2);
  CreatedByUser : String(12);
  CreationDate : Date;
  CreationTime : Time;
  FirstName : String(40);
  FormOfAddress : String(4);
  Industry : String(10);
  InternationalLocationNumber1 : String(7);
  InternationalLocationNumber2 : String(5);
  IsFemale : Boolean;
  IsMale : Boolean;
  IsNaturalPerson : String(1);
  IsSexUnknown : Boolean;
  GenderCodeName : String(1);
  Language : String(2);
  LastChangeDate : Date;
  LastChangeTime : Time;
  LastChangedByUser : String(12);
  LastName : String(40);
  LegalForm : String(2);
  OrganizationBPName1 : String(40);
  OrganizationBPName2 : String(40);
  OrganizationBPName3 : String(40);
  OrganizationBPName4 : String(40);
  OrganizationFoundationDate : Date;
  OrganizationLiquidationDate : Date;
  SearchTerm1 : String(20);
  SearchTerm2 : String(20);
  AdditionalLastName : String(40);
  BirthDate : Date;
  BusinessPartnerBirthDateStatus : String(1);
  BusinessPartnerBirthplaceName : String(40);
  BusinessPartnerDeathDate : Date;
  BusinessPartnerIsBlocked : Boolean;
  BusinessPartnerType : String(4);
  ETag : String(26);
  GroupBusinessPartnerName1 : String(40);
  GroupBusinessPartnerName2 : String(40);
  IndependentAddressID : String(10);
  InternationalLocationNumber3 : String(1);
  MiddleName : String(40);
  NameCountry : String(3);
  NameFormat : String(2);
  PersonFullName : String(80);
  PersonNumber : String(10);
  IsMarkedForArchiving : Boolean;
  BusinessPartnerIDByExtSystem : String(20);
  TradingPartner : String(6);

  /**
   * Please add an ON condition
   * 
   */
  to_BuPaIdentification : Association to many sap.s4.A_BuPaIdentification {  };

  /**
   * Please add an ON condition
   * 
   */
  to_BuPaIndustry : Association to many sap.s4.A_BuPaIndustry {  };

  /**
   * Please add an ON condition
   * 
   */
  to_BusinessPartnerAddress : 
  // Association to many sap.s4.A_BusinessPartnerAddress {  };
  Association to many sap.s4.A_BusinessPartnerAddress
    on to_BusinessPartnerAddress.BusinessPartner = BusinessPartner;

  /**
   * Please add an ON condition
   * 
   */
  to_BusinessPartnerBank : Association to many sap.s4.A_BusinessPartnerBank {  };

  /**
   * Please add an ON condition
   * 
   */
  to_BusinessPartnerContact : Association to many sap.s4.A_BusinessPartnerContact {  };

  /**
   * Please add an ON condition
   * 
   */
  to_BusinessPartnerRole : Association to many sap.s4.A_BusinessPartnerRole {  };

  /**
   * Please add an ON condition
   * 
   */
  to_BusinessPartnerTax : Association to many sap.s4.A_BusinessPartnerTaxNumber {  };

  /**
   * Please add an ON condition
   * 
   */
  to_Customer : Association to one sap.s4.A_Customer {  };

  /**
   * Please add an ON condition
   * 
   */
  to_Supplier : Association to one sap.s4.A_Supplier {  };
};

entity sap.s4.A_BusinessPartnerAddress {
  key BusinessPartner : String(10);
  key AddressID : String(10);
  ValidityStartDate : Timestamp;
  ValidityEndDate : Timestamp;
  AuthorizationGroup : String(4);
  AddressUUID : UUID;
  AdditionalStreetPrefixName : String(40);
  AdditionalStreetSuffixName : String(40);
  AddressTimeZone : String(6);
  CareOfName : String(40);
  CityCode : String(12);
  CityName : String(40);
  CompanyPostalCode : String(10);
  Country : String(3);
  County : String(40);
  DeliveryServiceNumber : String(10);
  DeliveryServiceTypeCode : String(4);
  District : String(40);
  FormOfAddress : String(4);
  FullName : String(80);
  HomeCityName : String(40);
  HouseNumber : String(10);
  HouseNumberSupplementText : String(10);
  Language : String(2);
  POBox : String(10);
  POBoxDeviatingCityName : String(40);
  POBoxDeviatingCountry : String(3);
  POBoxDeviatingRegion : String(3);
  POBoxIsWithoutNumber : Boolean;
  POBoxLobbyName : String(40);
  POBoxPostalCode : String(10);
  Person : String(10);
  PostalCode : String(10);
  PrfrdCommMediumType : String(3);
  Region : String(3);
  StreetName : String(60);
  StreetPrefixName : String(40);
  StreetSuffixName : String(40);
  TaxJurisdiction : String(15);
  TransportZone : String(10);
  AddressIDByExternalSystem : String(20);
  CountyCode : String(8);
  TownshipCode : String(8);
  TownshipName : String(40);

  /**
   * Please add an ON condition
   * 
   */
  to_AddressUsage : Association to many sap.s4.A_BuPaAddressUsage {  };

  /**
   * Please add an ON condition
   * 
   */
  to_EmailAddress : 
  // Association to many sap.s4.A_AddressEmailAddress {  };
  Association to many sap.s4.A_AddressEmailAddress
    on to_EmailAddress.AddressID = AddressID;

  /**
   * Please add an ON condition
   * 
   */
  to_FaxNumber : Association to many sap.s4.A_AddressFaxNumber {  };

  /**
   * Please add an ON condition
   * 
   */
  to_MobilePhoneNumber : Association to many sap.s4.A_AddressPhoneNumber {  };

  /**
   * Please add an ON condition
   * 
   */
  to_PhoneNumber : 
  // Association to many sap.s4.A_AddressPhoneNumber {  };
  Association to many sap.s4.A_AddressPhoneNumber
    on to_PhoneNumber.AddressID = AddressID;

  /**
   * Please add an ON condition
   * 
   */
  to_URLAddress : Association to many sap.s4.A_AddressHomePageURL {  };
};

entity sap.s4.A_BusinessPartnerBank {
  key BusinessPartner : String(10);
  key BankIdentification : String(4);
  BankCountryKey : String(3);
  BankName : String(60);
  BankNumber : String(15);
  SWIFTCode : String(11);
  BankControlKey : String(2);
  BankAccountHolderName : String(60);
  BankAccountName : String(40);
  ValidityStartDate : Timestamp;
  ValidityEndDate : Timestamp;
  IBAN : String(34);
  IBANValidityStartDate : Date;
  BankAccount : String(18);
  BankAccountReferenceText : String(20);
  CollectionAuthInd : Boolean;
  CityName : String(35);
  AuthorizationGroup : String(4);
};

entity sap.s4.A_BusinessPartnerContact {
  key RelationshipNumber : String(12);
  key BusinessPartnerCompany : String(10);
  key BusinessPartnerPerson : String(10);
  key ValidityEndDate : Date;
  ValidityStartDate : Date;
  IsStandardRelationship : Boolean;
  RelationshipCategory : String(6);

  /**
   * Please add an ON condition
   * 
   */
  to_ContactAddress : Association to many sap.s4.A_BPContactToAddress {  };

  /**
   * Please add an ON condition
   * 
   */
  to_ContactRelationship : Association to one sap.s4.A_BPContactToFuncAndDept {  };
};

entity sap.s4.A_BusinessPartnerRole {
  key BusinessPartner : String(10);
  key BusinessPartnerRole : String(6);
  ValidFrom : Timestamp;
  ValidTo : Timestamp;
  AuthorizationGroup : String(4);
};

entity sap.s4.A_BusinessPartnerTaxNumber {
  key BusinessPartner : String(10);
  key BPTaxType : String(4);
  BPTaxNumber : String(20);
  BPTaxLongNumber : String(60);
  AuthorizationGroup : String(4);
};

entity sap.s4.A_Customer {
  key Customer : String(10);
  AuthorizationGroup : String(4);
  BillingIsBlockedForCustomer : String(2);
  CreatedByUser : String(12);
  CreationDate : Date;
  CustomerAccountGroup : String(4);
  CustomerClassification : String(2);
  CustomerFullName : String(220);
  CustomerName : String(80);
  DeliveryIsBlocked : String(2);
  NFPartnerIsNaturalPerson : String(1);
  OrderIsBlockedForCustomer : String(2);
  PostingIsBlocked : Boolean;
  Supplier : String(10);
  CustomerCorporateGroup : String(10);
  FiscalAddress : String(10);
  Industry : String(4);
  IndustryCode1 : String(10);
  IndustryCode2 : String(10);
  IndustryCode3 : String(10);
  IndustryCode4 : String(10);
  IndustryCode5 : String(10);
  InternationalLocationNumber1 : String(7);
  NielsenRegion : String(2);
  ResponsibleType : String(2);
  TaxNumber1 : String(16);
  TaxNumber2 : String(11);
  TaxNumber3 : String(18);
  TaxNumber4 : String(18);
  TaxNumber5 : String(60);
  TaxNumberType : String(2);
  VATRegistration : String(20);
  DeletionIndicator : Boolean;
  ExpressTrainStationName : String(25);
  TrainStationName : String(25);
  CityCode : String(4);
  County : String(3);

  /**
   * Please add an ON condition
   * 
   */
  to_CustomerCompany : Association to many sap.s4.A_CustomerCompany {  };

  /**
   * Please add an ON condition
   * 
   */
  to_CustomerSalesArea : Association to many sap.s4.A_CustomerSalesArea {  };

  /**
   * Please add an ON condition
   * 
   */
  to_CustomerTaxGrouping : Association to many sap.s4.A_CustomerTaxGrouping {  };

  /**
   * Please add an ON condition
   * 
   */
  to_CustomerText : Association to many sap.s4.A_CustomerText {  };

  /**
   * Please add an ON condition
   * 
   */
  to_CustomerUnloadingPoint : Association to many sap.s4.A_CustomerUnloadingPoint {  };

  /**
   * Please add an ON condition
   * 
   */
  _CustomerSalesAreaTaxes : Association to many sap.s4.A_CustomerSalesAreaTax {  };
};

entity sap.s4.A_CustomerCompany {
  key Customer : String(10);
  key CompanyCode : String(4);
  APARToleranceGroup : String(4);
  AccountByCustomer : String(12);
  AccountingClerk : String(2);
  AccountingClerkFaxNumber : String(31);
  AccountingClerkInternetAddress : String(130);
  AccountingClerkPhoneNumber : String(30);
  AlternativePayerAccount : String(10);
  AuthorizationGroup : String(4);
  CollectiveInvoiceVariant : String(1);
  CustomerAccountNote : String(30);
  CustomerHeadOffice : String(10);
  CustomerSupplierClearingIsUsed : Boolean;
  HouseBank : String(5);
  InterestCalculationCode : String(2);
  InterestCalculationDate : Date;
  IntrstCalcFrequencyInMonths : String(2);
  IsToBeLocallyProcessed : Boolean;
  ItemIsToBePaidSeparately : Boolean;
  LayoutSortingRule : String(3);
  PaymentBlockingReason : String(1);
  PaymentMethodsList : String(10);
  PaymentTerms : String(4);
  PaytAdviceIsSentbyEDI : Boolean;
  PhysicalInventoryBlockInd : Boolean;
  ReconciliationAccount : String(10);
  RecordPaymentHistoryIndicator : Boolean;
  UserAtCustomer : String(15);
  DeletionIndicator : Boolean;
  CashPlanningGroup : String(10);
  KnownOrNegotiatedLeave : String(4);
  ValueAdjustmentKey : String(2);
  CustomerAccountGroup : String(4);

  /**
   * Please add an ON condition
   * 
   */
  to_CompanyText : Association to many sap.s4.A_CustomerCompanyText {  };

  /**
   * Please add an ON condition
   * 
   */
  to_CustomerDunning : Association to many sap.s4.A_CustomerDunning {  };

  /**
   * Please add an ON condition
   * 
   */
  to_WithHoldingTax : Association to many sap.s4.A_CustomerWithHoldingTax {  };
};

entity sap.s4.A_CustomerCompanyText {
  key Customer : String(10);
  key CompanyCode : String(4);
  key Language : String(2);
  key LongTextID : String(4);
  LongText : LargeString;
};

entity sap.s4.A_CustomerDunning {
  key Customer : String(10);
  key CompanyCode : String(4);
  key DunningArea : String(2);
  DunningBlock : String(1);
  DunningLevel : String(1);
  DunningProcedure : String(4);
  DunningRecipient : String(10);
  LastDunnedOn : Date;
  LegDunningProcedureOn : Date;
  DunningClerk : String(2);
  AuthorizationGroup : String(4);
  CustomerAccountGroup : String(4);

  /**
   * Please add an ON condition
   * 
   */
  _Customer : Association to one sap.s4.A_Customer on _Customer.Customer = Customer;
};

entity sap.s4.A_CustomerSalesArea {
  key Customer : String(10);
  key SalesOrganization : String(4);
  key DistributionChannel : String(2);
  key Division : String(2);
  AccountByCustomer : String(12);
  AuthorizationGroup : String(4);
  BillingIsBlockedForCustomer : String(2);
  CompleteDeliveryIsDefined : Boolean;
  Currency : String(5);
  CustomerABCClassification : String(2);
  CustomerAccountAssignmentGroup : String(2);
  CustomerGroup : String(2);
  CustomerPaymentTerms : String(4);
  CustomerPriceGroup : String(2);
  CustomerPricingProcedure : String(2);
  DeliveryIsBlockedForCustomer : String(2);
  DeliveryPriority : String(2);
  IncotermsClassification : String(3);
  IncotermsLocation2 : String(70);
  IncotermsVersion : String(4);
  IncotermsLocation1 : String(70);
  DeletionIndicator : Boolean;
  IncotermsTransferLocation : String(28);
  InvoiceDate : String(2);
  ItemOrderProbabilityInPercent : String(3);
  OrderCombinationIsAllowed : Boolean;
  OrderIsBlockedForCustomer : String(2);
  PartialDeliveryIsAllowed : String(1);
  PriceListType : String(2);
  SalesGroup : String(3);
  SalesOffice : String(4);
  ShippingCondition : String(2);
  SupplyingPlant : String(4);
  SalesDistrict : String(6);
  InvoiceListSchedule : String(2);
  ExchangeRateType : String(4);
  AdditionalCustomerGroup1 : String(3);
  AdditionalCustomerGroup2 : String(3);
  AdditionalCustomerGroup3 : String(3);
  AdditionalCustomerGroup4 : String(3);
  AdditionalCustomerGroup5 : String(3);
  PaymentGuaranteeProcedure : String(4);
  CustomerAccountGroup : String(4);

  /**
   * Please add an ON condition
   * 
   */
  to_PartnerFunction : Association to many sap.s4.A_CustSalesPartnerFunc {  };

  /**
   * Please add an ON condition
   * 
   */
  to_SalesAreaTax : Association to many sap.s4.A_CustomerSalesAreaTax {  };

  /**
   * Please add an ON condition
   * 
   */
  to_SalesAreaText : Association to many sap.s4.A_CustomerSalesAreaText {  };
};

entity sap.s4.A_CustomerSalesAreaTax {
  key Customer : String(10);
  key SalesOrganization : String(4);
  key DistributionChannel : String(2);
  key Division : String(2);
  key DepartureCountry : String(3);
  key CustomerTaxCategory : String(4);
  CustomerTaxClassification : String(1);
};

entity sap.s4.A_CustomerSalesAreaText {
  key Customer : String(10);
  key SalesOrganization : String(4);
  key DistributionChannel : String(2);
  key Division : String(2);
  key Language : String(2);
  key LongTextID : String(4);
  LongText : LargeString;
};

entity sap.s4.A_CustomerTaxGrouping {
  key Customer : String(10);
  key CustomerTaxGroupingCode : String(3);
  CustTaxGrpExemptionCertificate : String(15);
  CustTaxGroupExemptionRate : Decimal(5, 2);
  CustTaxGroupExemptionStartDate : Date;
  CustTaxGroupExemptionEndDate : Date;
  CustTaxGroupSubjectedStartDate : Date;
  CustTaxGroupSubjectedEndDate : Date;
};

entity sap.s4.A_CustomerText {
  key Customer : String(10);
  key Language : String(2);
  key LongTextID : String(4);
  LongText : LargeString;
};

entity sap.s4.A_CustomerUnloadingPoint {
  key Customer : String(10);
  key UnloadingPointName : String(25);
  CustomerFactoryCalenderCode : String(2);
  BPGoodsReceivingHoursCode : String(3);
  IsDfltBPUnloadingPoint : Boolean;
  MondayMorningOpeningTime : Time;
  MondayMorningClosingTime : Time;
  MondayAfternoonOpeningTime : Time;
  MondayAfternoonClosingTime : Time;
  TuesdayMorningOpeningTime : Time;
  TuesdayMorningClosingTime : Time;
  TuesdayAfternoonOpeningTime : Time;
  TuesdayAfternoonClosingTime : Time;
  WednesdayMorningOpeningTime : Time;
  WednesdayMorningClosingTime : Time;
  WednesdayAfternoonOpeningTime : Time;
  WednesdayAfternoonClosingTime : Time;
  ThursdayMorningOpeningTime : Time;
  ThursdayMorningClosingTime : Time;
  ThursdayAfternoonOpeningTime : Time;
  ThursdayAfternoonClosingTime : Time;
  FridayMorningOpeningTime : Time;
  FridayMorningClosingTime : Time;
  FridayAfternoonOpeningTime : Time;
  FridayAfternoonClosingTime : Time;
  SaturdayMorningOpeningTime : Time;
  SaturdayMorningClosingTime : Time;
  SaturdayAfternoonOpeningTime : Time;
  SaturdayAfternoonClosingTime : Time;
  SundayMorningOpeningTime : Time;
  SundayMorningClosingTime : Time;
  SundayAfternoonOpeningTime : Time;
  SundayAfternoonClosingTime : Time;
};

entity sap.s4.A_CustomerWithHoldingTax {
  key Customer : String(10);
  key CompanyCode : String(4);
  key WithholdingTaxType : String(2);
  WithholdingTaxCode : String(2);
  WithholdingTaxAgent : Boolean;
  ObligationDateBegin : Date;
  ObligationDateEnd : Date;
  WithholdingTaxNumber : String(16);
  WithholdingTaxCertificate : String(25);
  WithholdingTaxExmptPercent : Decimal(5, 2);
  ExemptionDateBegin : Date;
  ExemptionDateEnd : Date;
  ExemptionReason : String(2);
  AuthorizationGroup : String(4);
};

entity sap.s4.A_CustSalesPartnerFunc {
  key Customer : String(10);
  key SalesOrganization : String(4);
  key DistributionChannel : String(2);
  key Division : String(2);
  key PartnerCounter : String(3);
  key PartnerFunction : String(2);
  BPCustomerNumber : String(10);
  CustomerPartnerDescription : String(30);
  DefaultPartner : Boolean;
  Supplier : String(10);
  PersonnelNumber : String(8);
  ContactPerson : String(10);
  AuthorizationGroup : String(4);

  /**
   * Please add an ON condition
   * 
   */
  _Customer : Association to one sap.s4.A_Customer on _Customer.Customer = Customer;
};

entity sap.s4.A_Supplier {
  key Supplier : String(10);
  AlternativePayeeAccountNumber : String(10);
  AuthorizationGroup : String(4);
  CreatedByUser : String(12);
  CreationDate : Date;
  Customer : String(10);
  PaymentIsBlockedForSupplier : Boolean;
  PostingIsBlocked : Boolean;
  PurchasingIsBlocked : Boolean;
  SupplierAccountGroup : String(4);
  SupplierFullName : String(220);
  SupplierName : String(80);
  VATRegistration : String(20);
  BirthDate : Date;
  ConcatenatedInternationalLocNo : String(20);
  DeletionIndicator : Boolean;
  FiscalAddress : String(10);
  Industry : String(4);
  InternationalLocationNumber1 : String(7);
  InternationalLocationNumber2 : String(5);
  InternationalLocationNumber3 : String(1);
  IsNaturalPerson : String(1);
  ResponsibleType : String(2);
  SuplrQltyInProcmtCertfnValidTo : Date;
  SuplrQualityManagementSystem : String(4);
  SupplierCorporateGroup : String(10);
  SupplierProcurementBlock : String(2);
  TaxNumber1 : String(16);
  TaxNumber2 : String(11);
  TaxNumber3 : String(18);
  TaxNumber4 : String(18);
  TaxNumber5 : String(60);
  TaxNumberResponsible : String(18);
  TaxNumberType : String(2);
  SuplrProofOfDelivRlvtCode : String(1);
  BR_TaxIsSplit : Boolean;

  /**
   * Please add an ON condition
   * 
   */
  to_SupplierCompany : Association to many sap.s4.A_SupplierCompany {  };

  /**
   * Please add an ON condition
   * 
   */
  to_SupplierPurchasingOrg : Association to many sap.s4.A_SupplierPurchasingOrg {  };

  /**
   * Please add an ON condition
   * 
   */
  to_SupplierText : Association to many sap.s4.A_SupplierText {  };
};

entity sap.s4.A_SupplierCompany {
  key Supplier : String(10);
  key CompanyCode : String(4);
  AuthorizationGroup : String(4);
  CompanyCodeName : String(25);
  PaymentBlockingReason : String(1);
  SupplierIsBlockedForPosting : Boolean;
  AccountingClerk : String(2);
  AccountingClerkFaxNumber : String(31);
  AccountingClerkPhoneNumber : String(30);
  SupplierClerk : String(15);
  SupplierClerkURL : String(130);
  PaymentMethodsList : String(10);
  PaymentTerms : String(4);
  ClearCustomerSupplier : Boolean;
  IsToBeLocallyProcessed : Boolean;
  ItemIsToBePaidSeparately : Boolean;
  PaymentIsToBeSentByEDI : Boolean;
  HouseBank : String(5);
  CheckPaidDurationInDays : Decimal(3);
  Currency : String(5);
  BillOfExchLmtAmtInCoCodeCrcy : Decimal(14, 3);
  SupplierClerkIDBySupplier : String(12);
  ReconciliationAccount : String(10);
  InterestCalculationCode : String(2);
  InterestCalculationDate : Date;
  IntrstCalcFrequencyInMonths : String(2);
  SupplierHeadOffice : String(10);
  AlternativePayee : String(10);
  LayoutSortingRule : String(3);
  APARToleranceGroup : String(4);
  SupplierCertificationDate : Date;
  SupplierAccountNote : String(30);
  WithholdingTaxCountry : String(3);
  DeletionIndicator : Boolean;
  CashPlanningGroup : String(10);
  IsToBeCheckedForDuplicates : Boolean;
  MinorityGroup : String(3);
  SupplierAccountGroup : String(4);

  /**
   * Please add an ON condition
   * 
   */
  to_CompanyText : Association to many sap.s4.A_SupplierCompanyText {  };

  /**
   * Please add an ON condition
   * 
   */
  to_Supplier : Association to one sap.s4.A_Supplier {  };

  /**
   * Please add an ON condition
   * 
   */
  to_SupplierDunning : Association to many sap.s4.A_SupplierDunning {  };

  /**
   * Please add an ON condition
   * 
   */
  to_SupplierWithHoldingTax : Association to many sap.s4.A_SupplierWithHoldingTax {  };
};

entity sap.s4.A_SupplierCompanyText {
  key Supplier : String(10);
  key CompanyCode : String(4);
  key Language : String(2);
  key LongTextID : String(4);
  LongText : LargeString;
};

entity sap.s4.A_SupplierDunning {
  key Supplier : String(10);
  key CompanyCode : String(4);
  key DunningArea : String(2);
  DunningBlock : String(1);
  DunningLevel : String(1);
  DunningProcedure : String(4);
  DunningRecipient : String(10);
  LastDunnedOn : Date;
  LegDunningProcedureOn : Date;
  DunningClerk : String(2);
  AuthorizationGroup : String(4);
  SupplierAccountGroup : String(4);
};

entity sap.s4.A_SupplierPartnerFunc {
  key Supplier : String(10);
  key PurchasingOrganization : String(4);
  key SupplierSubrange : String(6);
  key Plant : String(4);
  key PartnerFunction : String(2);
  key PartnerCounter : String(3);
  DefaultPartner : Boolean;
  CreationDate : Date;
  CreatedByUser : String(12);
  ReferenceSupplier : String(10);
  AuthorizationGroup : String(4);
};

entity sap.s4.A_SupplierPurchasingOrg {
  key Supplier : String(10);
  key PurchasingOrganization : String(4);
  CalculationSchemaGroupCode : String(2);
  DeletionIndicator : Boolean;
  IncotermsClassification : String(3);
  IncotermsTransferLocation : String(28);
  IncotermsVersion : String(4);
  IncotermsLocation1 : String(70);
  IncotermsLocation2 : String(70);
  InvoiceIsGoodsReceiptBased : Boolean;
  MaterialPlannedDeliveryDurn : Decimal(3);
  MinimumOrderAmount : Decimal(14, 3);
  PaymentTerms : String(4);
  PricingDateControl : String(1);
  PurOrdAutoGenerationIsAllowed : Boolean;
  PurchaseOrderCurrency : String(5);
  PurchasingGroup : String(3);
  PurchasingIsBlockedForSupplier : Boolean;
  ShippingCondition : String(2);
  SupplierABCClassificationCode : String(1);
  SupplierPhoneNumber : String(16);
  SupplierRespSalesPersonName : String(30);
  SupplierConfirmationControlKey : String(4);
  IsOrderAcknRqd : Boolean;
  AuthorizationGroup : String(4);
  SupplierAccountGroup : String(4);

  /**
   * Please add an ON condition
   * 
   */
  to_PartnerFunction : Association to many sap.s4.A_SupplierPartnerFunc {  };

  /**
   * Please add an ON condition
   * 
   */
  to_PurchasingOrgText : Association to many sap.s4.A_SupplierPurchasingOrgText {  };
};

entity sap.s4.A_SupplierPurchasingOrgText {
  key Supplier : String(10);
  key PurchasingOrganization : String(4);
  key Language : String(2);
  key LongTextID : String(4);
  LongText : LargeString;
};

entity sap.s4.A_SupplierText {
  key Supplier : String(10);
  key Language : String(2);
  key LongTextID : String(4);
  LongText : LargeString;
};

entity sap.s4.A_SupplierWithHoldingTax {
  key Supplier : String(10);
  key CompanyCode : String(4);
  key WithholdingTaxType : String(2);
  ExemptionDateBegin : Date;
  ExemptionDateEnd : Date;
  ExemptionReason : String(2);
  IsWithholdingTaxSubject : Boolean;
  RecipientType : String(2);
  WithholdingTaxCertificate : String(25);
  WithholdingTaxCode : String(2);
  WithholdingTaxExmptPercent : Decimal(5, 2);
  WithholdingTaxNumber : String(16);
  AuthorizationGroup : String(4);
};

@cds.external : true
service sap.s4 {};

