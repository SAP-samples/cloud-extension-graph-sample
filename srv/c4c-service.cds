using {sap.c4c as cxsales} from './external/sap.c4c';

service c4cService {

    @cds.persistence.skip
    entity Customer as projection on cxsales.CorporateAccountCollection {
        key AccountID as accountId,
        ObjectID as objectId,
        Name as name,
        RoleCode as roleCode,
        City as city,
        CountryCode as country,
        Street as street,
        StreetPostalCode as postalCode,
        LanguageCode as language,
        Email as email,
        Phone as phone
    }

    @cds.persistence.skip
    entity Mapper as projection on cxsales.ObjectIdentifierMappingCollection {
        key LocalObjectID as c4cObjectId,
        RemoteBusinessSystemID as systemId,
        RemoteObjectID as s4ObjectId,
        RemoteIdentifierDefiningSchemeCode as schemeCode
    }
}
