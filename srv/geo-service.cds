using my.georel.graph as my from '../db/data-model';
using { sap.s4 as external } from './external/sap.s4';

using {sap.graph as graph } from './external/sap.graph';

using {sap.c4c as cxsales} from './external/sap.c4c';

using {custom.ns as delivery} from './external/custom.ns';

service GeoService  @(requires:'authenticated-user') {

    extend my.CustomerProcesses with {
        salesEmployee: Association to EmployeeCollection;
    }
   @odata.draft.enabled
    entity CustomerProcesses 
     @(restrict: [ 
        { grant: ['READ', 'UPDATE', 'DELETE'], 
          where: 'customerCountry = $user.Country' 
        } 
    ])
    as projection on my.CustomerProcesses ;
  
    entity Conditions @readonly as projection on my.Conditions;
   
    entity Status @readonly as projection on my.Status;

    entity Logistics as projection on my.Logistics;

    entity BusinessPartner as projection on external.A_BusinessPartner {
        key BusinessPartner         as customerId,
            BusinessPartnerFullName as customerName,
            Language                as customerLanguage,
            to_BusinessPartnerAddress,
            to_Customer
    }

    entity BusinessPartnerAddress as projection on external.A_BusinessPartnerAddress {
        key AddressID       as addressId,
        key BusinessPartner as customerId,
            Country         as customerCountry,
            CityName        as customerCity,
            StreetName      as customerStreet,
            PostalCode      as customerPostalCode,
            Language        as customerLanguage,
            to_EmailAddress,
            to_PhoneNumber
    }

    entity EmailAddress as projection on external.A_AddressEmailAddress {
        key AddressID    as addressId,
            EmailAddress as email
    }

    entity PhoneNumber as projection on external.A_AddressPhoneNumber {
        key AddressID   as addressId,
            PhoneNumber as customerPhone
    }

   entity CorporateAccount as projection on graph.CorporateAccount {
       id,
       displayId,
       name,
       formattedName,
       addresses,
       language,
       _s4 : redirected to BusinessPartner,
       _c4c
   }
   entity CorporateAccountAddress as projection on graph.CorporateAccount_addresses{
        phoneNumbers,
       street,
       city,
       country,
       postalCode,
       
       emailAddresses
   }

   entity CorporateAccountPhoneNumbers as projection on graph.CorporateAccount_addresses_phoneNumbers {
       number
   }

   entity Customer as projection on external.A_Customer {
    Customer,
    to_CustomerUnloadingPoint
   }

   entity CustomerUnloadingPoint as projection on external.A_CustomerUnloadingPoint {
       Customer,
       UnloadingPointName,
       IsDfltBPUnloadingPoint

   }

   entity EmployeeCollection as projection on cxsales.EmployeeCollection {
       ObjectID as objectID,
       key EmployeeID as empID,
       UserID as userID,
       BusinessPartnerFormattedName as name,
       CountryCode as country,
       City as city,
       MobilePhoneNumber as phone,
       Email as email
   }

   entity LogisticsPartner as projection on delivery.Logistics;
    

}