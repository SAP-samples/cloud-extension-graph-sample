using FioriService as service from '../../srv/fiori-service';

annotate service.DeliveryApp with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'customerId',
            Value : customerId,
        },
        {
            $Type : 'UI.DataField',
            Label : 'status',
            Value : status,
        },
        {
            $Type : 'UI.DataField',
            Label : 'expectedDelivery',
            Value : expectedDelivery,
        },
        {
            $Type : 'UI.DataField',
            Label : 'deliveryPartner',
            Value : deliveryPartner,
        },
        {
            $Type : 'UI.DataField',
            Label : 'title',
            Value : title,
        },
    ]
);
annotate service.DeliveryApp with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'customerId',
                Value : customerId,
            },
            {
                $Type : 'UI.DataField',
                Label : 'status',
                Value : status,
            },
            {
                $Type : 'UI.DataField',
                Label : 'expectedDelivery',
                Value : expectedDelivery,
            },
            {
                $Type : 'UI.DataField',
                Label : 'deliveryPartner',
                Value : deliveryPartner,
            },
            {
                $Type : 'UI.DataField',
                Label : 'title',
                Value : title,
            },
            {
                $Type : 'UI.DataField',
                Label : 'criticality',
                Value : criticality,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
