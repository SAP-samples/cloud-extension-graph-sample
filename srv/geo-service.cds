using my.georel.graph as my from '../db/data-model';
using { sap.s4 as external } from './external/sap.s4';

service GeoService  @(requires:'authenticated-user') {

   @odata.draft.enabled
    entity CustomerProcesses 
     @(restrict: [ 
  { grant: ['READ', 'UPDATE', 'DELETE'], where: 'customerCountry = $user.Country' } ])
  as projection on my.CustomerProcesses ;
  
    entity Conditions @readonly as projection on my.Conditions;
   
    entity Status @readonly as projection on my.Status;

    entity BusinessPartner as projection on external.A_BusinessPartner {
        key BusinessPartner         as customerId,
            BusinessPartnerFullName as customerName,
            Language                as customerLanguage,
            to_BusinessPartnerAddress
    }

    entity BusinessPartnerAddress as projection on external.A_BusinessPartnerAddress {
        key AddressID       as addressId,
        key BusinessPartner as customerId,
            Country         as customerCountry,
            CityName        as customerCity,
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

}