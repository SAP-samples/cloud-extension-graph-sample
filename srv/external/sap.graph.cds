/* checksum : bf1418fd9fd41bf2a18a0fd01c765a9e */

/**
 * An institution that provides financial services to individuals and businesses for profit.
 */
using {sap.c4c} from './sap.c4c.cds';
using {sap.s4} from './sap.s4.cds';
@cds.persistence.skip : true
entity sap.graph.Bank {

  /**
   * Qualified identifier
   */
  key id : LargeString;

  /**
   * Human-readable identifier of the bank.
   */
  displayId : LargeString;

  /**
   * Name of the bank.
   */
  name : LargeString;

  /**
   * A code that represents the SWIFT number, a standard format for business identifier codes (BIC), that identifies the bank for international transactions.
   */
  businessIdentifierCode : LargeString;

  /**
   * The bank branch.
   */
  branch : LargeString;

  /**
   * The country where the bank is located.
   */
  country : String(3);

  /**
   * The association to the Country entity.
   */
  @cds.ambiguous : 'missing on condition?'
  _country : Association to one sap.graph.Country {  };

  /**
   * The city where the bank is located.
   */
  city : LargeString;

  /**
   * The street where the bank is located.
   */
  street : LargeString;

  /**
   * Indicates that the bank is active.
   */
  isActive : Boolean;
};


/**
 * Entity Country.
 */
@cds.persistence.skip : true
entity sap.graph.Country {

  /**
   * Qualified identifier
   */
  key id : LargeString;

  /**
   * A unique identifier that represents the country.
   */
  displayId : String(3);

  /**
   * Name of the Country.
   */
  name : LargeString;

  /**
   * Currency of the Country.
   */
  currency : String(5);

  /**
   * Currency of the Country.
   */
  @cds.ambiguous : 'missing on condition?'
  _currency : Association to one sap.graph.Currency {  };
  @cds.ambiguous : 'missing on condition?'
  _c4c : Association to one sap.c4c.CorporateAccountCountryCodeCollection {  };
};


/**
 * Entity Currency.
 */
@cds.persistence.skip : true
entity sap.graph.Currency {

  /**
   * Qualified identifier
   */
  key id : LargeString;

  /**
   * A unique identifier that represents the currency.
   */
  displayId : String(5);

  /**
   * Indicates the name of the currency is language dependent.
   */
  name : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _c4c : Association to one sap.c4c.CustomerOrderCurrencyCodeCollection {  };
};


/**
 * Entity Company
 */
@cds.persistence.skip : true
entity sap.graph.Company {

  /**
   * Qualified identifier
   */
  key id : LargeString;

  /**
   * A unique identifier that represents the company.
   */
  displayId : LargeString;

  /**
   * The name of the company.
   */
  name : LargeString;

  /**
   * The currency that applies to the company.
   */
  currency : String(5);

  /**
   * The currency that applies to the company.
   */
  @cds.ambiguous : 'missing on condition?'
  _currency : Association to one sap.graph.Currency {  };
};


/**
 * An organizational unit that represents a defined location of cost incurrence.
 */
@cds.persistence.skip : true
entity sap.graph.CostCenter {

  /**
   * Qualified identifier
   */
  key id : LargeString;

  /**
   * A unique identifier that represents the cost center.
   */
  displayId : LargeString;

  /**
   * The name of the cost center.
   */
  name : LargeString;

  /**
   * A description that provides information about the cost center.
   */
  description : LargeString;

  /**
   * The date from which the cost center is valid.
   */
  validFrom : Date;

  /**
   * The date until the cost center is valid.
   */
  validTo : Date;

  /**
   * The person who is responsible for the cost center.
   */
  responsible : LargeString;
};

@cds.persistence.skip : true
entity sap.graph.SalesPricingConditionType {

  /**
   * Qualified identifier
   */
  key id : LargeString;

  /**
   * A unique identifier that represents the Sales Pricing Condition Type.
   */
  displayId : LargeString;

  /**
   * Name of the Sales Pricing Condition Type.
   */
  name : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _c4c : Association to one sap.c4c.CustomerOrderPriceComponentTypeCodeCollection {  };
};

@cds.persistence.skip : true
entity sap.graph.SalesOpportunity {

  /**
   * Qualified identifier
   */
  key id : LargeString;
  displayId : LargeString;
  opportunityType : LargeString;
  opportunityText : LargeString;
  opportunityGroup : LargeString;
  prospect : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _prospect : Association to one sap.graph.BusinessPartner {  };
  contactPerson : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _contactPerson : Association to one sap.graph.ContactPerson {  };
  payer : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _payer : Association to one sap.graph.BusinessPartner {  };
  origin : LargeString;
  priority : LargeString;
  startDate : Date;
  closingDate : Date;
  probabilityPercent : Decimal(5, 2);
  salesPhase : LargeString;
  processingStatus : LargeString;
  salesOrganization : LargeString;
  distributionChannel : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _distributionChannel : Association to one sap.graph.DistributionChannel {  };
  division : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _division : Association to one sap.graph.Division {  };
  salesOffice : LargeString;
  salesGroup : LargeString;
  @cds.ambiguous : 'missing on condition?'
  items : Association to many sap.graph.SalesOpportunity_items {  };
  @cds.ambiguous : 'missing on condition?'
  salesTeam : Association to many sap.graph.SalesOpportunity_salesTeam {  };
  @cds.ambiguous : 'missing on condition?'
  competingParties : Association to many sap.graph.SalesOpportunity_competingParties {  };
  @cds.ambiguous : 'missing on condition?'
  referenceDocuments : Association to many sap.graph.SalesOpportunity_referenceDocuments {  };
  @cds.ambiguous : 'missing on condition?'
  texts : Association to many sap.graph.SalesOpportunity_texts {  };
  @cds.ambiguous : 'missing on condition?'
  _c4c : Association to one sap.c4c.OpportunityCollection {  };
};


/**
 * Business Partner
 */
@cds.persistence.skip : true
entity sap.graph.BusinessPartner {

  /**
   * Qualified identifier
   */
  key id : LargeString;

  /**
   * Date and time the entity was created.
   */
  @odata.precision : 0
  @odata.type : 'Edm.DateTimeOffset'
  createdAt : DateTime;

  /**
   * Date and time the entity was changed last.
   */
  @odata.precision : 0
  @odata.type : 'Edm.DateTimeOffset'
  changedAt : DateTime;

  /**
   * A unique identifier that represents the business partner.
   */
  displayId : LargeString;

  /**
   * The formatted textual representation of the business partner.
   */
  name : LargeString;

  /**
   * The language used to communicate with the business partner.
   */
  language : LargeString;

  /**
   * The language used to communicate with the business partner.
   */
  @cds.ambiguous : 'missing on condition?'
  _language : Association to one sap.graph.Language {  };

  /**
   * The addresses for the business partner.
   */
  @cds.ambiguous : 'missing on condition?'
  addresses : Association to many sap.graph.BusinessPartner_addresses {  };

  /**
   * The roles for the business partner.
   */
  @cds.ambiguous : 'missing on condition?'
  roles : Association to many sap.graph.BusinessPartner_roles {  };

  /**
   * The identifications of the business partner. An identification number can be used as an alternative identifier for the business partner.
   */
  @cds.ambiguous : 'missing on condition?'
  identifications : Association to many sap.graph.BusinessPartner_identifications {  };

  /**
   * The tax numbers of the business partner.
   */
  @cds.ambiguous : 'missing on condition?'
  taxNumbers : Association to many sap.graph.BusinessPartner_taxNumbers {  };

  /**
   * Corporate account this business partner represents.
   */
  @cds.ambiguous : 'missing on condition?'
  _corporateAccount : Association to one sap.graph.CorporateAccount {  };

  /**
   * Individual customer this business partner represents.
   */
  @cds.ambiguous : 'missing on condition?'
  _individualCustomer : Association to one sap.graph.IndividualCustomer {  };

  /**
   * Contact person this business partner represents.
   */
  @cds.ambiguous : 'missing on condition?'
  _contactPerson : Association to one sap.graph.ContactPerson {  };

  /**
   * Workforce person this business partner represents.
   */
  @cds.ambiguous : 'missing on condition?'
  _workforcePerson : Association to one sap.graph.WorkforcePerson {  };
  @cds.ambiguous : 'missing on condition?'
  _s4 : Association to one sap.s4.A_BusinessPartner {  };
  @cds.ambiguous : 'missing on condition?'
  _c4c : Association to one sap.c4c.BusinessPartnerCollection {  };
};

@cds.persistence.skip : true
entity sap.graph.Language {

  /**
   * Qualified identifier
   */
  key id : LargeString;

  /**
   * A unique identifier that represents the Language.
   */
  displayId : LargeString;

  /**
   * Name of the Language.
   */
  name : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _c4c : Association to one sap.c4c.EmployeeLanguageCodeCollection {  };
};


/**
 * A company or organization that interacts with another company.
 */
@cds.persistence.skip : true
entity sap.graph.CorporateAccount {

  /**
   * Qualified identifier
   */
  key id : LargeString;

  /**
   * Date and time the entity was created.
   */
  @odata.precision : 0
  @odata.type : 'Edm.DateTimeOffset'
  createdAt : DateTime;

  /**
   * Date and time the entity was changed last.
   */
  @odata.precision : 0
  @odata.type : 'Edm.DateTimeOffset'
  changedAt : DateTime;

  /**
   * Human-readable identifier for the corporate account.
   */
  displayId : LargeString;

  /**
   * The name of the corporate account.
   */
  name : LargeString;

  /**
   * An additional name for the corporate account.
   */
  additionalName : LargeString;

  /**
   * An additional name for the corporate account.
   */
  additionalName2 : LargeString;

  /**
   * An additional name for the corporate account.
   */
  additionalName3 : LargeString;

  /**
   * The formatted textual representation of the corporate account.
   */
  formattedName : LargeString;

  /**
   * A legal entity that identifies the type corporate account.
   */
  legalForm : LargeString;

  /**
   * The language used to communicate with the corporate account.
   */
  language : LargeString;

  /**
   * The language used to communicate with the corporate account.
   */
  @cds.ambiguous : 'missing on condition?'
  _language : Association to one sap.graph.Language {  };

  /**
   * Specifies a regional division according to the market categories created by the A. C. Nielsen company.
   */
  nielsenRegion : String(2);

  /**
   * Defines the branch of industry to which a corporate account is assigned.
   */
  industrySector : LargeString;

  /**
   * Defines the branch of industry to which a corporate account is assigned.
   */
  @cds.ambiguous : 'missing on condition?'
  _industrySector : Association to one sap.graph.IndustrySector {  };

  /**
   * The reason for blocking the corporate account.
   */
  orderBlockingReason : LargeString;

  /**
   * The reason for blocking deliveries to the corporate account.
   */
  deliveryBlockingReason : LargeString;

  /**
   * The reason for blocking billing to the corporate account.
   */
  billingBlockingReason : LargeString;

  /**
   * The contacts for the corporate account.
   */
  @cds.ambiguous : 'missing on condition?'
  contacts : Association to many sap.graph.CorporateAccount_contacts {  };

  /**
   * The addresses for the corporate account.
   */
  @cds.ambiguous : 'missing on condition?'
  addresses : Association to many sap.graph.CorporateAccount_addresses {  };

  /**
   * The roles for the corporate account.
   */
  @cds.ambiguous : 'missing on condition?'
  roles : Association to many sap.graph.CorporateAccount_roles {  };

  /**
   * The identifications of the corporate account. An identification number can be used as an alternative identifier for the corporate account.
   */
  @cds.ambiguous : 'missing on condition?'
  identifications : Association to many sap.graph.CorporateAccount_identifications {  };

  /**
   * The sales data related to the corporate account.
   */
  @cds.ambiguous : 'missing on condition?'
  salesData : Association to many sap.graph.CorporateAccount_salesData {  };

  /**
   * Long texts that refer to the corporate account.
   */
  @cds.ambiguous : 'missing on condition?'
  texts : Association to many sap.graph.CorporateAccount_texts {  };

  /**
   * The tax numbers of the corporate account.
   */
  @cds.ambiguous : 'missing on condition?'
  taxNumbers : Association to many sap.graph.CorporateAccount_taxNumbers {  };

  /**
   * Sales quotes associated to the corporate account.
   */
  @cds.ambiguous : 'missing on condition?'
  _salesQuotes : Association to many sap.graph.SalesQuote {  };

  /**
   * Sales orders associated to the corporate account.
   */
  @cds.ambiguous : 'missing on condition?'
  _salesOrders : Association to many sap.graph.SalesOrder {  };

  /**
   * Sales contracts associated to the corporate account.
   */
  @cds.ambiguous : 'missing on condition?'
  _salesContracts : Association to many sap.graph.SalesContract {  };
  @cds.ambiguous : 'missing on condition?'
  // _c4c : Association to one sap.c4c.CorporateAccountCollection {  };
  _c4c : Association to one sap.c4c.CorporateAccountCollection on _c4c.AccountID = id;
  @cds.ambiguous : 'missing on condition?'
  // _s4 : Association to one sap.s4.A_BusinessPartner {  };
  _s4 : Association to one sap.s4.A_BusinessPartner on _s4.BusinessPartner = id;
};

@cds.persistence.skip : true
entity sap.graph.IndustrySector {

  /**
   * Qualified identifier
   */
  key id : LargeString;
  displayId : LargeString;
  name : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _c4c : Association to one sap.c4c.CorporateAccountIndustrialSectorCodeCollection {  };
};

@cds.persistence.skip : true
entity sap.graph.ContactPerson {

  /**
   * Qualified identifier
   */
  key id : LargeString;

  /**
   * Date and time the entity was created.
   */
  @odata.precision : 0
  @odata.type : 'Edm.DateTimeOffset'
  createdAt : DateTime;

  /**
   * Date and time the entity was changed last.
   */
  @odata.precision : 0
  @odata.type : 'Edm.DateTimeOffset'
  changedAt : DateTime;
  displayId : LargeString;
  firstName : LargeString;
  middleName : LargeString;
  lastName : LargeString;
  additionalLastName : LargeString;
  lastNamePrefix : LargeString;
  initials : LargeString;
  title : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _title : Association to one sap.graph.PersonTitle {  };
  academicTitle : LargeString;
  formattedName : LargeString;
  gender : LargeString;
  language : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _language : Association to one sap.graph.Language {  };
  birthDate : Date;
  birthName : LargeString;
  maritalStatus : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _maritalStatus : Association to one sap.graph.PersonMaritalStatus {  };
  @cds.ambiguous : 'missing on condition?'
  companies : Association to many sap.graph.ContactPerson_companies {  };
  @cds.ambiguous : 'missing on condition?'
  personalAddresses : Association to many sap.graph.ContactPerson_personalAddresses {  };
  @cds.ambiguous : 'missing on condition?'
  _c4c : Association to one sap.c4c.ContactCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _s4 : Association to one sap.s4.A_BusinessPartner {  };
};

@cds.persistence.skip : true
entity sap.graph.PersonTitle {

  /**
   * Qualified identifier
   */
  key id : LargeString;

  /**
   * A unique identifier that represents the Title of a Person.
   */
  displayId : LargeString;

  /**
   * Name of the Title of a Person.
   */
  name : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _c4c : Association to one sap.c4c.EmployeeTitleCodeCollection {  };
};

@cds.persistence.skip : true
entity sap.graph.PersonMaritalStatus {

  /**
   * Qualified identifier
   */
  key id : LargeString;

  /**
   * A unique identifier that represents the Marital Status of a Person.
   */
  displayId : LargeString;

  /**
   * Name of the Marital Status of a Person.
   */
  name : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _c4c : Association to one sap.c4c.EmployeeMaritalStatusCodeCollection {  };
};

@cds.persistence.skip : true
entity sap.graph.DistributionChannel {

  /**
   * Qualified identifier
   */
  key id : LargeString;

  /**
   * A unique identifier that represents a Distribution Channel.
   */
  displayId : LargeString;

  /**
   * Name of the Distribution Channel.
   */
  name : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _c4c : Association to one sap.c4c.CustomerOrderDistributionChannelCodeCollection {  };
};

@cds.persistence.skip : true
entity sap.graph.Division {

  /**
   * Qualified identifier
   */
  key id : LargeString;

  /**
   * A unique identifier that represents a Division.
   */
  displayId : LargeString;

  /**
   * Name of the Division.
   */
  name : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _c4c : Association to one sap.c4c.CustomerOrderDivisionCodeCollection {  };
};

@cds.persistence.skip : true
entity sap.graph.CustomerGroup {

  /**
   * Qualified identifier
   */
  key id : LargeString;

  /**
   * A unique identifier that represents a Customer Group.
   */
  displayId : LargeString;

  /**
   * Name of the Customer Group.
   */
  name : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _c4c : Association to one sap.c4c.CorporateAccountSalesDataCustomerGroupCodeCollection {  };
};

@cds.persistence.skip : true
entity sap.graph.IncotermsClassification {

  /**
   * Qualified identifier
   */
  key id : LargeString;

  /**
   * A unique identifier that represents the Incoterms Classification.
   */
  displayId : String(3);

  /**
   * Name of the Incoterms Classification.
   */
  name : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _c4c : Association to one sap.c4c.CorporateAccountSalesDataIncotermsClassificationCodeCollection {  };
};


/**
 * Legally-binding offer for the delivery of goods or services, valid for a specific period of time, and according to fixed terms. The sales quote contains conditions leading to the customer order.
 */
@cds.persistence.skip : true
entity sap.graph.SalesQuote {

  /**
   * Qualified identifier
   */
  key id : LargeString;

  /**
   * Date and time the entity was created.
   */
  @odata.precision : 0
  @odata.type : 'Edm.DateTimeOffset'
  createdAt : DateTime;

  /**
   * Date and time the entity was changed last.
   */
  @odata.precision : 0
  @odata.type : 'Edm.DateTimeOffset'
  changedAt : DateTime;

  /**
   * Number of the sales document.
   */
  displayId : LargeString;

  /**
   * A code that represents the type of sales quote.
   */
  quoteType : LargeString;

  /**
   * Order Reason (Reason for the Business Transaction) Indicates the reason for creating the sales document.
   */
  orderReason : LargeString;

  /**
   * Order Reason (Reason for the Business Transaction) Indicates the reason for creating the sales document.
   */
  @cds.ambiguous : 'missing on condition?'
  _orderReason : Association to one sap.graph.SalesDocumentReason {  };

  /**
   * The customer who orders the goods or services. The sold-to party is contractually responsible for sales orders.
   */
  soldToParty : LargeString;

  /**
   * The customer who orders the goods or services. The sold-to party is contractually responsible for sales orders.
   */
  @cds.ambiguous : 'missing on condition?'
  _soldToParty : Association to one sap.graph.Customer {  };

  /**
   * Number that the customer uses to uniquely identify a purchasing document.
   */
  soldToPartyPurchaseOrderId : LargeString;

  /**
   * The date on which you want the sales document to become effective for sales management purposes.
   */
  orderDate : Date;

  /**
   * The date and time the delivery of goods or the services are requested by the customer.
   */
  requestedDeliveryDate : Date;

  /**
   * The date from which the inquiry or quotation is valid.
   */
  validFrom : Date;

  /**
   * Date Until Which Bid/Quotation is Binding (Valid-To Date).
   */
  validTo : Date;

  /**
   * The probability (expressed as a percentage) of the customer confirming the inquiry or quotation as part of a sales order.
   */
  probabilityPercent : Decimal(5, 2);

  /**
   * An organizational unit responsible for the sale of certain products or services.
   */
  salesOrganization : LargeString;

  /**
   * A channel through which products or services reach customers.
   */
  distributionChannel : LargeString;

  /**
   * A channel through which products or services reach customers.
   */
  @cds.ambiguous : 'missing on condition?'
  _distributionChannel : Association to one sap.graph.DistributionChannel {  };

  /**
   * A way of grouping materials, products, or services.
   */
  division : LargeString;

  /**
   * A way of grouping materials, products, or services.
   */
  @cds.ambiguous : 'missing on condition?'
  _division : Association to one sap.graph.Division {  };

  /**
   * A physical location (for example, a branch office) that has responsibility for the sale of certain products or services within a given geographical area.
   */
  salesOffice : LargeString;

  /**
   * A group of sales people who are responsible for processing sales of certain products or services.
   */
  salesGroup : LargeString;

  /**
   * Currency that applies to the sales order.
   */
  documentCurrency : String(5);

  /**
   * Currency that applies to the sales order.
   */
  @cds.ambiguous : 'missing on condition?'
  _documentCurrency : Association to one sap.graph.Currency {  };

  /**
   * Net Value of the Sales Order in Net Amount Currency.
   */
  netAmount : Decimal(22, 6);

  /**
   * Net Amount Currency.
   */
  netAmountCurrency : String(5);

  /**
   * Net Amount Currency.
   */
  @cds.ambiguous : 'missing on condition?'
  _netAmountCurrency : Association to one sap.graph.Currency {  };

  /**
   * Terms of Payment Key.
   */
  paymentTerms : LargeString;

  /**
   * Date for Pricing and Exchange Rate
   */
  @odata.precision : 0
  @odata.type : 'Edm.DateTimeOffset'
  pricingDate : DateTime;

  /**
   * Commonly used trading terms that comply with the standards established by the International Chamber of Commerce (ICC).
   */
  incotermsClassification : String(3);

  /**
   * Commonly used trading terms that comply with the standards established by the International Chamber of Commerce (ICC).
   */
  @cds.ambiguous : 'missing on condition?'
  _incotermsClassification : Association to one sap.graph.IncotermsClassification {  };

  /**
   * Additional information for the primary Incoterm.
   */
  incotermsLocation : LargeString;

  /**
   * States whether a sales document is relevant for approvals and, if so, which approval stage it is in.
   */
  approvalStatus : LargeString;

  /**
   * The processing status of the entire sales document.
   */
  processingStatus : LargeString;

  /**
   * Displays the rejection status of the entire sales document.
   */
  cancellationStatus : LargeString;

  /**
   * Items in a sales quote.
   */
  @cds.ambiguous : 'missing on condition?'
  items : Association to many sap.graph.SalesQuote_items {  };

  /**
   * Partners related to the sales quote.
   */
  @cds.ambiguous : 'missing on condition?'
  parties : Association to many sap.graph.SalesQuote_parties {  };

  /**
   * Composition of pricing elements.
   */
  @cds.ambiguous : 'missing on condition?'
  pricingElements : Association to many sap.graph.SalesQuote_pricingElements {  };

  /**
   * Composition of texts.
   */
  @cds.ambiguous : 'missing on condition?'
  texts : Association to many sap.graph.SalesQuote_texts {  };
  @cds.ambiguous : 'missing on condition?'
  _c4c : Association to one sap.c4c.SalesQuoteCollection {  };
};

@cds.persistence.skip : true
entity sap.graph.SalesDocumentReason {

  /**
   * Qualified identifier
   */
  key id : LargeString;

  /**
   * A unique identifier that represents the Sales Document Reason.
   */
  displayId : LargeString;

  /**
   * Name of the Sales Document Reason.
   */
  name : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _c4c : Association to one sap.c4c.CustomerOrderOrderReasonCodeCollection {  };
};

@cds.persistence.skip : true
entity sap.graph.Customer {

  /**
   * Qualified identifier
   */
  key id : LargeString;

  /**
   * Date and time the entity was created.
   */
  @odata.precision : 0
  @odata.type : 'Edm.DateTimeOffset'
  createdAt : DateTime;

  /**
   * Date and time the entity was changed last.
   */
  @odata.precision : 0
  @odata.type : 'Edm.DateTimeOffset'
  changedAt : DateTime;

  /**
   * A unique identifier that represents a Customer.
   */
  displayId : LargeString;

  /**
   * Name of the Customer.
   */
  name : LargeString;

  /**
   * The language used to communicate with the Customer.
   */
  language : LargeString;

  /**
   * The language used to communicate with the Customer.
   */
  @cds.ambiguous : 'missing on condition?'
  _language : Association to one sap.graph.Language {  };

  /**
   * The addresses for the Customer.
   */
  @cds.ambiguous : 'missing on condition?'
  addresses : Association to many sap.graph.Customer_addresses {  };

  /**
   * The roles for the Customer.
   */
  @cds.ambiguous : 'missing on condition?'
  roles : Association to many sap.graph.Customer_roles {  };

  /**
   * The identifications of the Customer. An identification number can be used as an alternative identifier for the Customer.
   */
  @cds.ambiguous : 'missing on condition?'
  identifications : Association to many sap.graph.Customer_identifications {  };

  /**
   * The sales data related to the corporate account.
   */
  @cds.ambiguous : 'missing on condition?'
  salesData : Association to many sap.graph.Customer_salesData {  };

  /**
   * Long texts that refer to the corporate account.
   */
  @cds.ambiguous : 'missing on condition?'
  texts : Association to many sap.graph.Customer_texts {  };

  /**
   * The tax numbers of the Customer.
   */
  @cds.ambiguous : 'missing on condition?'
  taxNumbers : Association to many sap.graph.Customer_taxNumbers {  };

  /**
   * Type of Customer. Corporate Account / Individual Customer.
   */
  type : LargeString;

  /**
   * Associated Corporate Account.
   */
  @cds.ambiguous : 'missing on condition?'
  _corporateAccount : Association to one sap.graph.CorporateAccount on _corporateAccount.id = id;

  /**
   * Associated Individual Customer.
   */
  @cds.ambiguous : 'missing on condition?'
  _individualCustomer : Association to one sap.graph.IndividualCustomer on _individualCustomer.id = id;
  @cds.ambiguous : 'missing on condition?'
  _c4c : Association to one sap.c4c.BusinessPartnerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _s4 : Association to one sap.s4.A_BusinessPartner {  };
};


/**
 * An individual person in which your company has a business interest.
 */
@cds.persistence.skip : true
entity sap.graph.IndividualCustomer {

  /**
   * Qualified identifier
   */
  key id : LargeString;

  /**
   * Date and time the entity was created.
   */
  @odata.precision : 0
  @odata.type : 'Edm.DateTimeOffset'
  createdAt : DateTime;

  /**
   * Date and time the entity was changed last.
   */
  @odata.precision : 0
  @odata.type : 'Edm.DateTimeOffset'
  changedAt : DateTime;

  /**
   * A unique identifier that represents the Individual Customer.
   */
  displayId : LargeString;

  /**
   * Firstname.
   */
  firstName : LargeString;

  /**
   * Middlename.
   */
  middleName : LargeString;

  /**
   * Lastname.
   */
  lastName : LargeString;

  /**
   * Additional Lastname.
   */
  additionalLastName : LargeString;

  /**
   * Lastname Prefix.
   */
  lastNamePrefix : LargeString;

  /**
   * Initials.
   */
  initials : LargeString;

  /**
   * Title.
   */
  title : LargeString;

  /**
   * Title.
   */
  @cds.ambiguous : 'missing on condition?'
  _title : Association to one sap.graph.PersonTitle {  };

  /**
   * Academic Title.
   */
  academicTitle : LargeString;

  /**
   * Formatted Name.
   */
  formattedName : LargeString;

  /**
   * Gender.
   */
  gender : LargeString;

  /**
   * Language.
   */
  language : LargeString;

  /**
   * Language.
   */
  @cds.ambiguous : 'missing on condition?'
  _language : Association to one sap.graph.Language {  };

  /**
   * Date of Birth.
   */
  birthDate : Date;

  /**
   * Birth Name.
   */
  birthName : LargeString;

  /**
   * Marital Status.
   */
  maritalStatus : LargeString;

  /**
   * Marital Status.
   */
  @cds.ambiguous : 'missing on condition?'
  _maritalStatus : Association to one sap.graph.PersonMaritalStatus {  };

  /**
   * Nationality.
   */
  nationality : String(3);

  /**
   * Nationality.
   */
  @cds.ambiguous : 'missing on condition?'
  _nationality : Association to one sap.graph.Country {  };

  /**
   * Central Order Block for Individual Customer.
   */
  orderBlockingReason : LargeString;

  /**
   * Central delivery block for Individual Customer.
   */
  deliveryBlockingReason : LargeString;

  /**
   * Central Billing Block for Individual Customer.
   */
  billingBlockingReason : LargeString;

  /**
   * Addresses of the Individual Customer.
   */
  @cds.ambiguous : 'missing on condition?'
  addresses : Association to many sap.graph.IndividualCustomer_addresses {  };

  /**
   * Roles of the Individual Customer.
   */
  @cds.ambiguous : 'missing on condition?'
  roles : Association to many sap.graph.IndividualCustomer_roles {  };

  /**
   * Identifications of the Individual Customer. The identification number can be used as an alternative identifier for an individual customer.
   */
  @cds.ambiguous : 'missing on condition?'
  identifications : Association to many sap.graph.IndividualCustomer_identifications {  };

  /**
   * Sales data related to an Individual Customer.
   */
  @cds.ambiguous : 'missing on condition?'
  salesData : Association to many sap.graph.IndividualCustomer_salesData {  };

  /**
   * Composition of texts.
   */
  @cds.ambiguous : 'missing on condition?'
  texts : Association to many sap.graph.IndividualCustomer_texts {  };

  /**
   * Tax Numbers.
   */
  @cds.ambiguous : 'missing on condition?'
  taxNumbers : Association to many sap.graph.IndividualCustomer_taxNumbers {  };

  /**
   * Associated Sales Quotes.
   */
  @cds.ambiguous : 'missing on condition?'
  _salesQuotes : Association to many sap.graph.SalesQuote {  };

  /**
   * Associated Sales Orders.
   */
  @cds.ambiguous : 'missing on condition?'
  _salesOrders : Association to many sap.graph.SalesOrder {  };

  /**
   * Associated Sales Contracts.
   */
  @cds.ambiguous : 'missing on condition?'
  _salesContracts : Association to many sap.graph.SalesContract {  };
  @cds.ambiguous : 'missing on condition?'
  _c4c : Association to one sap.c4c.IndividualCustomerCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _s4 : Association to one sap.s4.A_BusinessPartner {  };
};


/**
 * An agreement between a vendor and a customer concerning the sale and delivery of goods and services, as well as any services that are associated with these processes, on a specific date, for a specific quantity, and for a specific price.
 */
@cds.persistence.skip : true
entity sap.graph.SalesOrder {

  /**
   * Qualified identifier
   */
  key id : LargeString;

  /**
   * Date and time the entity was created.
   */
  @odata.precision : 0
  @odata.type : 'Edm.DateTimeOffset'
  createdAt : DateTime;

  /**
   * Date and time the entity was changed last.
   */
  @odata.precision : 0
  @odata.type : 'Edm.DateTimeOffset'
  changedAt : DateTime;

  /**
   * A unique identifier that represents a product.
   */
  displayId : LargeString;

  /**
   * A code that represents the type of sales order.
   */
  orderType : LargeString;

  /**
   * Indicates the reason for creating the sales order.
   */
  orderReason : LargeString;

  /**
   * Indicates the reason for creating the sales order.
   */
  @cds.ambiguous : 'missing on condition?'
  _orderReason : Association to one sap.graph.SalesDocumentReason {  };

  /**
   * The customer who orders the goods or services. The sold-to party is contractually responsible for sales orders.
   */
  soldToParty : LargeString;

  /**
   * The customer who orders the goods or services. The sold-to party is contractually responsible for sales orders.
   */
  @cds.ambiguous : 'missing on condition?'
  _soldToParty : Association to one sap.graph.Customer {  };

  /**
   * Number that the customer uses to uniquely identify a purchasing document.
   */
  soldToPartyPurchaseOrderId : LargeString;

  /**
   * The date and time the delivery of goods or the services are requested by the customer.
   */
  requestedDeliveryDate : Date;

  /**
   * Sales Organization.
   */
  salesOrganization : LargeString;

  /**
   * Distribution Channel.
   */
  distributionChannel : LargeString;

  /**
   * Distribution Channel.
   */
  @cds.ambiguous : 'missing on condition?'
  _distributionChannel : Association to one sap.graph.DistributionChannel {  };

  /**
   * Division.
   */
  division : LargeString;

  /**
   * Division.
   */
  @cds.ambiguous : 'missing on condition?'
  _division : Association to one sap.graph.Division {  };

  /**
   * A physical location that has responsibility for the sale of certain products or services within a given geographical area.
   */
  salesOffice : LargeString;

  /**
   * A group of sales people who are responsible for processing sales of certain products or services.
   */
  salesGroup : LargeString;

  /**
   * Currency that applies to the sales order.
   */
  documentCurrency : String(5);

  /**
   * Currency that applies to the sales order.
   */
  @cds.ambiguous : 'missing on condition?'
  _documentCurrency : Association to one sap.graph.Currency {  };

  /**
   * Net Value of the Sales Order in Net Amount Currency.
   */
  netAmount : Decimal(22, 6);

  /**
   * Net Amount Currency.
   */
  netAmountCurrency : String(5);

  /**
   * Net Amount Currency.
   */
  @cds.ambiguous : 'missing on condition?'
  _netAmountCurrency : Association to one sap.graph.Currency {  };

  /**
   * Terms of Payment Key.
   */
  paymentTerms : LargeString;

  /**
   * Date for Pricing and Exchange Rate.
   */
  @odata.precision : 0
  @odata.type : 'Edm.DateTimeOffset'
  pricingDate : DateTime;

  /**
   * Commonly used trading terms that comply with the standards established by the International Chamber of Commerce (ICC).
   */
  incotermsClassification : String(3);

  /**
   * Commonly used trading terms that comply with the standards established by the International Chamber of Commerce (ICC).
   */
  @cds.ambiguous : 'missing on condition?'
  _incotermsClassification : Association to one sap.graph.IncotermsClassification {  };

  /**
   * Additional information for the primary Incoterm.
   */
  incotermsLocation : LargeString;

  /**
   * States whether a sales document is relevant for approvals and, if so, which approval stage it is in.
   */
  approvalStatus : LargeString;

  /**
   * The processing status of the entire sales document.
   */
  processingStatus : LargeString;

  /**
   * Displays the rejection status of the entire sales document.
   */
  cancellationStatus : LargeString;

  /**
   * Overall Delivery Status (All Items).
   */
  deliveryStatus : LargeString;

  /**
   * Overall Block Status.
   */
  blockingStatus : LargeString;

  /**
   * Indicates if the entire sales order is blocked for delivery.
   */
  deliveryBlockingReason : LargeString;

  /**
   * Indicates if the entire sales order is blocked for billing.
   */
  billingBlockingReason : LargeString;

  /**
   * Composition of items.
   */
  @cds.ambiguous : 'missing on condition?'
  items : Association to many sap.graph.SalesOrder_items {  };

  /**
   * Composition of parties.
   */
  @cds.ambiguous : 'missing on condition?'
  parties : Association to many sap.graph.SalesOrder_parties {  };

  /**
   * Composition of pricing elements.
   */
  @cds.ambiguous : 'missing on condition?'
  pricingElements : Association to many sap.graph.SalesOrder_pricingElements {  };

  /**
   * Composition of texts.
   */
  @cds.ambiguous : 'missing on condition?'
  texts : Association to many sap.graph.SalesOrder_texts {  };
  @cds.ambiguous : 'missing on condition?'
  _c4c : Association to one sap.c4c.CustomerOrderCollection {  };
};


/**
 * Can be either tangible, such as physical goods such as materials or articles, or intangible, such as services and digital goods that are part of the business activity of a company. It can be traded and it contributes directly or indirectly to the value chain. It does not extend to instance level, such as individual materials stocked as physical inventory, meaning that individual objects and serialized materials are not part of the product domain. It also does not extend to subsets of a material, such as batches.
 */
@cds.persistence.skip : true
entity sap.graph.Product {

  /**
   * Qualified identifier
   */
  key id : LargeString;

  /**
   * Date and time the entity was created.
   */
  @odata.precision : 0
  @odata.type : 'Edm.DateTimeOffset'
  createdAt : DateTime;

  /**
   * Date and time the entity was changed last.
   */
  @odata.precision : 0
  @odata.type : 'Edm.DateTimeOffset'
  changedAt : DateTime;

  /**
   * A unique identifier that represents a product.
   */
  displayId : LargeString;

  /**
   * The language dependent name of a product.
   */
  name : LargeString;

  /**
   * Cross-Plant Product Status The cross-plant product status restricts the usability of the product for all plants, that is, it defines whether a warning or error message is displayed if you include the product in a particular function
   */
  status : LargeString;

  /**
   * A code that represents the base unit of measure of the product.
   */
  baseUnit : String(3);

  /**
   * A way of grouping materials, products, or services. Divisions are used to determine the sales areas and the business areas for a material, product, or service. A product or service is always assigned to just one division.
   */
  division : LargeString;

  /**
   * A way of grouping materials, products, or services. Divisions are used to determine the sales areas and the business areas for a material, product, or service. A product or service is always assigned to just one division.
   */
  @cds.ambiguous : 'missing on condition?'
  _division : Association to one sap.graph.Division {  };

  /**
   * A product has conversion factors between units of measure. For example, a product is measured in gallons and liters.
   */
  @cds.ambiguous : 'missing on condition?'
  quantityConversions : Association to many sap.graph.Product_quantityConversions {  };

  /**
   * A product can have multiple characteristics.
   */
  @cds.ambiguous : 'missing on condition?'
  quantityCharacteristics : Association to many sap.graph.Product_quantityCharacteristics {  };

  /**
   * Global Trade Item numbers (GTINs).
   */
  @cds.ambiguous : 'missing on condition?'
  globalTradeItemNumbers : Association to many sap.graph.Product_globalTradeItemNumbers {  };

  /**
   * A product is planned, procured, and distributed by multiple plants.
   */
  @cds.ambiguous : 'missing on condition?'
  plants : Association to many sap.graph.Product_plants {  };

  /**
   * Sales and delivery data for the product, specific for a combination of sales organization and distribution channel.
   */
  @cds.ambiguous : 'missing on condition?'
  distributionChains : Association to many sap.graph.Product_distributionChains {  };
  @cds.ambiguous : 'missing on condition?'
  _c4c : Association to one sap.c4c.ProductCollection {  };
};

@cds.persistence.skip : true
entity sap.graph.SalesDocumentCancellationReason {

  /**
   * Qualified identifier
   */
  key id : LargeString;

  /**
   * A unique identifier that represents the Sales Document Cancellation Reason.
   */
  displayId : LargeString;

  /**
   * Name of the Sales Document Cancellation Reason.
   */
  name : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _c4c : Association to one sap.c4c.CustomerOrderItemSalesTermsCancellationReasonCodeCollection {  };
};


/**
 * There are two main types of sales contracts. A quantity contract is an agreement between company and customer for the customer to purchase a specific quantity of a material at a certain price within a specific time period. A value contract is an agreement between a company and customer that contains the materials and services the customer will receive within a specific time period, up to a specific value.
 */
@cds.persistence.skip : true
entity sap.graph.SalesContract {

  /**
   * Qualified identifier
   */
  key id : LargeString;

  /**
   * Date and time the entity was created.
   */
  @odata.precision : 0
  @odata.type : 'Edm.DateTimeOffset'
  createdAt : DateTime;

  /**
   * Date and time the entity was changed last.
   */
  @odata.precision : 0
  @odata.type : 'Edm.DateTimeOffset'
  changedAt : DateTime;

  /**
   * A unique identifier that represents a product.
   */
  displayId : LargeString;

  /**
   * A code that represents the type of the sales contract.
   */
  contractType : LargeString;

  /**
   * The customer who orders the goods or services. The sold-to party is contractually responsible for sales orders.
   */
  soldToParty : LargeString;

  /**
   * The customer who orders the goods or services. The sold-to party is contractually responsible for sales orders.
   */
  @cds.ambiguous : 'missing on condition?'
  _soldToParty : Association to one sap.graph.Customer {  };

  /**
   * Number that the customer uses to uniquely identify a purchasing document.
   */
  soldToPartyPurchaseOrderId : LargeString;

  /**
   * The date from which the sales contract is valid.
   */
  validFrom : Date;

  /**
   * Date Until which the sales contract is valid.
   */
  validTo : Date;

  /**
   * Date on which Contract Is Signed.
   */
  signedOn : Date;

  /**
   * An organizational unit responsible for the sale of certain products or services.
   */
  salesOrganization : LargeString;

  /**
   * A channel through which products or services reach customers.
   */
  distributionChannel : LargeString;

  /**
   * A channel through which products or services reach customers.
   */
  @cds.ambiguous : 'missing on condition?'
  _distributionChannel : Association to one sap.graph.DistributionChannel {  };

  /**
   * A way of grouping materials, products, or services.
   */
  division : LargeString;

  /**
   * A way of grouping materials, products, or services.
   */
  @cds.ambiguous : 'missing on condition?'
  _division : Association to one sap.graph.Division {  };

  /**
   * A physical location (for example, a branch office) that has responsibility for the sale of certain products or services within a given geographical area.
   */
  salesOffice : LargeString;

  /**
   * A group of sales people who are responsible for processing sales of certain products or services.
   */
  salesGroup : LargeString;

  /**
   * Currency that applies to the sales contract.
   */
  documentCurrency : String(5);

  /**
   * Currency that applies to the sales contract.
   */
  @cds.ambiguous : 'missing on condition?'
  _documentCurrency : Association to one sap.graph.Currency {  };

  /**
   * Net Value of the Sales Contract in Net Amount Currency.
   */
  netAmount : Decimal(22, 6);

  /**
   * Net Amount Currency.
   */
  netAmountCurrency : String(5);

  /**
   * Net Amount Currency.
   */
  @cds.ambiguous : 'missing on condition?'
  _netAmountCurrency : Association to one sap.graph.Currency {  };

  /**
   * Terms of Payment Key.
   */
  paymentTerms : LargeString;

  /**
   * Date for Pricing and Exchange Rate
   */
  @odata.precision : 0
  @odata.type : 'Edm.DateTimeOffset'
  pricingDate : DateTime;

  /**
   * Commonly used trading terms that comply with the standards established by the International Chamber of Commerce (ICC).
   */
  incotermsClassification : String(3);

  /**
   * Commonly used trading terms that comply with the standards established by the International Chamber of Commerce (ICC).
   */
  @cds.ambiguous : 'missing on condition?'
  _incotermsClassification : Association to one sap.graph.IncotermsClassification {  };

  /**
   * Additional information for the primary Incoterm.
   */
  incotermsLocation : LargeString;

  /**
   * States whether a sales document is relevant for approvals and, if so, which approval stage it is in.
   */
  approvalStatus : LargeString;

  /**
   * The processing status of the entire sales document.
   */
  processingStatus : LargeString;

  /**
   * Items in a sales contract.
   */
  @cds.ambiguous : 'missing on condition?'
  items : Association to many sap.graph.SalesContract_items {  };

  /**
   * Partners related to the sales contract.
   */
  @cds.ambiguous : 'missing on condition?'
  parties : Association to many sap.graph.SalesContract_parties {  };

  /**
   * Composition of pricing elements.
   */
  @cds.ambiguous : 'missing on condition?'
  pricingElements : Association to many sap.graph.SalesContract_pricingElements {  };
  @cds.ambiguous : 'missing on condition?'
  _c4c : Association to one sap.c4c.ContractCollection {  };
};


/**
 * A person who contributes or has contributed to the creation of goods and services within the enterprise.
 */
@cds.persistence.skip : true
entity sap.graph.WorkforcePerson {

  /**
   * Qualified identifier
   */
  key id : LargeString;

  /**
   * Date and time the entity was created.
   */
  @odata.precision : 0
  @odata.type : 'Edm.DateTimeOffset'
  createdAt : DateTime;

  /**
   * Date and time the entity was changed last.
   */
  @odata.precision : 0
  @odata.type : 'Edm.DateTimeOffset'
  changedAt : DateTime;

  /**
   * A unique identifier that represents a Workforce Person.
   */
  displayId : LargeString;

  /**
   * Firstname.
   */
  firstName : LargeString;

  /**
   * Middlename.
   */
  middleName : LargeString;

  /**
   * Lastname.
   */
  lastName : LargeString;
  additionalLastName : LargeString;

  /**
   * Title.
   */
  title : LargeString;

  /**
   * Title.
   */
  @cds.ambiguous : 'missing on condition?'
  _title : Association to one sap.graph.PersonTitle {  };

  /**
   * Gender.
   */
  gender : LargeString;

  /**
   * Language.
   */
  language : LargeString;

  /**
   * Language.
   */
  @cds.ambiguous : 'missing on condition?'
  _language : Association to one sap.graph.Language {  };

  /**
   * Date of Birth.
   */
  birthDate : Date;
  birthName : LargeString;
  birthPlace : LargeString;

  /**
   * Marital Status.
   */
  maritalStatus : LargeString;

  /**
   * Marital Status.
   */
  @cds.ambiguous : 'missing on condition?'
  _maritalStatus : Association to one sap.graph.PersonMaritalStatus {  };
  nationality : String(3);
  @cds.ambiguous : 'missing on condition?'
  _nationality : Association to one sap.graph.Country {  };

  /**
   * Addresses.
   */
  @cds.ambiguous : 'missing on condition?'
  addresses : Association to many sap.graph.WorkforcePerson_addresses {  };

  /**
   * Phone Numbers.
   */
  @cds.ambiguous : 'missing on condition?'
  phoneNumbers : Association to many sap.graph.WorkforcePerson_phoneNumbers {  };

  /**
   * Email Addresses.
   */
  @cds.ambiguous : 'missing on condition?'
  emailAddresses : Association to many sap.graph.WorkforcePerson_emailAddresses {  };

  /**
   * Work assignments.
   */
  @cds.ambiguous : 'missing on condition?'
  _workAssignments : Association to many sap.graph.WorkAssignment {  };
  @cds.ambiguous : 'missing on condition?'
  _c4c : Association to one sap.c4c.EmployeeCollection {  };
  @cds.ambiguous : 'missing on condition?'
  _s4 : Association to one sap.s4.A_BusinessPartner {  };
};


/**
 * Work assignment most generally is the state of having a paid job.
 */
@cds.persistence.skip : true
entity sap.graph.WorkAssignment {

  /**
   * Qualified identifier
   */
  key id : LargeString;

  /**
   * Date and time the entity was created.
   */
  @odata.precision : 0
  @odata.type : 'Edm.DateTimeOffset'
  createdAt : DateTime;

  /**
   * Date and time the entity was changed last.
   */
  @odata.precision : 0
  @odata.type : 'Edm.DateTimeOffset'
  changedAt : DateTime;

  /**
   * Workforce Person.
   */
  workforcePerson : LargeString;

  /**
   * Workforce Person.
   */
  @cds.ambiguous : 'missing on condition?'
  _workforcePerson : Association to one sap.graph.WorkforcePerson {  };

  /**
   * User ID.
   */
  userId : LargeString;

  /**
   * Start Date of Work Assignment.
   */
  startDate : Date;

  /**
   * Start Date of Work Assignment.
   */
  endDate : Date;

  /**
   * Information about the job.
   */
  @cds.ambiguous : 'missing on condition?'
  jobInfo : Association to many sap.graph.WorkAssignment_jobInfo {  };

  /**
   * Time sheets of Work Assignment.
   */
  @cds.ambiguous : 'missing on condition?'
  _timeSheets : Association to many sap.graph.TimeSheet {  };
  @cds.ambiguous : 'missing on condition?'
  _c4c : Association to one sap.c4c.EmployeeCollection {  };
};

@cds.persistence.skip : true
entity sap.graph.Job {

  /**
   * Qualified identifier
   */
  key id : LargeString;

  /**
   * A unique identifier that represents the Job.
   */
  displayId : LargeString;

  /**
   * Name of the Job.
   */
  name : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _c4c : Association to one sap.c4c.JobDefinitionCollection {  };
};


/**
 * Retrieves information about the time recording made by each employee or contingent worker for a particular task on a particular day. It includes information such as recorded hours on a task, timesheet status, and so on.
 */
@cds.persistence.skip : true
entity sap.graph.TimeSheet {

  /**
   * Qualified identifier
   */
  key id : LargeString;

  /**
   * Date and time the entity was created.
   */
  @odata.precision : 0
  @odata.type : 'Edm.DateTimeOffset'
  createdAt : DateTime;

  /**
   * Date and time the entity was changed last.
   */
  @odata.precision : 0
  @odata.type : 'Edm.DateTimeOffset'
  changedAt : DateTime;

  /**
   * Human-readable identifier of the timesheet.
   */
  displayId : LargeString;

  /**
   * Description of the timesheet.
   */
  description : LargeString;

  /**
   * A work assignment for an employee or contigent worker.
   */
  @cds.ambiguous : 'missing on condition?'
  _workAssignment : Association to one sap.graph.WorkAssignment {  };

  /**
   * The date the timesheet begins.
   */
  startDate : Date;

  /**
   * The date the timesheet ends.
   */
  endDate : Date;

  /**
   * The approval status of the timesheet.
   */
  approvalStatus : LargeString;

  /**
   * The entries in a timesheet.
   */
  @cds.ambiguous : 'missing on condition?'
  entries : Association to many sap.graph.TimeSheet_entries {  };
  @cds.ambiguous : 'missing on condition?'
  _c4c : Association to one sap.c4c.CodTimeReportCollection {  };
};


/**
 * Product Category.
 */
@cds.persistence.skip : true
entity sap.graph.ProductCategory {

  /**
   * Qualified identifier
   */
  key id : LargeString;

  /**
   * Display ID.
   */
  displayId : LargeString;

  /**
   * Parent category.
   */
  parent : LargeString;

  /**
   * Parent category
   */
  @cds.ambiguous : 'missing on condition?'
  _parent : Association to one sap.graph.ProductCategory {  };

  /**
   * Sub-categories.
   */
  @cds.ambiguous : 'missing on condition?'
  _children : Association to many sap.graph.ProductCategory {  };

  /**
   * Product category hierarchy.
   */
  hierarchy : LargeString;

  /**
   * Product category hierarchy.
   */
  @cds.ambiguous : 'missing on condition?'
  _hierarchy : Association to one sap.graph.ProductCategoryHierarchy {  };
  @cds.ambiguous : 'missing on condition?'
  _c4c : Association to one sap.c4c.ProductCategoryHierarchyCollection {  };
};


/**
 * Product Category Hierarchy.
 */
@cds.persistence.skip : true
entity sap.graph.ProductCategoryHierarchy {

  /**
   * Qualified identifier
   */
  key id : LargeString;

  /**
   * Display ID.
   */
  displayId : LargeString;

  /**
   * Hierarchy Name.
   */
  name : LargeString;

  /**
   * Product Categories.
   */
  @cds.ambiguous : 'missing on condition?'
  _categories : Association to many sap.graph.ProductCategory {  };
  @cds.ambiguous : 'missing on condition?'
  _c4c : Association to one sap.c4c.ProductCategoryHierarchyCollection {  };
};


/**
 * Equipment.
 */
@cds.persistence.skip : true
entity sap.graph.Equipment {

  /**
   * Qualified identifier
   */
  key id : LargeString;

  /**
   * Date and time the entity was created.
   */
  @odata.precision : 0
  @odata.type : 'Edm.DateTimeOffset'
  createdAt : DateTime;

  /**
   * Date and time the entity was changed last.
   */
  @odata.precision : 0
  @odata.type : 'Edm.DateTimeOffset'
  changedAt : DateTime;

  /**
   * Display ID.
   */
  displayId : LargeString;

  /**
   * Name.
   */
  name : LargeString;

  /**
   * Category.
   */
  category : LargeString;

  /**
   * Valid from.
   */
  validFrom : Date;

  /**
   * Valid to.
   */
  validTo : Date;

  /**
   * Product.
   */
  product : LargeString;

  /**
   * Product.
   */
  @cds.ambiguous : 'missing on condition?'
  _product : Association to one sap.graph.Product {  };

  /**
   * Serial number.
   */
  serialNumber : LargeString;

  /**
   * Country.
   */
  country : String(3);

  /**
   * Country.
   */
  @cds.ambiguous : 'missing on condition?'
  _country : Association to one sap.graph.Country {  };

  /**
   * Region.
   */
  region : LargeString;

  /**
   * City.
   */
  city : LargeString;

  /**
   * Postal Code.
   */
  postalCode : LargeString;

  /**
   * Street.
   */
  street : LargeString;

  /**
   * House Number.
   */
  houseNumber : LargeString;

  /**
   * Additional house number.
   */
  additionalHouseNumber : LargeString;

  /**
   * Building.
   */
  building : LargeString;

  /**
   * Floor.
   */
  floor : LargeString;

  /**
   * Room.
   */
  room : LargeString;

  /**
   * Sales Organization.
   */
  salesOrganization : LargeString;

  /**
   * Distribution Channel.
   */
  distributionChannel : LargeString;

  /**
   * Distribution Channel.
   */
  @cds.ambiguous : 'missing on condition?'
  _distributionChannel : Association to one sap.graph.DistributionChannel {  };

  /**
   * Division.
   */
  division : LargeString;

  /**
   * Division.
   */
  @cds.ambiguous : 'missing on condition?'
  _division : Association to one sap.graph.Division {  };

  /**
   * Sales Office.
   */
  salesOffice : LargeString;

  /**
   * Sales Group.
   */
  salesGroup : LargeString;

  /**
   * Warranties.
   */
  @cds.ambiguous : 'missing on condition?'
  warranties : Association to many sap.graph.Equipment_warranties {  };
  @cds.ambiguous : 'missing on condition?'
  _c4c : Association to one sap.c4c.RegisteredProductCollection {  };
};

@cds.persistence.skip : true
entity sap.graph.AppointmentActivity {

  /**
   * Qualified identifier
   */
  key id : LargeString;
  displayId : LargeString;
  activityType : LargeString;
  category : LargeString;
  subject : LargeString;
  account : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _account : Association to one sap.graph.BusinessPartner {  };
  contactPerson : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _contactPerson : Association to one sap.graph.ContactPerson {  };
  priority : LargeString;
  location : LargeString;
  @odata.precision : 0
  @odata.type : 'Edm.DateTimeOffset'
  startDate : DateTime;
  @odata.precision : 0
  @odata.type : 'Edm.DateTimeOffset'
  endDate : DateTime;
  salesOrganization : LargeString;
  distributionChannel : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _distributionChannel : Association to one sap.graph.DistributionChannel {  };
  division : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _division : Association to one sap.graph.Division {  };
  @cds.ambiguous : 'missing on condition?'
  parties : Association to many sap.graph.AppointmentActivity_parties {  };
  @cds.ambiguous : 'missing on condition?'
  texts : Association to many sap.graph.AppointmentActivity_texts {  };
  @cds.ambiguous : 'missing on condition?'
  _c4c : Association to one sap.c4c.AppointmentCollection {  };
};

@cds.persistence.skip : true
entity sap.graph.SalesLead {

  /**
   * Qualified identifier
   */
  key id : LargeString;
  displayId : LargeString;
  leadText : LargeString;
  leadGroup : LargeString;
  prospect : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _prospect : Association to one sap.graph.BusinessPartner {  };
  contactPerson : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _contactPerson : Association to one sap.graph.ContactPerson {  };
  owner : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _owner : Association to one sap.graph.BusinessPartner {  };
  origin : LargeString;
  priority : LargeString;
  qualificationLevel : LargeString;
  startDate : Date;
  endDate : Date;
  salesOrganization : LargeString;
  distriutionChannel : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _distriutionChannel : Association to one sap.graph.DistributionChannel {  };
  division : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _division : Association to one sap.graph.Division {  };
  salesOffice : LargeString;
  salesGroup : LargeString;
  @cds.ambiguous : 'missing on condition?'
  items : Association to many sap.graph.SalesLead_items {  };
  @cds.ambiguous : 'missing on condition?'
  salesAndMarketingTeam : Association to many sap.graph.SalesLead_salesAndMarketingTeam {  };
  @cds.ambiguous : 'missing on condition?'
  texts : Association to many sap.graph.SalesLead_texts {  };
  @cds.ambiguous : 'missing on condition?'
  _c4c : Association to one sap.c4c.LeadCollection {  };
};

@cds.persistence.skip : true
entity sap.graph.ServiceRequest {

  /**
   * Qualified identifier
   */
  key id : LargeString;
  displayId : LargeString;
  requestType : LargeString;
  category : LargeString;
  subject : LargeString;
  language : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _language : Association to one sap.graph.Language {  };
  soldToParty : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _soldToParty : Association to one sap.graph.BusinessPartner {  };
  reporter : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _reporter : Association to one sap.graph.BusinessPartner {  };
  @odata.precision : 0
  @odata.type : 'Edm.DateTimeOffset'
  requestedStart : DateTime;
  @odata.precision : 0
  @odata.type : 'Edm.DateTimeOffset'
  requestedEnd : DateTime;
  @odata.precision : 0
  @odata.type : 'Edm.DateTimeOffset'
  firstResponseAt : DateTime;
  @odata.precision : 0
  @odata.type : 'Edm.DateTimeOffset'
  dueAt : DateTime;
  priority : LargeString;
  salesOrganization : LargeString;
  distributionChannel : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _distributionChannel : Association to one sap.graph.DistributionChannel {  };
  division : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _division : Association to one sap.graph.Division {  };
  @cds.ambiguous : 'missing on condition?'
  parties : Association to many sap.graph.ServiceRequest_parties {  };
  @cds.ambiguous : 'missing on condition?'
  referenceObjects : Association to many sap.graph.ServiceRequest_referenceObjects {  };
  @cds.ambiguous : 'missing on condition?'
  referenceDocuments : Association to many sap.graph.ServiceRequest_referenceDocuments {  };
  @cds.ambiguous : 'missing on condition?'
  texts : Association to many sap.graph.ServiceRequest_texts {  };
  @cds.ambiguous : 'missing on condition?'
  _c4c : Association to one sap.c4c.ServiceRequestCollection {  };
};


/**
 * Functional Location.
 */
@cds.persistence.skip : true
entity sap.graph.FunctionalLocation {

  /**
   * Qualified identifier
   */
  key id : LargeString;

  /**
   * Date and time the entity was created.
   */
  @odata.precision : 0
  @odata.type : 'Edm.DateTimeOffset'
  createdAt : DateTime;

  /**
   * Date and time the entity was changed last.
   */
  @odata.precision : 0
  @odata.type : 'Edm.DateTimeOffset'
  changedAt : DateTime;

  /**
   * Display ID.
   */
  displayId : LargeString;

  /**
   * Name.
   */
  name : LargeString;

  /**
   * Country.
   */
  country : String(3);

  /**
   * Country.
   */
  @cds.ambiguous : 'missing on condition?'
  _country : Association to one sap.graph.Country {  };

  /**
   * Region.
   */
  region : LargeString;

  /**
   * City.
   */
  city : LargeString;

  /**
   * Postal Code.
   */
  postalCode : LargeString;

  /**
   * Street.
   */
  street : LargeString;

  /**
   * House Number.
   */
  houseNumber : LargeString;

  /**
   * Additional house number.
   */
  additionalHouseNumber : LargeString;

  /**
   * Building.
   */
  building : LargeString;

  /**
   * Floor.
   */
  floor : LargeString;

  /**
   * Room.
   */
  room : LargeString;

  /**
   * Sales Organization.
   */
  salesOrganization : LargeString;

  /**
   * Distribution Channel.
   */
  distributionChannel : LargeString;

  /**
   * Distribution Channel.
   */
  @cds.ambiguous : 'missing on condition?'
  _distributionChannel : Association to one sap.graph.DistributionChannel {  };

  /**
   * Division.
   */
  division : LargeString;

  /**
   * Division.
   */
  @cds.ambiguous : 'missing on condition?'
  _division : Association to one sap.graph.Division {  };

  /**
   * Sales Office.
   */
  salesOffice : LargeString;

  /**
   * Sales Group.
   */
  salesGroup : LargeString;

  /**
   * Is Active.
   */
  isActive : Boolean;

  /**
   * Parent Functional Location.
   */
  parent : LargeString;

  /**
   * Parent Functional Location.
   */
  @cds.ambiguous : 'missing on condition?'
  _parent : Association to one sap.graph.FunctionalLocation {  };

  /**
   * Child Functional Locations.
   */
  @cds.ambiguous : 'missing on condition?'
  _children : Association to many sap.graph.FunctionalLocation {  };
  @cds.ambiguous : 'missing on condition?'
  _c4c : Association to one sap.c4c.InstallationPointCollection {  };
};

@cds.persistence.skip : true
entity sap.graph.BusinessPartner_addresses {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.BusinessPartner {  };

  /**
   * Identifier
   */
  key id : LargeString;

  /**
   * The country where the business partner is located.
   */
  country : String(3);

  /**
   * The country where the business partner is located.
   */
  @cds.ambiguous : 'missing on condition?'
  _country : Association to one sap.graph.Country {  };

  /**
   * The region where the business partner is located.
   */
  region : LargeString;

  /**
   * The county where the business partner is located.
   */
  county : LargeString;

  /**
   * The city where the business partner is located.
   */
  city : LargeString;

  /**
   * The district where the business partner is located.
   */
  district : LargeString;

  /**
   * The city of residence of the business partner.
   */
  residentialCity : LargeString;

  /**
   * The postal code for the business partner.
   */
  postalCode : LargeString;

  /**
   * The street address for the business partner.
   */
  street : LargeString;

  /**
   * An additional address field that is printed above the street line.
   */
  streetPrefix : LargeString;

  /**
   * An additional address field that is printed above the street line.
   */
  additionalStreetPrefix : LargeString;

  /**
   * An additional address field that is printed under the street line.
   */
  streetSuffix : LargeString;

  /**
   * An additional address field that is printed under the street line.
   */
  additionalStreetSuffix : LargeString;

  /**
   * The house number.
   */
  houseNumber : LargeString;

  /**
   * An additional house number.
   */
  additionalHouseNumber : LargeString;

  /**
   * P.O. Box.
   */
  poBoxNumber : LargeString;

  /**
   * Deviating Country.
   */
  poBoxCountry : String(3);

  /**
   * Deviating Country.
   */
  @cds.ambiguous : 'missing on condition?'
  _poBoxCountry : Association to one sap.graph.Country {  };

  /**
   * Deviating Region.
   */
  poBoxRegion : LargeString;

  /**
   * Deviating City.
   */
  poBoxCity : LargeString;

  /**
   * Deviating Postal Code.
   */
  poBoxPostalCode : LargeString;

  /**
   * The in care of name (c/o) for the address.
   */
  careOfName : LargeString;

  /**
   * The method of communication (Key).
   */
  bestReachedBy : LargeString;

  /**
   * Telephone numbers.
   */
  @cds.ambiguous : 'missing on condition?'
  phoneNumbers : Association to many sap.graph.BusinessPartner_addresses_phoneNumbers {  };

  /**
   * Mobilphone numbers.
   */
  @cds.ambiguous : 'missing on condition?'
  mobilePhoneNumbers : Association to many sap.graph.BusinessPartner_addresses_mobilePhoneNumbers {  };

  /**
   * Fax numbers.
   */
  @cds.ambiguous : 'missing on condition?'
  faxNumbers : Association to many sap.graph.BusinessPartner_addresses_faxNumbers {  };

  /**
   * Email Addresses.
   */
  @cds.ambiguous : 'missing on condition?'
  emailAddresses : Association to many sap.graph.BusinessPartner_addresses_emailAddresses {  };

  /**
   * Websites.
   */
  @cds.ambiguous : 'missing on condition?'
  websites : Association to many sap.graph.BusinessPartner_addresses_websites {  };
};

@cds.persistence.skip : true
entity sap.graph.BusinessPartner_addresses_phoneNumbers {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.BusinessPartner_addresses {  };

  /**
   * Identifier
   */
  key id : LargeString;

  /**
   * Mobile Telephone number.
   */
  number : LargeString;

  /**
   * Default Mobile Telephone number.
   */
  isDefault : Boolean;
};

@cds.persistence.skip : true
entity sap.graph.BusinessPartner_addresses_mobilePhoneNumbers {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.BusinessPartner_addresses {  };

  /**
   * Identifier
   */
  key id : LargeString;

  /**
   * Telephone number.
   */
  number : LargeString;

  /**
   * Default Telephone number.
   */
  isDefault : Boolean;
};

@cds.persistence.skip : true
entity sap.graph.BusinessPartner_addresses_faxNumbers {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.BusinessPartner_addresses {  };

  /**
   * Identifier
   */
  key id : LargeString;

  /**
   * Fax number.
   */
  number : LargeString;

  /**
   * Default Fax number.
   */
  isDefault : Boolean;
};

@cds.persistence.skip : true
entity sap.graph.BusinessPartner_addresses_emailAddresses {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.BusinessPartner_addresses {  };

  /**
   * Identifier
   */
  key id : LargeString;

  /**
   * Email Address.
   */
  address : LargeString;

  /**
   * Default Email Address.
   */
  isDefault : Boolean;
};

@cds.persistence.skip : true
entity sap.graph.BusinessPartner_addresses_websites {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.BusinessPartner_addresses {  };

  /**
   * Identifier
   */
  key id : LargeString;

  /**
   * Website.
   */
  url : LargeString;

  /**
   * Default Website.
   */
  isDefault : Boolean;
};

@cds.persistence.skip : true
entity sap.graph.BusinessPartner_roles {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.BusinessPartner {  };

  /**
   * The code of a role of the business partner.
   */
  key roleCode : LargeString;
};

@cds.persistence.skip : true
entity sap.graph.BusinessPartner_identifications {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.BusinessPartner {  };

  /**
   * Identification Type.
   */
  key identificationType : LargeString;

  /**
   * Identification Number.
   */
  key identificationNumber : LargeString;

  /**
   * Responsible Institution for ID Number.
   */
  responsibleInstitution : LargeString;

  /**
   * Date of Entry for ID Number
   */
  entryDate : Date;

  /**
   * Validity Start for ID Number
   */
  validFrom : Date;

  /**
   * Validity End for ID Number
   */
  validTo : Date;

  /**
   * Country.
   */
  country : String(3);

  /**
   * Country.
   */
  @cds.ambiguous : 'missing on condition?'
  _country : Association to one sap.graph.Country {  };

  /**
   * Region.
   */
  region : LargeString;
};

@cds.persistence.skip : true
entity sap.graph.BusinessPartner_taxNumbers {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.BusinessPartner {  };

  /**
   * Tax Type.
   */
  key taxType : LargeString;

  /**
   * Terms of Payment Key.
   */
  taxNumber : LargeString;
};

@cds.persistence.skip : true
entity sap.graph.CorporateAccount_contacts {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.CorporateAccount {  };

  /**
   * Identifier
   */
  key id : LargeString;

  /**
   * A unique identifier that represents the contact for the corporate account.
   */
  contactPerson : LargeString;

  /**
   * A unique identifier that represents the contact for the corporate account.
   */
  @cds.ambiguous : 'missing on condition?'
  _contactPerson : Association to one sap.graph.ContactPerson {  };

  /**
   * Indicates if it is the main corporate account contact.
   */
  isMainContact : Boolean;

  /**
   * The name of the department of the corporate account.
   */
  department : LargeString;

  /**
   * Identifies the function of the corporate account contact.
   */
  function : LargeString;

  /**
   * The telephone number for the corporate account contact.
   */
  phoneNumber : LargeString;

  /**
   * The fax number for the corporate account contact.
   */
  faxNumber : LargeString;

  /**
   * The email address for the corporate account contact.
   */
  emailAddress : LargeString;
};

@cds.persistence.skip : true
entity sap.graph.ContactPerson_companies {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.ContactPerson {  };

  /**
   * Identifier
   */
  key id : LargeString;
  businessPartner : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _businessPartner : Association to one sap.graph.BusinessPartner {  };
  department : LargeString;
  function : LargeString;
  phoneNumber : LargeString;
  faxNumber : LargeString;
  emailAddress : LargeString;
};

@cds.persistence.skip : true
entity sap.graph.ContactPerson_personalAddresses {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.ContactPerson {  };

  /**
   * Identifier
   */
  key id : LargeString;
  country : String(3);
  @cds.ambiguous : 'missing on condition?'
  _country : Association to one sap.graph.Country {  };
  region : LargeString;
  city : LargeString;
  postalCode : LargeString;
  street : LargeString;
  streetPrefix : LargeString;
  additionalStreetPrefix : LargeString;
  streetSuffix : LargeString;
  additionalStreetSuffix : LargeString;
  houseNumber : LargeString;
  poBoxNumber : LargeString;
  poBoxPostalCode : LargeString;
  careOfName : LargeString;
  @cds.ambiguous : 'missing on condition?'
  phoneNumbers : Association to many sap.graph.ContactPerson_personalAddresses_phoneNumbers {  };
  @cds.ambiguous : 'missing on condition?'
  mobilePhoneNumbers : Association to many sap.graph.ContactPerson_personalAddresses_mobilePhoneNumbers {  };
  @cds.ambiguous : 'missing on condition?'
  faxNumbers : Association to many sap.graph.ContactPerson_personalAddresses_faxNumbers {  };
  @cds.ambiguous : 'missing on condition?'
  emailAddresses : Association to many sap.graph.ContactPerson_personalAddresses_emailAddresses {  };
  @cds.ambiguous : 'missing on condition?'
  websites : Association to many sap.graph.ContactPerson_personalAddresses_websites {  };
};

@cds.persistence.skip : true
entity sap.graph.ContactPerson_personalAddresses_phoneNumbers {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.ContactPerson_personalAddresses {  };

  /**
   * Identifier
   */
  key id : LargeString;
  number : LargeString;
  isDefault : Boolean;
};

@cds.persistence.skip : true
entity sap.graph.ContactPerson_personalAddresses_mobilePhoneNumbers {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.ContactPerson_personalAddresses {  };

  /**
   * Identifier
   */
  key id : LargeString;
  number : LargeString;
  isDefault : Boolean;
};

@cds.persistence.skip : true
entity sap.graph.ContactPerson_personalAddresses_faxNumbers {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.ContactPerson_personalAddresses {  };

  /**
   * Identifier
   */
  key id : LargeString;
  number : LargeString;
  isDefault : Boolean;
};

@cds.persistence.skip : true
entity sap.graph.ContactPerson_personalAddresses_emailAddresses {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.ContactPerson_personalAddresses {  };

  /**
   * Identifier
   */
  key id : LargeString;
  address : LargeString;
  isDefault : Boolean;
};

@cds.persistence.skip : true
entity sap.graph.ContactPerson_personalAddresses_websites {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.ContactPerson_personalAddresses {  };

  /**
   * Identifier
   */
  key id : LargeString;
  url : LargeString;
  isDefault : Boolean;
};

@cds.persistence.skip : true
entity sap.graph.CorporateAccount_addresses {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.CorporateAccount {  };

  /**
   * Identifier
   */
  key id : LargeString;

  /**
   * The country where the corporate account is located.
   */
  country : String(3);

  /**
   * The association to the Country entity.
   */
  @cds.ambiguous : 'missing on condition?'
  _country : Association to one sap.graph.Country {  };

  /**
   * The region where the corporate account is located.
   */
  region : LargeString;

  /**
   * The county where the corporate account is located.
   */
  county : LargeString;

  /**
   * The city where the corporate account is located.
   */
  city : LargeString;

  /**
   * The district where the corporate account is located.
   */
  district : LargeString;

  /**
   * The city of residence of the corporate account.
   */
  residentialCity : LargeString;

  /**
   * The postal code for the corporate account.
   */
  postalCode : LargeString;

  /**
   * The postal code or zip code for the corporate account.
   */
  companyPostalCode : LargeString;

  /**
   * The street address for the corporate account.
   */
  street : LargeString;

  /**
   * An additional address field that is printed before the street line.
   */
  streetPrefix : LargeString;

  /**
   * An additional address field that is printed before the street line.
   */
  additionalStreetPrefix : LargeString;

  /**
   * An additional address field that is printed after the street line.
   */
  streetSuffix : LargeString;

  /**
   * An additional address field that is printed after the street line.
   */
  additionalStreetSuffix : LargeString;

  /**
   * The house number.
   */
  houseNumber : LargeString;

  /**
   * An additional house number.
   */
  additionalHouseNumber : LargeString;

  /**
   * The post office box number.
   */
  poBoxNumber : LargeString;

  /**
   * The country where the post office box is located.
   */
  poBoxCountry : String(3);

  /**
   * The associaton to the Country entity.
   */
  @cds.ambiguous : 'missing on condition?'
  _poBoxCountry : Association to one sap.graph.Country {  };

  /**
   * The region where the post office box is located.
   */
  poBoxRegion : LargeString;

  /**
   * The city where the post office box is located.
   */
  poBoxCity : LargeString;

  /**
   * The postal code or zip code where the post office box is located.
   */
  poBoxPostalCode : LargeString;

  /**
   * The in care of name (c/o) for the address.
   */
  careOfName : LargeString;

  /**
   * The language used to communicate with the corporate account.
   */
  language : LargeString;

  /**
   * The assocation to the Language entity.
   */
  @cds.ambiguous : 'missing on condition?'
  _language : Association to one sap.graph.Language {  };

  /**
   * The preferred method of communication (Key).
   */
  bestReachedBy : LargeString;

  /**
   * The telephone numbers that belong to the corporate account address.
   */
  @cds.ambiguous : 'missing on condition?'
  phoneNumbers : Association to many sap.graph.CorporateAccount_addresses_phoneNumbers {  };

  /**
   * The mobile phone numbers that belong to the corporate account address.
   */
  @cds.ambiguous : 'missing on condition?'
  mobilePhoneNumbers : Association to many sap.graph.CorporateAccount_addresses_mobilePhoneNumbers {  };

  /**
   * The fax numbers that belong to the corporate account address.
   */
  @cds.ambiguous : 'missing on condition?'
  faxNumbers : Association to many sap.graph.CorporateAccount_addresses_faxNumbers {  };

  /**
   * The email addresses that belong to the corporate account address.
   */
  @cds.ambiguous : 'missing on condition?'
  emailAddresses : Association to many sap.graph.CorporateAccount_addresses_emailAddresses {  };

  /**
   * The website addresses that belong to the corporate account.
   */
  @cds.ambiguous : 'missing on condition?'
  websites : Association to many sap.graph.CorporateAccount_addresses_websites {  };
};

@cds.persistence.skip : true
entity sap.graph.CorporateAccount_addresses_phoneNumbers {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.CorporateAccount_addresses {  };

  /**
   * Identifier
   */
  key id : LargeString;

  /**
   * Telephone number.
   */
  number : LargeString;

  /**
   * Default Telephone number.
   */
  isDefault : Boolean;
};

@cds.persistence.skip : true
entity sap.graph.CorporateAccount_addresses_mobilePhoneNumbers {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.CorporateAccount_addresses {  };

  /**
   * Identifier
   */
  key id : LargeString;

  /**
   * Telephone number.
   */
  number : LargeString;

  /**
   * Default Telephone number.
   */
  isDefault : Boolean;
};

@cds.persistence.skip : true
entity sap.graph.CorporateAccount_addresses_faxNumbers {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.CorporateAccount_addresses {  };

  /**
   * Identifier
   */
  key id : LargeString;

  /**
   * Fax number.
   */
  number : LargeString;

  /**
   * Default Fax number.
   */
  isDefault : Boolean;
};

@cds.persistence.skip : true
entity sap.graph.CorporateAccount_addresses_emailAddresses {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.CorporateAccount_addresses {  };

  /**
   * Identifier
   */
  key id : LargeString;

  /**
   * Email Address.
   */
  address : LargeString;

  /**
   * Default Email Address.
   */
  isDefault : Boolean;
};

@cds.persistence.skip : true
entity sap.graph.CorporateAccount_addresses_websites {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.CorporateAccount_addresses {  };

  /**
   * Identifier
   */
  key id : LargeString;

  /**
   * Website.
   */
  url : LargeString;

  /**
   * Default Website.
   */
  isDefault : Boolean;
};

@cds.persistence.skip : true
entity sap.graph.CorporateAccount_roles {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.CorporateAccount {  };

  /**
   * Role Code.
   */
  key roleCode : LargeString;
};

@cds.persistence.skip : true
entity sap.graph.CorporateAccount_identifications {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.CorporateAccount {  };

  /**
   * Identification Type.
   */
  key identificationType : LargeString;

  /**
   * Identification Number.
   */
  key identificationNumber : LargeString;

  /**
   * Responsible Institution for ID Number.
   */
  responsibleInstitution : LargeString;

  /**
   * Date of Entry for ID Number
   */
  entryDate : Date;

  /**
   * Validity Start for ID Number
   */
  validFrom : Date;

  /**
   * Validity End for ID Number
   */
  validTo : Date;

  /**
   * Country.
   */
  country : String(3);

  /**
   * Country.
   */
  @cds.ambiguous : 'missing on condition?'
  _country : Association to one sap.graph.Country {  };

  /**
   * Region.
   */
  region : LargeString;
};

@cds.persistence.skip : true
entity sap.graph.CorporateAccount_salesData {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.CorporateAccount {  };

  /**
   * Sales Organization.
   */
  key salesOrganization : LargeString;

  /**
   * Distribution Channel.
   */
  key distributionChannel : LargeString;

  /**
   * Distribution Channel.
   */
  @cds.ambiguous : 'missing on condition?'
  _distributionChannel : Association to one sap.graph.DistributionChannel {  };

  /**
   * Division.
   */
  key division : LargeString;

  /**
   * Division.
   */
  @cds.ambiguous : 'missing on condition?'
  _division : Association to one sap.graph.Division {  };

  /**
   * A physical location that has responsibility for the sale of certain products or services within a given geographical area.
   */
  salesOffice : LargeString;

  /**
   * A group of sales people who are responsible for processing sales of certain products or services.
   */
  salesGroup : LargeString;

  /**
   * Central Order Block for the Customer.
   */
  orderBlockingReason : LargeString;

  /**
   * Central delivery block for the Customer.
   */
  deliveryBlockingReason : LargeString;

  /**
   * Central Billing Block for teh Customer.
   */
  billingBlockingReason : LargeString;

  /**
   * The delivery priority assigned to an item.
   */
  deliveryPriority : LargeString;

  /**
   * Complete Delivery Defined for Each Sales Order?
   */
  isCompleteDeliveryRequested : Boolean;

  /**
   * Currency.
   */
  currency : String(5);

  /**
   * Currency.
   */
  @cds.ambiguous : 'missing on condition?'
  _currency : Association to one sap.graph.Currency {  };

  /**
   * Identifies a particular group of customers.
   */
  customerGroup : LargeString;

  /**
   * Identifies a particular group of customers.
   */
  @cds.ambiguous : 'missing on condition?'
  _customerGroup : Association to one sap.graph.CustomerGroup {  };

  /**
   * Commonly used trading terms that comply with the standards established by the International Chamber of Commerce (ICC).
   */
  incotermsClassification : String(3);

  /**
   * Commonly used trading terms that comply with the standards established by the International Chamber of Commerce (ICC).
   */
  @cds.ambiguous : 'missing on condition?'
  _incotermsClassification : Association to one sap.graph.IncotermsClassification {  };

  /**
   * Additional information for the primary Incoterm.
   */
  incotermsLocation : LargeString;

  /**
   * Terms of Payment Key.
   */
  paymentTerms : LargeString;

  /**
   * A grouping of customers who share the same pricing requirements.
   */
  customerPriceGroup : LargeString;

  /**
   * Terms of Payment Key.
   */
  isMarkedForDeletion : Boolean;
};

@cds.persistence.skip : true
entity sap.graph.CorporateAccount_texts {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.CorporateAccount {  };

  /**
   * Identifier
   */
  key id : LargeString;

  /**
   * Long Text.
   */
  text : LargeString;
};

@cds.persistence.skip : true
entity sap.graph.CorporateAccount_taxNumbers {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.CorporateAccount {  };

  /**
   * Tax Type.
   */
  key taxType : LargeString;

  /**
   * Terms of Payment Key.
   */
  taxNumber : LargeString;
};

@cds.persistence.skip : true
entity sap.graph.Customer_addresses {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.Customer {  };

  /**
   * Identifier
   */
  key id : LargeString;

  /**
   * The country where the Customer is located.
   */
  country : String(3);

  /**
   * The country where the Customer is located.
   */
  @cds.ambiguous : 'missing on condition?'
  _country : Association to one sap.graph.Country {  };

  /**
   * The region where the Customer is located.
   */
  region : LargeString;

  /**
   * The county where the Customer is located.
   */
  county : LargeString;

  /**
   * The city where the Customer is located.
   */
  city : LargeString;

  /**
   * The district where the Customer is located.
   */
  district : LargeString;

  /**
   * The city of residence of the Customer.
   */
  residentialCity : LargeString;

  /**
   * The postal code for the Customer.
   */
  postalCode : LargeString;

  /**
   * The street address for the Customer.
   */
  street : LargeString;

  /**
   * An additional address field that is printed above the street line.
   */
  streetPrefix : LargeString;

  /**
   * An additional address field that is printed above the street line.
   */
  additionalStreetPrefix : LargeString;

  /**
   * An additional address field that is printed under the street line.
   */
  streetSuffix : LargeString;

  /**
   * An additional address field that is printed under the street line.
   */
  additionalStreetSuffix : LargeString;

  /**
   * The house number.
   */
  houseNumber : LargeString;

  /**
   * An additional house number.
   */
  additionalHouseNumber : LargeString;

  /**
   * P.O. Box.
   */
  poBoxNumber : LargeString;

  /**
   * Deviating Country.
   */
  poBoxCountry : String(3);

  /**
   * Deviating Country.
   */
  @cds.ambiguous : 'missing on condition?'
  _poBoxCountry : Association to one sap.graph.Country {  };

  /**
   * Deviating Region.
   */
  poBoxRegion : LargeString;

  /**
   * Deviating City.
   */
  poBoxCity : LargeString;

  /**
   * Deviating Postal Code.
   */
  poBoxPostalCode : LargeString;

  /**
   * The in care of name (c/o) for the address.
   */
  careOfName : LargeString;

  /**
   * The method of communication (Key).
   */
  bestReachedBy : LargeString;

  /**
   * Telephone numbers.
   */
  @cds.ambiguous : 'missing on condition?'
  phoneNumbers : Association to many sap.graph.Customer_addresses_phoneNumbers {  };

  /**
   * Mobilphone numbers.
   */
  @cds.ambiguous : 'missing on condition?'
  mobilePhoneNumbers : Association to many sap.graph.Customer_addresses_mobilePhoneNumbers {  };

  /**
   * Fax numbers.
   */
  @cds.ambiguous : 'missing on condition?'
  faxNumbers : Association to many sap.graph.Customer_addresses_faxNumbers {  };

  /**
   * Email Addresses.
   */
  @cds.ambiguous : 'missing on condition?'
  emailAddresses : Association to many sap.graph.Customer_addresses_emailAddresses {  };

  /**
   * Websites.
   */
  @cds.ambiguous : 'missing on condition?'
  websites : Association to many sap.graph.Customer_addresses_websites {  };
};

@cds.persistence.skip : true
entity sap.graph.Customer_addresses_phoneNumbers {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.Customer_addresses {  };

  /**
   * Identifier
   */
  key id : LargeString;

  /**
   * Telephone number.
   */
  number : LargeString;

  /**
   * Default Telephone number.
   */
  isDefault : Boolean;
};

@cds.persistence.skip : true
entity sap.graph.Customer_addresses_mobilePhoneNumbers {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.Customer_addresses {  };

  /**
   * Identifier
   */
  key id : LargeString;

  /**
   * Telephone number.
   */
  number : LargeString;

  /**
   * Default Telephone number.
   */
  isDefault : Boolean;
};

@cds.persistence.skip : true
entity sap.graph.Customer_addresses_faxNumbers {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.Customer_addresses {  };

  /**
   * Identifier
   */
  key id : LargeString;

  /**
   * Fax number.
   */
  number : LargeString;

  /**
   * Default Fax number.
   */
  isDefault : Boolean;
};

@cds.persistence.skip : true
entity sap.graph.Customer_addresses_emailAddresses {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.Customer_addresses {  };

  /**
   * Identifier
   */
  key id : LargeString;

  /**
   * Email Address.
   */
  address : LargeString;

  /**
   * Default Email Address.
   */
  isDefault : Boolean;
};

@cds.persistence.skip : true
entity sap.graph.Customer_addresses_websites {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.Customer_addresses {  };

  /**
   * Identifier
   */
  key id : LargeString;

  /**
   * Website.
   */
  url : LargeString;

  /**
   * Default Website.
   */
  isDefault : Boolean;
};

@cds.persistence.skip : true
entity sap.graph.Customer_roles {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.Customer {  };

  /**
   * Role Code.
   */
  key roleCode : LargeString;
};

@cds.persistence.skip : true
entity sap.graph.Customer_identifications {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.Customer {  };

  /**
   * Identification Type.
   */
  key identificationType : LargeString;

  /**
   * Identification Number.
   */
  key identificationNumber : LargeString;

  /**
   * Responsible Institution for ID Number.
   */
  responsibleInstitution : LargeString;

  /**
   * Date of Entry for ID Number
   */
  entryDate : Date;

  /**
   * Validity Start for ID Number
   */
  validFrom : Date;

  /**
   * Validity End for ID Number
   */
  validTo : Date;

  /**
   * Country.
   */
  country : String(3);

  /**
   * Country.
   */
  @cds.ambiguous : 'missing on condition?'
  _country : Association to one sap.graph.Country {  };

  /**
   * Region.
   */
  region : LargeString;
};

@cds.persistence.skip : true
entity sap.graph.Customer_salesData {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.Customer {  };

  /**
   * Sales Organization.
   */
  key salesOrganization : LargeString;

  /**
   * Distribution Channel.
   */
  key distributionChannel : LargeString;

  /**
   * Distribution Channel.
   */
  @cds.ambiguous : 'missing on condition?'
  _distributionChannel : Association to one sap.graph.DistributionChannel {  };

  /**
   * Division.
   */
  key division : LargeString;

  /**
   * Division.
   */
  @cds.ambiguous : 'missing on condition?'
  _division : Association to one sap.graph.Division {  };

  /**
   * A physical location that has responsibility for the sale of certain products or services within a given geographical area.
   */
  salesOffice : LargeString;

  /**
   * A group of sales people who are responsible for processing sales of certain products or services.
   */
  salesGroup : LargeString;

  /**
   * Central Order Block for the Customer.
   */
  orderBlockingReason : LargeString;

  /**
   * Central delivery block for the Customer.
   */
  deliveryBlockingReason : LargeString;

  /**
   * Central Billing Block for teh Customer.
   */
  billingBlockingReason : LargeString;

  /**
   * The delivery priority assigned to an item.
   */
  deliveryPriority : LargeString;

  /**
   * Complete Delivery Defined for Each Sales Order?
   */
  isCompleteDeliveryRequested : Boolean;

  /**
   * Currency.
   */
  currency : String(5);

  /**
   * Currency.
   */
  @cds.ambiguous : 'missing on condition?'
  _currency : Association to one sap.graph.Currency {  };

  /**
   * Identifies a particular group of customers.
   */
  customerGroup : LargeString;

  /**
   * Identifies a particular group of customers.
   */
  @cds.ambiguous : 'missing on condition?'
  _customerGroup : Association to one sap.graph.CustomerGroup {  };

  /**
   * Commonly used trading terms that comply with the standards established by the International Chamber of Commerce (ICC).
   */
  incotermsClassification : String(3);

  /**
   * Commonly used trading terms that comply with the standards established by the International Chamber of Commerce (ICC).
   */
  @cds.ambiguous : 'missing on condition?'
  _incotermsClassification : Association to one sap.graph.IncotermsClassification {  };

  /**
   * Additional information for the primary Incoterm.
   */
  incotermsLocation : LargeString;

  /**
   * Terms of Payment Key.
   */
  paymentTerms : LargeString;

  /**
   * A grouping of customers who share the same pricing requirements.
   */
  customerPriceGroup : LargeString;

  /**
   * Terms of Payment Key.
   */
  isMarkedForDeletion : Boolean;
};

@cds.persistence.skip : true
entity sap.graph.Customer_texts {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.Customer {  };

  /**
   * Identifier
   */
  key id : LargeString;

  /**
   * Long Text.
   */
  text : LargeString;
};

@cds.persistence.skip : true
entity sap.graph.Customer_taxNumbers {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.Customer {  };

  /**
   * Tax Type.
   */
  key taxType : LargeString;

  /**
   * Terms of Payment Key.
   */
  taxNumber : LargeString;
};

@cds.persistence.skip : true
entity sap.graph.IndividualCustomer_addresses {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.IndividualCustomer {  };

  /**
   * Identifier
   */
  key id : LargeString;

  /**
   * Country.
   */
  country : String(3);

  /**
   * Country.
   */
  @cds.ambiguous : 'missing on condition?'
  _country : Association to one sap.graph.Country {  };

  /**
   * Region.
   */
  region : LargeString;

  /**
   * County.
   */
  county : LargeString;

  /**
   * City.
   */
  city : LargeString;

  /**
   * District.
   */
  district : LargeString;

  /**
   * City of Residence.
   */
  residentialCity : LargeString;

  /**
   * Postal Code.
   */
  postalCode : LargeString;

  /**
   * Street.
   */
  street : LargeString;

  /**
   * Additional address field which is printed above the Street line.
   */
  streetPrefix : LargeString;

  /**
   * Additional address field which is printed above the Street line.
   */
  additionalStreetPrefix : LargeString;

  /**
   * Additional address field which is printed under the Street line.
   */
  streetSuffix : LargeString;

  /**
   * Additional address field which is printed under the Street line.
   */
  additionalStreetSuffix : LargeString;

  /**
   * House Number.
   */
  houseNumber : LargeString;

  /**
   * Additional House Number.
   */
  additionalHouseNumber : LargeString;

  /**
   * P.O. Box.
   */
  poBoxNumber : LargeString;

  /**
   * Deviating Country.
   */
  poBoxCountry : String(3);

  /**
   * Deviating Country.
   */
  @cds.ambiguous : 'missing on condition?'
  _poBoxCountry : Association to one sap.graph.Country {  };

  /**
   * Deviating Region.
   */
  poBoxRegion : LargeString;

  /**
   * Deviating City.
   */
  poBoxCity : LargeString;

  /**
   * Deviating Postal Code.
   */
  poBoxPostalCode : LargeString;

  /**
   * c/o name.
   */
  careOfName : LargeString;

  /**
   * Communication Method (Key).
   */
  bestReachedBy : LargeString;

  /**
   * Telephone numbers.
   */
  @cds.ambiguous : 'missing on condition?'
  phoneNumbers : Association to many sap.graph.IndividualCustomer_addresses_phoneNumbers {  };

  /**
   * Mobilphone numbers.
   */
  @cds.ambiguous : 'missing on condition?'
  mobilePhoneNumbers : Association to many sap.graph.IndividualCustomer_addresses_mobilePhoneNumbers {  };

  /**
   * Fax numbers.
   */
  @cds.ambiguous : 'missing on condition?'
  faxNumbers : Association to many sap.graph.IndividualCustomer_addresses_faxNumbers {  };

  /**
   * Email Addresses.
   */
  @cds.ambiguous : 'missing on condition?'
  emailAddresses : Association to many sap.graph.IndividualCustomer_addresses_emailAddresses {  };

  /**
   * Websites.
   */
  @cds.ambiguous : 'missing on condition?'
  websites : Association to many sap.graph.IndividualCustomer_addresses_websites {  };
};

@cds.persistence.skip : true
entity sap.graph.IndividualCustomer_addresses_phoneNumbers {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.IndividualCustomer_addresses {  };

  /**
   * Identifier
   */
  key id : LargeString;

  /**
   * Telephone number.
   */
  number : LargeString;

  /**
   * Default Telephone number.
   */
  isDefault : Boolean;
};

@cds.persistence.skip : true
entity sap.graph.IndividualCustomer_addresses_mobilePhoneNumbers {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.IndividualCustomer_addresses {  };

  /**
   * Identifier
   */
  key id : LargeString;

  /**
   * Telephone number.
   */
  number : LargeString;

  /**
   * Default Telephone number.
   */
  isDefault : Boolean;
};

@cds.persistence.skip : true
entity sap.graph.IndividualCustomer_addresses_faxNumbers {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.IndividualCustomer_addresses {  };

  /**
   * Identifier
   */
  key id : LargeString;

  /**
   * Fax number.
   */
  number : LargeString;

  /**
   * Default Fax number.
   */
  isDefault : Boolean;
};

@cds.persistence.skip : true
entity sap.graph.IndividualCustomer_addresses_emailAddresses {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.IndividualCustomer_addresses {  };

  /**
   * Identifier
   */
  key id : LargeString;

  /**
   * Email Address.
   */
  address : LargeString;

  /**
   * Default Email Address.
   */
  isDefault : Boolean;
};

@cds.persistence.skip : true
entity sap.graph.IndividualCustomer_addresses_websites {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.IndividualCustomer_addresses {  };

  /**
   * Identifier
   */
  key id : LargeString;

  /**
   * Website.
   */
  url : LargeString;

  /**
   * Default Website.
   */
  isDefault : Boolean;
};

@cds.persistence.skip : true
entity sap.graph.IndividualCustomer_roles {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.IndividualCustomer {  };

  /**
   * Role Code.
   */
  key roleCode : LargeString;
};

@cds.persistence.skip : true
entity sap.graph.IndividualCustomer_identifications {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.IndividualCustomer {  };

  /**
   * Identification Type.
   */
  key identificationType : LargeString;

  /**
   * Identification Number.
   */
  key identificationNumber : LargeString;

  /**
   * Responsible Institution for ID Number.
   */
  responsibleInstitution : LargeString;

  /**
   * Date of Entry for ID Number
   */
  entryDate : Date;

  /**
   * Validity Start for ID Number
   */
  validFrom : Date;

  /**
   * Validity End for ID Number
   */
  validTo : Date;

  /**
   * Country.
   */
  country : String(3);

  /**
   * Country.
   */
  @cds.ambiguous : 'missing on condition?'
  _country : Association to one sap.graph.Country {  };

  /**
   * Region.
   */
  region : LargeString;
};

@cds.persistence.skip : true
entity sap.graph.IndividualCustomer_salesData {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.IndividualCustomer {  };

  /**
   * Sales Organization.
   */
  key salesOrganization : LargeString;

  /**
   * Distribution Channel.
   */
  key distributionChannel : LargeString;

  /**
   * Distribution Channel.
   */
  @cds.ambiguous : 'missing on condition?'
  _distributionChannel : Association to one sap.graph.DistributionChannel {  };

  /**
   * Division.
   */
  key division : LargeString;

  /**
   * Division.
   */
  @cds.ambiguous : 'missing on condition?'
  _division : Association to one sap.graph.Division {  };

  /**
   * A physical location that has responsibility for the sale of certain products or services within a given geographical area.
   */
  salesOffice : LargeString;

  /**
   * A group of sales people who are responsible for processing sales of certain products or services.
   */
  salesGroup : LargeString;

  /**
   * Central Order Block for the Customer.
   */
  orderBlockingReason : LargeString;

  /**
   * Central delivery block for the Customer.
   */
  deliveryBlockingReason : LargeString;

  /**
   * Central Billing Block for teh Customer.
   */
  billingBlockingReason : LargeString;

  /**
   * The delivery priority assigned to an item.
   */
  deliveryPriority : LargeString;

  /**
   * Complete Delivery Defined for Each Sales Order?
   */
  isCompleteDeliveryRequested : Boolean;

  /**
   * Currency.
   */
  currency : String(5);

  /**
   * Currency.
   */
  @cds.ambiguous : 'missing on condition?'
  _currency : Association to one sap.graph.Currency {  };

  /**
   * Identifies a particular group of customers.
   */
  customerGroup : LargeString;

  /**
   * Identifies a particular group of customers.
   */
  @cds.ambiguous : 'missing on condition?'
  _customerGroup : Association to one sap.graph.CustomerGroup {  };

  /**
   * Commonly used trading terms that comply with the standards established by the International Chamber of Commerce (ICC).
   */
  incotermsClassification : String(3);

  /**
   * Commonly used trading terms that comply with the standards established by the International Chamber of Commerce (ICC).
   */
  @cds.ambiguous : 'missing on condition?'
  _incotermsClassification : Association to one sap.graph.IncotermsClassification {  };

  /**
   * Additional information for the primary Incoterm.
   */
  incotermsLocation : LargeString;

  /**
   * Terms of Payment Key.
   */
  paymentTerms : LargeString;

  /**
   * A grouping of customers who share the same pricing requirements.
   */
  customerPriceGroup : LargeString;

  /**
   * Terms of Payment Key.
   */
  isMarkedForDeletion : Boolean;
};

@cds.persistence.skip : true
entity sap.graph.IndividualCustomer_texts {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.IndividualCustomer {  };

  /**
   * Identifier
   */
  key id : LargeString;

  /**
   * Long Text.
   */
  text : LargeString;
};

@cds.persistence.skip : true
entity sap.graph.IndividualCustomer_taxNumbers {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.IndividualCustomer {  };

  /**
   * Tax Type.
   */
  key taxType : LargeString;

  /**
   * Terms of Payment Key.
   */
  taxNumber : LargeString;
};

@cds.persistence.skip : true
entity sap.graph.SalesOrder_items {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.SalesOrder {  };

  /**
   * Item ID.
   */
  key itemId : LargeString;

  /**
   * The number of the higher-level item to which this item belongs in a hierarchy.
   */
  parentItemId : LargeString;

  /**
   * Sales order item category.
   */
  itemCategory : LargeString;

  /**
   * Short description of the sales order item.
   */
  itemText : LargeString;

  /**
   * Number that the customer uses to uniquely identify a purchasing document (e.g. an inquiry or a purchase order).
   */
  soldToPartyPurchaseOrderItemId : LargeString;

  /**
   * Product of the item.
   */
  product : LargeString;

  /**
   * Product of the item.
   */
  @cds.ambiguous : 'missing on condition?'
  _product : Association to one sap.graph.Product {  };

  /**
   * Quantity of the item product.
   */
  quantity : Decimal(22, 6);

  /**
   * Unit of measure of the item quantity.
   */
  quantityUnit : String(3);

  /**
   * Gross Weight.
   */
  grossWeight : Decimal(22, 6);

  /**
   * Gross Weight Unit.
   */
  grossWeightUnit : String(3);

  /**
   * Net Weight.
   */
  netWeight : Decimal(22, 6);

  /**
   * Net Weight Unit.
   */
  netWeightUnit : String(3);

  /**
   * Volume.
   */
  volume : Decimal(22, 6);

  /**
   * Volume Unit.
   */
  volumeUnit : String(3);

  /**
   * Key that uniquely identifies a plant.
   */
  productionPlant : LargeString;

  /**
   * Net Value of the Order Item in Net Amount Currency.
   */
  netAmount : Decimal(22, 6);

  /**
   * Net Amount Currency.
   */
  netAmountCurrency : String(3);

  /**
   * Net Amount Currency.
   */
  @cds.ambiguous : 'missing on condition?'
  _netAmountCurrency : Association to one sap.graph.Currency {  };

  /**
   * Tax Value of the Order Item in Tax Amount Currency.
   */
  taxAmount : Decimal(22, 6);

  /**
   * Tax Amount Currency.
   */
  taxAmountCurrency : String(3);

  /**
   * Tax Amount Currency.
   */
  @cds.ambiguous : 'missing on condition?'
  _taxAmountCurrency : Association to one sap.graph.Currency {  };

  /**
   * The processing status of the entire sales document.
   */
  processingStatus : LargeString;

  /**
   * Overall Delivery Status (All Items).
   */
  deliveryStatus : LargeString;

  /**
   * The order-related billing status shows to what extent an item has been processed for billing.
   */
  billingStatus : LargeString;

  /**
   * Reason for Rejection of Sales Documents.
   */
  cancellationReason : LargeString;

  /**
   * Reason for Rejection of Sales Documents.
   */
  @cds.ambiguous : 'missing on condition?'
  _cancellationReason : Association to one sap.graph.SalesDocumentCancellationReason {  };

  /**
   * Composition of schedule lines.
   */
  @cds.ambiguous : 'missing on condition?'
  scheduleLines : Association to many sap.graph.SalesOrder_items_scheduleLines {  };

  /**
   * Composition of parties.
   */
  @cds.ambiguous : 'missing on condition?'
  parties : Association to many sap.graph.SalesOrder_items_parties {  };

  /**
   * Composition of pricing elements.
   */
  @cds.ambiguous : 'missing on condition?'
  pricingElements : Association to many sap.graph.SalesOrder_items_pricingElements {  };

  /**
   * Composition of texts.
   */
  @cds.ambiguous : 'missing on condition?'
  texts : Association to many sap.graph.SalesOrder_items_texts {  };
};

@cds.persistence.skip : true
entity sap.graph.Product_quantityConversions {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.Product {  };

  /**
   * A code that represents an alternative unit of measure for conversion.
   */
  key alternativeUnit : String(3);

  /**
   * Quantity numerator.
   */
  quantityNumerator : Decimal(22, 6);

  /**
   * Quantity denominator.
   */
  quantityDenominator : Decimal(22, 6);
};

@cds.persistence.skip : true
entity sap.graph.Product_quantityCharacteristics {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.Product {  };

  /**
   * Unit code.
   */
  key unit : String(3);

  /**
   * Gross Weight.
   */
  grossWeight : Decimal(22, 6);

  /**
   * Gross Weight Unit.
   */
  grossWeightUnit : String(3);

  /**
   * Volume.
   */
  volume : Decimal(22, 6);

  /**
   * Volume Unit.
   */
  volumeUnit : String(3);

  /**
   * Width.
   */
  width : Decimal(22, 6);

  /**
   * Width Unit.
   */
  widthUnit : String(3);

  /**
   * Height.
   */
  height : Decimal(22, 6);

  /**
   * Heigth Unit.
   */
  heightUnit : String(3);

  /**
   * Length.
   */
  length : Decimal(22, 6);

  /**
   * Length Unit.
   */
  lengthUnit : String(3);
};

@cds.persistence.skip : true
entity sap.graph.Product_globalTradeItemNumbers {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.Product {  };

  /**
   * Unit code.
   */
  key unit : String(3);

  /**
   * Global Trade Item number (GTIN).
   */
  gtin : LargeString;
};

@cds.persistence.skip : true
entity sap.graph.Product_plants {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.Product {  };

  /**
   * ID of the plant.
   */
  key plantId : LargeString;
};

@cds.persistence.skip : true
entity sap.graph.Product_distributionChains {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.Product {  };

  /**
   * Sales Organization.
   */
  key salesOrganization : LargeString;

  /**
   * Distribution Channel.
   */
  key distributionChannel : LargeString;

  /**
   * Distribution Channel.
   */
  @cds.ambiguous : 'missing on condition?'
  _distributionChannel : Association to one sap.graph.DistributionChannel {  };

  /**
   * Cross-distribution-chain material status Indicates whether the material may be used in individual functions in Sales and Distribution for all distribution chains..
   */
  salesStatus : LargeString;

  /**
   * Unit of measure in which the material is sold.
   */
  salesUnit : String(3);

  /**
   * Minimum order quantity in base unit of measure The minimum quantity a customer may order.
   */
  minimumOrderQuantity : Decimal(22, 6);

  /**
   * Material master record that the system uses as a reference for pricing purposes.
   */
  pricingProduct : LargeString;

  /**
   * Material master record that the system uses as a reference for pricing purposes.
   */
  @cds.ambiguous : 'missing on condition?'
  _pricingProduct : Association to one sap.graph.Product {  };

  /**
   * Product related sales text.
   */
  salesText : LargeString;
};

@cds.persistence.skip : true
entity sap.graph.SalesOrder_items_scheduleLines {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.SalesOrder_items {  };

  /**
   * Schedule Line Id.
   */
  key scheduleLineId : LargeString;

  /**
   * Requested Delivery Date.
   */
  requestedDeliveryDate : Date;

  /**
   * Confirmed Delivery Date.
   */
  confirmedDeliveryDate : Date;

  /**
   * The item quantity that the system confirms for shipping after checking inventory availability.
   */
  confirmedQuantity : Decimal(22, 6);

  /**
   * Unit of measure in which the material is sold.
   */
  confirmedQuantityUnit : String(3);
};

@cds.persistence.skip : true
entity sap.graph.SalesOrder_items_parties {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.SalesOrder_items {  };

  /**
   * Role of the partner in a sales order. Roles are for example: Ship To, Sold To, but also Contact.
   */
  key partyRole : LargeString;

  /**
   * ID of a Supplier, Customer, Personnel or ContactPerson.
   */
  partyId : LargeString;
  @cds.ambiguous : 'missing on condition?'
  addresses : Association to many sap.graph.SalesOrder_items_parties_addresses {  };
};

@cds.persistence.skip : true
entity sap.graph.SalesOrder_items_parties_addresses {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.SalesOrder_items_parties {  };

  /**
   * Identifier
   */
  key id : LargeString;
  addressee : LargeString;

  /**
   * The country where the address is located.
   */
  country : String(3);

  /**
   * The association to the Country entity.
   */
  @cds.ambiguous : 'missing on condition?'
  _country : Association to one sap.graph.Country {  };

  /**
   * The region where the address is located.
   */
  region : LargeString;

  /**
   * The city where the address is located.
   */
  city : LargeString;

  /**
   * The district where the address is located.
   */
  district : LargeString;

  /**
   * The postal code for the address.
   */
  postalCode : LargeString;

  /**
   * The street address for the address.
   */
  street : LargeString;

  /**
   * An additional address field that is printed before the street line.
   */
  streetPrefix : LargeString;

  /**
   * An additional address field that is printed before the street line.
   */
  additionalStreetPrefix : LargeString;

  /**
   * An additional address field that is printed after the street line.
   */
  streetSuffix : LargeString;

  /**
   * An additional address field that is printed after the street line.
   */
  additionalStreetSuffix : LargeString;

  /**
   * The house number.
   */
  houseNumber : LargeString;

  /**
   * The post office box number.
   */
  poBoxNumber : LargeString;

  /**
   * The postal code or zip code where the post office box is located.
   */
  poBoxPostalCode : LargeString;
  emailAddress : LargeString;
};

@cds.persistence.skip : true
entity sap.graph.SalesOrder_items_pricingElements {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.SalesOrder_items {  };

  /**
   * Identifier
   */
  key id : LargeString;

  /**
   * The key that uniquely identifies the condition.
   */
  conditionType : LargeString;

  /**
   * The key that uniquely identifies the condition.
   */
  @cds.ambiguous : 'missing on condition?'
  _conditionType : Association to one sap.graph.SalesPricingConditionType {  };

  /**
   * Condition Category (Examples: Tax, Freight, Price, Cost).
   */
  conditionCategory : LargeString;

  /**
   * Origin of the Condition.
   */
  conditionOrigin : LargeString;

  /**
   * Condition Amount or Percentage.
   */
  rateValue : Decimal(22, 6);

  /**
   * Currency Key.
   */
  rateValueCurrency : String(5);

  /**
   * Currency Key.
   */
  @cds.ambiguous : 'missing on condition?'
  _rateValueCurrency : Association to one sap.graph.Currency {  };

  /**
   * The value, resulting from pricing, for a particular condition, total, or subtotal in a document.
   */
  calculatedAmount : Decimal(22, 6);

  /**
   * Currency Key.
   */
  calculatedAmountCurrency : String(5);

  /**
   * Currency Key.
   */
  @cds.ambiguous : 'missing on condition?'
  _calculatedAmountCurrency : Association to one sap.graph.Currency {  };

  /**
   * Indicates if the condition is active.
   */
  inactivityReason : LargeString;

  /**
   * If this flag is set, the condition has been manually or automatically changed or created.
   */
  isManuallyChanged : Boolean;
};

@cds.persistence.skip : true
entity sap.graph.SalesOrder_items_texts {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.SalesOrder_items {  };

  /**
   * The text ID defines the various types of texts related to a text object.
   */
  key textType : LargeString;

  /**
   * Long text.
   */
  text : LargeString;
};

@cds.persistence.skip : true
entity sap.graph.SalesOrder_parties {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.SalesOrder {  };

  /**
   * Role of the partner in a sales order. Roles are for example: Ship To, Sold To, but also Contact.
   */
  key partyRole : LargeString;

  /**
   * ID of a Supplier, Customer, Personnel or ContactPerson.
   */
  partyId : LargeString;
  @cds.ambiguous : 'missing on condition?'
  addresses : Association to many sap.graph.SalesOrder_parties_addresses {  };
};

@cds.persistence.skip : true
entity sap.graph.SalesOrder_parties_addresses {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.SalesOrder_parties {  };

  /**
   * Identifier
   */
  key id : LargeString;
  addressee : LargeString;

  /**
   * The country where the address is located.
   */
  country : String(3);

  /**
   * The association to the Country entity.
   */
  @cds.ambiguous : 'missing on condition?'
  _country : Association to one sap.graph.Country {  };

  /**
   * The region where the address is located.
   */
  region : LargeString;

  /**
   * The city where the address is located.
   */
  city : LargeString;

  /**
   * The district where the address is located.
   */
  district : LargeString;

  /**
   * The postal code for the address.
   */
  postalCode : LargeString;

  /**
   * The street address for the address.
   */
  street : LargeString;

  /**
   * An additional address field that is printed before the street line.
   */
  streetPrefix : LargeString;

  /**
   * An additional address field that is printed before the street line.
   */
  additionalStreetPrefix : LargeString;

  /**
   * An additional address field that is printed after the street line.
   */
  streetSuffix : LargeString;

  /**
   * An additional address field that is printed after the street line.
   */
  additionalStreetSuffix : LargeString;

  /**
   * The house number.
   */
  houseNumber : LargeString;

  /**
   * The post office box number.
   */
  poBoxNumber : LargeString;

  /**
   * The postal code or zip code where the post office box is located.
   */
  poBoxPostalCode : LargeString;
  emailAddress : LargeString;
};

@cds.persistence.skip : true
entity sap.graph.SalesOrder_pricingElements {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.SalesOrder {  };

  /**
   * Identifier
   */
  key id : LargeString;

  /**
   * The key that uniquely identifies the condition.
   */
  conditionType : LargeString;

  /**
   * The key that uniquely identifies the condition.
   */
  @cds.ambiguous : 'missing on condition?'
  _conditionType : Association to one sap.graph.SalesPricingConditionType {  };

  /**
   * Condition Category (Examples: Tax, Freight, Price, Cost).
   */
  conditionCategory : LargeString;

  /**
   * Origin of the Condition.
   */
  conditionOrigin : LargeString;

  /**
   * Condition Amount or Percentage.
   */
  rateValue : Decimal(22, 6);

  /**
   * Currency Key.
   */
  rateValueCurrency : String(5);

  /**
   * Currency Key.
   */
  @cds.ambiguous : 'missing on condition?'
  _rateValueCurrency : Association to one sap.graph.Currency {  };

  /**
   * The value, resulting from pricing, for a particular condition, total, or subtotal in a document.
   */
  calculatedAmount : Decimal(22, 6);

  /**
   * Currency Key.
   */
  calculatedAmountCurrency : String(5);

  /**
   * Currency Key.
   */
  @cds.ambiguous : 'missing on condition?'
  _calculatedAmountCurrency : Association to one sap.graph.Currency {  };

  /**
   * Indicates if the condition is active.
   */
  inactivityReason : LargeString;

  /**
   * If this flag is set, the condition has been manually or automatically changed or created.
   */
  isManuallyChanged : Boolean;
};

@cds.persistence.skip : true
entity sap.graph.SalesOrder_texts {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.SalesOrder {  };

  /**
   * The text ID defines the various types of texts related to a text object.
   */
  key textType : LargeString;

  /**
   * Long text.
   */
  text : LargeString;
};

@cds.persistence.skip : true
entity sap.graph.SalesContract_items {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.SalesContract {  };

  /**
   * Item ID.
   */
  key itemId : LargeString;

  /**
   * The number of the higher-level item to which this item belongs in a hierarchy.
   */
  parentItemId : LargeString;

  /**
   * Sales contract item category.
   */
  itemCategory : LargeString;

  /**
   * Short description of the sales contract item.
   */
  itemText : LargeString;

  /**
   * The date from which the sales contract is valid.
   */
  validFrom : Date;

  /**
   * Date until which the sales contract is valid.
   */
  validTo : Date;

  /**
   * Product of the item.
   */
  product : LargeString;

  /**
   * Product of the item.
   */
  @cds.ambiguous : 'missing on condition?'
  _product : Association to one sap.graph.Product {  };

  /**
   * Quantity of the item product.
   */
  quantity : Decimal(22, 6);

  /**
   * Unit of measure of the item quantity.
   */
  quantityUnit : String(3);

  /**
   * Net Value of the Order Item in Net Amount Currency.
   */
  netAmount : Decimal(22, 6);

  /**
   * Net Amount Currency.
   */
  netAmountCurrency : String(3);

  /**
   * Net Amount Currency.
   */
  @cds.ambiguous : 'missing on condition?'
  _netAmountCurrency : Association to one sap.graph.Currency {  };

  /**
   * Terms of Payment Key.
   */
  paymentTerms : LargeString;

  /**
   * Date for Pricing and Exchange Rate.
   */
  @odata.precision : 0
  @odata.type : 'Edm.DateTimeOffset'
  pricingDate : DateTime;

  /**
   * Commonly used trading terms that comply with the standards established by the International Chamber of Commerce (ICC).
   */
  incotermsClassification : String(3);

  /**
   * Commonly used trading terms that comply with the standards established by the International Chamber of Commerce (ICC).
   */
  @cds.ambiguous : 'missing on condition?'
  _incotermsClassification : Association to one sap.graph.IncotermsClassification {  };

  /**
   * Additional information for the primary Incoterm.
   */
  incotermsLocation : LargeString;

  /**
   * The processing status of the entire sales document.
   */
  processingStatus : LargeString;

  /**
   * Displays the rejection status of the entire sales document.
   */
  cancellationReason : LargeString;

  /**
   * Displays the rejection status of the entire sales document.
   */
  @cds.ambiguous : 'missing on condition?'
  _cancellationReason : Association to one sap.graph.SalesDocumentCancellationReason {  };

  /**
   * Partners related to the sales contract.
   */
  @cds.ambiguous : 'missing on condition?'
  parties : Association to many sap.graph.SalesContract_items_parties {  };

  /**
   * Composition of pricing elements.
   */
  @cds.ambiguous : 'missing on condition?'
  pricingElements : Association to many sap.graph.SalesContract_items_pricingElements {  };
};

@cds.persistence.skip : true
entity sap.graph.SalesContract_items_parties {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.SalesContract_items {  };

  /**
   * Role of the partner in a sales contract. Roles are for example: Ship To, Sold To, but also Contact.
   */
  key partyRole : String(10);

  /**
   * ID of a Supplier, Customer, Personnel or ContactPerson.
   */
  partyId : LargeString;
};

@cds.persistence.skip : true
entity sap.graph.SalesContract_items_pricingElements {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.SalesContract_items {  };

  /**
   * Identifier
   */
  key id : LargeString;

  /**
   * The key that uniquely identifies the condition.
   */
  conditionType : LargeString;

  /**
   * The key that uniquely identifies the condition.
   */
  @cds.ambiguous : 'missing on condition?'
  _conditionType : Association to one sap.graph.SalesPricingConditionType {  };

  /**
   * Condition Category (Examples: Tax, Freight, Price, Cost).
   */
  conditionCategory : LargeString;

  /**
   * Origin of the Condition.
   */
  conditionOrigin : LargeString;

  /**
   * Condition Amount or Percentage.
   */
  rateValue : Decimal(22, 6);

  /**
   * Currency Key.
   */
  rateValueCurrency : String(5);

  /**
   * Currency Key.
   */
  @cds.ambiguous : 'missing on condition?'
  _rateValueCurrency : Association to one sap.graph.Currency {  };

  /**
   * The value, resulting from pricing, for a particular condition, total, or subtotal in a document.
   */
  calculatedAmount : Decimal(22, 6);

  /**
   * Currency Key.
   */
  calculatedAmountCurrency : String(5);

  /**
   * Currency Key.
   */
  @cds.ambiguous : 'missing on condition?'
  _calculatedAmountCurrency : Association to one sap.graph.Currency {  };

  /**
   * Indicates if the condition is active.
   */
  inactivityReason : LargeString;

  /**
   * If this flag is set, the condition has been manually or automatically changed or created.
   */
  isManuallyChanged : Boolean;
};

@cds.persistence.skip : true
entity sap.graph.SalesContract_parties {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.SalesContract {  };

  /**
   * Role of the partner in a sales contract. Roles are for example: Ship To, Sold To, but also Contact.
   */
  key partyRole : String(10);

  /**
   * ID of a Supplier, Customer, Personnel or ContactPerson.
   */
  partyId : LargeString;
};

@cds.persistence.skip : true
entity sap.graph.SalesContract_pricingElements {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.SalesContract {  };

  /**
   * Identifier
   */
  key id : LargeString;

  /**
   * The key that uniquely identifies the condition.
   */
  conditionType : LargeString;

  /**
   * The key that uniquely identifies the condition.
   */
  @cds.ambiguous : 'missing on condition?'
  _conditionType : Association to one sap.graph.SalesPricingConditionType {  };

  /**
   * Condition Category (Examples: Tax, Freight, Price, Cost).
   */
  conditionCategory : LargeString;

  /**
   * Origin of the Condition.
   */
  conditionOrigin : LargeString;

  /**
   * Condition Amount or Percentage.
   */
  rateValue : Decimal(22, 6);

  /**
   * Currency Key.
   */
  rateValueCurrency : String(5);

  /**
   * Currency Key.
   */
  @cds.ambiguous : 'missing on condition?'
  _rateValueCurrency : Association to one sap.graph.Currency {  };

  /**
   * The value, resulting from pricing, for a particular condition, total, or subtotal in a document.
   */
  calculatedAmount : Decimal(22, 6);

  /**
   * Currency Key.
   */
  calculatedAmountCurrency : String(5);

  /**
   * Currency Key.
   */
  @cds.ambiguous : 'missing on condition?'
  _calculatedAmountCurrency : Association to one sap.graph.Currency {  };

  /**
   * Indicates if the condition is active.
   */
  inactivityReason : LargeString;

  /**
   * If this flag is set, the condition has been manually or automatically changed or created.
   */
  isManuallyChanged : Boolean;
};

@cds.persistence.skip : true
entity sap.graph.SalesQuote_items {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.SalesQuote {  };

  /**
   * Item ID.
   */
  key itemId : LargeString;

  /**
   * The number of the higher-level item to which this item belongs in a hierarchy.
   */
  parentItemId : LargeString;

  /**
   * Item for Which this Item is an Alternative
   */
  alternativeToItemId : LargeString;

  /**
   * Sales quote item category.
   */
  itemCategory : LargeString;

  /**
   * Short description of the sales quote item.
   */
  itemText : LargeString;

  /**
   * Product of the item.
   */
  product : LargeString;

  /**
   * Product of the item.
   */
  @cds.ambiguous : 'missing on condition?'
  _product : Association to one sap.graph.Product {  };

  /**
   * Material Number Used by Customer.
   */
  soldToPartyProductId : LargeString;

  /**
   * Quantity of the item product.
   */
  quantity : Decimal(22, 6);

  /**
   * Unit of measure of the item quantity.
   */
  quantityUnit : String(3);

  /**
   * Gross Weight.
   */
  grossWeight : Decimal(22, 6);

  /**
   * Gross Weight Unit.
   */
  grossWeightUnit : String(3);

  /**
   * Net Weight.
   */
  netWeight : Decimal(22, 6);

  /**
   * Net Weight Unit.
   */
  netWeightUnit : String(3);

  /**
   * Volume.
   */
  volume : Decimal(22, 6);

  /**
   * Volume Unit.
   */
  volumeUnit : String(3);

  /**
   * Key that uniquely identifies a plant.
   */
  plant : LargeString;

  /**
   * Net Value of the Order Item in Net Amount Currency.
   */
  netAmount : Decimal(22, 6);

  /**
   * Net Amount Currency.
   */
  netAmountCurrency : String(5);

  /**
   * Net Amount Currency.
   */
  @cds.ambiguous : 'missing on condition?'
  _netAmountCurrency : Association to one sap.graph.Currency {  };

  /**
   * Material master record that the system uses as a reference for pricing purposes.
   */
  pricingProduct : LargeString;

  /**
   * Material master record that the system uses as a reference for pricing purposes.
   */
  @cds.ambiguous : 'missing on condition?'
  _pricingProduct : Association to one sap.graph.Product {  };

  /**
   * Commonly used trading terms that comply with the standards established by the International Chamber of Commerce (ICC).
   */
  incotermsClassification : String(3);

  /**
   * Commonly used trading terms that comply with the standards established by the International Chamber of Commerce (ICC).
   */
  @cds.ambiguous : 'missing on condition?'
  _incotermsClassification : Association to one sap.graph.IncotermsClassification {  };

  /**
   * Additional information for the primary Incoterm.
   */
  incotermsLocation : LargeString;

  /**
   * The processing status of the entire sales document.
   */
  processingStatus : LargeString;

  /**
   * Reason for Rejection of Sales Documents.
   */
  cancellationReason : LargeString;

  /**
   * Reason for Rejection of Sales Documents.
   */
  @cds.ambiguous : 'missing on condition?'
  _cancellationReason : Association to one sap.graph.SalesDocumentCancellationReason {  };

  /**
   * Composition of parties.
   */
  @cds.ambiguous : 'missing on condition?'
  parties : Association to many sap.graph.SalesQuote_items_parties {  };

  /**
   * Composition of pricing elements.
   */
  @cds.ambiguous : 'missing on condition?'
  pricingElements : Association to many sap.graph.SalesQuote_items_pricingElements {  };

  /**
   * Composition of texts.
   */
  @cds.ambiguous : 'missing on condition?'
  texts : Association to many sap.graph.SalesQuote_items_texts {  };
};

@cds.persistence.skip : true
entity sap.graph.SalesQuote_items_parties {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.SalesQuote_items {  };

  /**
   * Role of the partner in a sales quote. Roles are for example: Ship To, Sold To, but also Contact.
   */
  key partyRole : String(10);

  /**
   * ID of a Supplier, Customer, Personnel or ContactPerson.
   */
  partyId : LargeString;
};

@cds.persistence.skip : true
entity sap.graph.SalesQuote_items_pricingElements {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.SalesQuote_items {  };

  /**
   * Identifier
   */
  key id : LargeString;

  /**
   * The key that uniquely identifies the condition.
   */
  conditionType : LargeString;

  /**
   * The key that uniquely identifies the condition.
   */
  @cds.ambiguous : 'missing on condition?'
  _conditionType : Association to one sap.graph.SalesPricingConditionType {  };

  /**
   * Condition Category (Examples: Tax, Freight, Price, Cost).
   */
  conditionCategory : LargeString;

  /**
   * Origin of the Condition.
   */
  conditionOrigin : LargeString;

  /**
   * Condition Amount or Percentage.
   */
  rateValue : Decimal(22, 6);

  /**
   * Currency Key.
   */
  rateValueCurrency : String(5);

  /**
   * Currency Key.
   */
  @cds.ambiguous : 'missing on condition?'
  _rateValueCurrency : Association to one sap.graph.Currency {  };

  /**
   * The value, resulting from pricing, for a particular condition, total, or subtotal in a document.
   */
  calculatedAmount : Decimal(22, 6);

  /**
   * Currency Key.
   */
  calculatedAmountCurrency : String(5);

  /**
   * Currency Key.
   */
  @cds.ambiguous : 'missing on condition?'
  _calculatedAmountCurrency : Association to one sap.graph.Currency {  };

  /**
   * Indicates if the condition is active.
   */
  inactivityReason : LargeString;

  /**
   * If this flag is set, the condition has been manually or automatically changed or created.
   */
  isManuallyChanged : Boolean;
};

@cds.persistence.skip : true
entity sap.graph.SalesQuote_items_texts {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.SalesQuote_items {  };

  /**
   * Identifier
   */
  key id : LargeString;

  /**
   * The text ID defines the various types of texts related to a text object.
   */
  textType : LargeString;

  /**
   * Long text.
   */
  text : LargeString;
};

@cds.persistence.skip : true
entity sap.graph.SalesQuote_parties {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.SalesQuote {  };

  /**
   * Role of the partner in a sales quote. Roles are for example: Ship To, Sold To, but also Contact.
   */
  key partyRole : String(10);

  /**
   * ID of a Supplier, Customer, Personnel or ContactPerson.
   */
  partyId : LargeString;
};

@cds.persistence.skip : true
entity sap.graph.SalesQuote_pricingElements {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.SalesQuote {  };

  /**
   * Identifier
   */
  key id : LargeString;

  /**
   * The key that uniquely identifies the condition.
   */
  conditionType : LargeString;

  /**
   * The key that uniquely identifies the condition.
   */
  @cds.ambiguous : 'missing on condition?'
  _conditionType : Association to one sap.graph.SalesPricingConditionType {  };

  /**
   * Condition Category (Examples: Tax, Freight, Price, Cost).
   */
  conditionCategory : LargeString;

  /**
   * Origin of the Condition.
   */
  conditionOrigin : LargeString;

  /**
   * Condition Amount or Percentage.
   */
  rateValue : Decimal(22, 6);

  /**
   * Currency Key.
   */
  rateValueCurrency : String(5);

  /**
   * Currency Key.
   */
  @cds.ambiguous : 'missing on condition?'
  _rateValueCurrency : Association to one sap.graph.Currency {  };

  /**
   * The value, resulting from pricing, for a particular condition, total, or subtotal in a document.
   */
  calculatedAmount : Decimal(22, 6);

  /**
   * Currency Key.
   */
  calculatedAmountCurrency : String(5);

  /**
   * Currency Key.
   */
  @cds.ambiguous : 'missing on condition?'
  _calculatedAmountCurrency : Association to one sap.graph.Currency {  };

  /**
   * Indicates if the condition is active.
   */
  inactivityReason : LargeString;

  /**
   * If this flag is set, the condition has been manually or automatically changed or created.
   */
  isManuallyChanged : Boolean;
};

@cds.persistence.skip : true
entity sap.graph.SalesQuote_texts {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.SalesQuote {  };

  /**
   * Identifier
   */
  key id : LargeString;

  /**
   * The text ID defines the various types of texts related to a text object.
   */
  textType : LargeString;

  /**
   * Long text.
   */
  text : LargeString;
};

@cds.persistence.skip : true
entity sap.graph.WorkforcePerson_addresses {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.WorkforcePerson {  };

  /**
   * Type of Address.
   */
  key type : LargeString;

  /**
   * Country.
   */
  country : String(3);

  /**
   * Country.
   */
  @cds.ambiguous : 'missing on condition?'
  _country : Association to one sap.graph.Country {  };

  /**
   * Region.
   */
  region : LargeString;

  /**
   * County.
   */
  county : LargeString;

  /**
   * City.
   */
  city : LargeString;

  /**
   * Postal Code.
   */
  postalCode : LargeString;

  /**
   * Address Lines.
   */
  addressLines : many LargeString;
  poBoxNumber : LargeString;
  poBoxCountry : String(3);
  @cds.ambiguous : 'missing on condition?'
  _poBoxCountry : Association to one sap.graph.Country {  };
  poBoxRegion : LargeString;
  poBoxCity : LargeString;
  poBoxPostalCode : LargeString;
};

@cds.persistence.skip : true
entity sap.graph.WorkforcePerson_phoneNumbers {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.WorkforcePerson {  };

  /**
   * Type of Telephone Number.
   */
  key type : LargeString;

  /**
   * Telephone number.
   */
  number : LargeString;

  /**
   * Default number.
   */
  isDefault : Boolean;
};

@cds.persistence.skip : true
entity sap.graph.WorkforcePerson_emailAddresses {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.WorkforcePerson {  };

  /**
   * Type of Email Address.
   */
  key type : LargeString;

  /**
   * Email Address.
   */
  address : LargeString;

  /**
   * Default Email Address.
   */
  isDefault : Boolean;
};

@cds.persistence.skip : true
entity sap.graph.WorkAssignment_jobInfo {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.WorkAssignment {  };

  /**
   * Identifier
   */
  key id : LargeString;

  /**
   * Work Assignment Type.
   */
  assignmentType : LargeString;

  /**
   * Job Name.
   */
  job : LargeString;

  /**
   * Job Name.
   */
  @cds.ambiguous : 'missing on condition?'
  _job : Association to one sap.graph.Job {  };

  /**
   * Organizational Unit Assignments.
   */
  orgUnitAssignments : many sap.graph.WorkAssignment_jobInfo_orgUnitAssignments;

  /**
   * Start Date of Work Assignment.
   */
  startDate : Date;

  /**
   * End Date of Work Assignment.
   */
  endDate : Date;
};

@cds.persistence.skip : true
entity sap.graph.TimeSheet_entries {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.TimeSheet {  };

  /**
   * Identifier
   */
  key id : LargeString;

  /**
   * The date the timesheet entry was entered.
   */
  entryDate : Date;

  /**
   * The time the employee or contingent worker started their daily work.
   */
  startTime : Time;

  /**
   * The time the employee or contingent worker ended their daily work.
   */
  endTime : Time;

  /**
   * The total recorded time worked in a day.
   */
  duration : LargeString;
};

@cds.persistence.skip : true
entity sap.graph.SalesOpportunity_items {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.SalesOpportunity {  };
  key itemId : LargeString;
  itemText : LargeString;
  product : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _product : Association to one sap.graph.Product {  };
  quantity : Decimal(22, 6);
  quantityUnit : String(3);
  netAmount : Decimal(22, 6);
  netAmountCurrency : String(5);
  @cds.ambiguous : 'missing on condition?'
  _netAmountCurrency : Association to one sap.graph.Currency {  };
  processingStatus : LargeString;
  @cds.ambiguous : 'missing on condition?'
  texts : Association to many sap.graph.SalesOpportunity_items_texts {  };
};

@cds.persistence.skip : true
entity sap.graph.SalesOpportunity_items_texts {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.SalesOpportunity_items {  };

  /**
   * Identifier
   */
  key id : LargeString;
  textType : LargeString;
  text : LargeString;
};

@cds.persistence.skip : true
entity sap.graph.SalesOpportunity_salesTeam {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.SalesOpportunity {  };

  /**
   * Identifier
   */
  key id : LargeString;
  teamRole : LargeString;
  teamMember : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _teamMember : Association to one sap.graph.BusinessPartner {  };
};

@cds.persistence.skip : true
entity sap.graph.SalesOpportunity_competingParties {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.SalesOpportunity {  };

  /**
   * Identifier
   */
  key id : LargeString;
  partyRole : LargeString;
  competitor : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _competitor : Association to one sap.graph.BusinessPartner {  };
};

@cds.persistence.skip : true
entity sap.graph.SalesOpportunity_referenceDocuments {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.SalesOpportunity {  };

  /**
   * Identifier
   */
  key id : LargeString;
  documentRole : LargeString;
  documentType : LargeString;
  documentId : LargeString;
};

@cds.persistence.skip : true
entity sap.graph.SalesOpportunity_texts {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.SalesOpportunity {  };

  /**
   * Identifier
   */
  key id : LargeString;
  textType : LargeString;
  text : LargeString;
};

@cds.persistence.skip : true
entity sap.graph.Equipment_warranties {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.Equipment {  };

  /**
   * Warranty type.
   */
  key warrantyType : LargeString;

  /**
   * Warranty ID.
   */
  warrantyId : LargeString;

  /**
   * Start date.
   */
  startDate : Date;

  /**
   * End date.
   */
  endDate : Date;
};

@cds.persistence.skip : true
entity sap.graph.AppointmentActivity_parties {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.AppointmentActivity {  };

  /**
   * Identifier
   */
  key id : LargeString;
  partyRole : LargeString;
  partner : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _partner : Association to one sap.graph.BusinessPartner {  };
};

@cds.persistence.skip : true
entity sap.graph.AppointmentActivity_texts {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.AppointmentActivity {  };

  /**
   * Identifier
   */
  key id : LargeString;
  textType : LargeString;
  text : LargeString;
};

@cds.persistence.skip : true
entity sap.graph.SalesLead_items {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.SalesLead {  };
  key itemId : LargeString;
  itemText : LargeString;
  product : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _product : Association to one sap.graph.Product {  };
  quantity : Decimal(22, 6);
  quantityUnit : String(3);
};

@cds.persistence.skip : true
entity sap.graph.SalesLead_salesAndMarketingTeam {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.SalesLead {  };

  /**
   * Identifier
   */
  key id : LargeString;
  teamRole : LargeString;
  teamMember : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _teamMember : Association to one sap.graph.BusinessPartner {  };
};

@cds.persistence.skip : true
entity sap.graph.SalesLead_texts {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.SalesLead {  };

  /**
   * Identifier
   */
  key id : LargeString;
  textType : LargeString;
  text : LargeString;
};

@cds.persistence.skip : true
entity sap.graph.ServiceRequest_parties {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.ServiceRequest {  };

  /**
   * Identifier
   */
  key id : LargeString;
  partyRole : LargeString;
  partner : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _partner : Association to one sap.graph.BusinessPartner {  };
};

@cds.persistence.skip : true
entity sap.graph.ServiceRequest_referenceObjects {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.ServiceRequest {  };

  /**
   * Identifier
   */
  key id : LargeString;
  functionalLocation : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _functionalLocation : Association to one sap.graph.FunctionalLocation {  };
  equipment : LargeString;
  @cds.ambiguous : 'missing on condition?'
  _equipment : Association to one sap.graph.Equipment {  };
  isMainObject : Boolean;
};

@cds.persistence.skip : true
entity sap.graph.ServiceRequest_referenceDocuments {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.ServiceRequest {  };

  /**
   * Identifier
   */
  key id : LargeString;
  documentRole : LargeString;
  documentType : LargeString;
  documentId : LargeString;
};

@cds.persistence.skip : true
entity sap.graph.ServiceRequest_texts {
  @cds.ambiguous : 'missing on condition?'
  up_ : Association to one sap.graph.ServiceRequest {  };

  /**
   * Identifier
   */
  key id : LargeString;
  textType : LargeString;
  text : LargeString;
};

type sap.graph.WorkAssignment_jobInfo_orgUnitAssignments {

  /**
   * Organizational Level.
   */
  orgLevel : LargeString;

  /**
   * Organizational Unit.
   */
  orgUnit : LargeString;
};

@cds.external : true
service sap.graph {};

