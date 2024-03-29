using GeoService as my from '../srv/geo-service';

annotate my.CustomerProcesses with @(

  UI.LineItem: [ 
    {$Type: 'UI.DataField', Value: customerId},
    {$Type: 'UI.DataField', Value: customerName},
    {$Type: 'UI.DataField', Value: customerCondition_conditionId, Criticality:  customerCondition.criticality}, // using foreign key (generated by CAP)
    {$Type: 'UI.DataField', Value: status_statusId, Criticality: status.criticality } ,
	{$Type: 'UI.DataField', Value: serviceAgents_objectID },
	{$Type: 'UI.DataField', Value: cxsalesId}  
  ],

  UI.HeaderInfo: {
    Title: { Value: customerName },
    Description: { Value: customerCountry},
    TypeName:'{i18n>type_customer}', 
    TypeNamePlural:'{i18n>type_customer_plural}',
    TypeImageUrl: 'sap-icon://customer'
  },
  
  UI.Identification: [
    {$Type: 'UI.DataField', Value: processId},
    {$Type: 'UI.DataField', Value: backendEventTime},
  ],

  
);

annotate my.Logistics with @(

  UI.LineItem: [ 
    {$Type: 'UI.DataField', Value: displayId},
    {$Type: 'UI.DataField', Value: title},
	{$Type: 'UI.DataField', Value: deliveryPartner},
	{$Type: 'UI.DataField', Value: expectedDelivery},
	{$Type: 'UI.DataField', Value: status, Criticality: criticality}
  ],

  UI.HeaderInfo: {
    Title: { Value: displayId },
    Description: { Value: title},
    TypeName:'{i18n>type_logistics}', 
    TypeNamePlural:'{i18n>type_logistics_plural}',
    TypeImageUrl: 'sap-icon://customer'
  },
  
  UI.Identification: [
    {$Type: 'UI.DataField', Value: displayId},
    {$Type: 'UI.DataField', Value: status}
  ],

  
);

annotate my.Logistics with {
	displayId @title: '{i18n>shipment_id}';
	title @title: '{i18n>shipment_title}';
	expectedDelivery @title: '{i18n>expectedDelivery}';
	deliveryPartner @title: '{i18n>deliveryPartner}';
	status @title: '{i18n>shipment_status}';
}

annotate my.Logistics @(
    Capabilities: {
        Insertable : false
});

annotate my.CustomerProcesses @(
    Capabilities: {
        Insertable : false
});

annotate my.CustomerProcesses with {   
  processId @readonly @title : '{i18n>title_process_id}' @UI.HiddenFilter;
  customerId @readonly @title : '{i18n>title_customer_id}';
  customerName @readonly @title : '{i18n>title_customer_name}' ;
  customerPhone @readonly @title : '{i18n>title_phone_number}'  @UI.HiddenFilter;
  customerMail @readonly @title : '{i18n>title_e_mail}'  @UI.HiddenFilter;
  customerCity @readonly @title : '{i18n>title_city}'  @UI.HiddenFilter;
  customerCountry @readonly @title : '{i18n>title_country}'  @UI.HiddenFilter;
  customerLanguage @readonly @title : '{i18n>title_language}'  @UI.HiddenFilter;
  customerCondition @title : '{i18n>title_customer_condition}'	@Common.Text: customerCondition.name; // nav prop
  comment @title : '{i18n>title_comment}' @UI.HiddenFilter@UI.MultiLineText;
  status  @title : '{i18n>title_status}' @Common.Text: status.name; // nav prop
  backendUrl @readonly @title : '{i18n>title_backend_url}'  @UI.HiddenFilter @UI.MultiLineText; 
  backendEventTime @readonly @title : '{i18n>title_event_time}' @UI.HiddenFilter;
  backendEventType @readonly @title : '{i18n>title_event_type}'  @UI.HiddenFilter;
  backendEventSource @readonly @title : '{i18n>title_event_source}'  @UI.HiddenFilter;

  deliveryPoint @title: '{i18n>delivery_point}';
  salesEmployee @title: '{i18n>account_team}';
  salesEmployee_empID @title: '{i18n>account_team}';
  cxsalesId @readonly @title: '{i18n>cxsalesId}';
  cxsalesObjectId @readonly @title: '{i18n>cxsalesObjectId}';
  
};

annotate my.Conditions with @(
	cds.odata.valuelist,
	UI: {
    LineItem: [
      {Value: name}, // both properties are mix-in from cds.common.CodeList
      {Value: descr} 
		],
		HeaderInfo: {
			TypeName: '{i18n>type_condition}',
			TypeNamePlural: '{i18n>type_condition_plural}',
      Title: {Value: name },
      Description: {Value: name }
		},
    Identification: [name, descr]
	}	
){	
  conditionId	@title : '{i18n>condition_id}'  @UI.HiddenFilter @Common.Text: { Text: name, TextArrangement: #TextOnly };	
  name		@title : '{i18n>condition_name}' ; //overriding default title from cds.common.CodeList
  descr		@title : '{i18n>condition_description}' ;  
};

annotate my.Status with @(
	cds.odata.valuelist,
	UI: {
    LineItem: [
      {Value: name}, 
      {Value: descr} 
		],
		HeaderInfo: {
			TypeName: '{i18n>type_status}',
			TypeNamePlural: '{i18n>type_status_plural}',
      Title: {Value: name },
      Description: {Value: name }
		},
    Identification: [name, descr]
	}	
){	
  statusId	@title : '{i18n>status_id}'  @UI.HiddenFilter @Common.Text: { Text: name, TextArrangement: #TextOnly };	
  name		@title : '{i18n>status_name}' ;
  descr		@title : '{i18n>status_description}' ; 
};

annotate my.CustomerProcesses with {
	salesEmployee @Common : { ValueList : {
		$Type : 'Common.ValueListType',
		CollectionPath : 'EmployeeCollection',
		
		Parameters : [
			{
				$Type : 'Common.ValueListParameterInOut',
				LocalDataProperty : salesEmployee_empID,
				ValueListProperty : 'empID',
				
			},
			{
				$Type : 'Common.ValueListParameterDisplayOnly',
				ValueListProperty : 'name',
			},
			{
				$Type : 'Common.ValueListParameterOut',
				ValueListProperty : 'email',
				LocalDataProperty:  salesEmployee.email
			},
			{
				$Type : 'Common.ValueListParameterDisplayOnly',
				ValueListProperty : 'userID',
			},
		],
	}, 
	TextArrangement : #TextFirst,Text : salesEmployee.name, 
	} 
}

annotate my.CustomerProcesses @(
     Common.SideEffects #AccountTeamChanged : {
          SourceProperties : [
               salesEmployee_empID
          ],
          TargetEntities : [
               salesEmployee.email
          ]
     }
);

annotate my.EmployeeCollection with {
    empID @Common.Text : {
            $value : name,
            ![@UI.TextArrangement] : #TextFirst,
        }
};
annotate my.EmployeeCollection with {
	email @title: 'Account Team Email' @readonly;
}
// annotate my.EmployeeCollection with {
// 	objectID @Common : {
// 		ValueList : {
//         $Type : 'Common.ValueListType',
//         CollectionPath : 'EmployeeCollection',
//         Parameters : [
// 			{
//                 $Type : 'Common.ValueListParameterInOut',
//                 LocalDataProperty : objectID,
//                 ValueListProperty : 'objectID'
//             }
// 		],
// 		}
// 	}
// };



using GeoService as service from '../srv/geo-service';


annotate service.CustomerProcesses with @(
	UI: {		
		SelectionFields: [ customerId, customerCondition_conditionId, status_statusId ], 

		HeaderFacets: [
			{$Type: 'UI.ReferenceFacet', Label: '{i18n>header_facet_relations}', Target: '@UI.FieldGroup#BuPaHeader'},
		],
		Facets: [
			{$Type: 'UI.ReferenceFacet', Label: '{i18n>facet_label_customer_details}', Target: '@UI.FieldGroup#BuPaInfo'},
			{$Type: 'UI.ReferenceFacet', Label: '{i18n>facet_label_manage_relations}', Target: '@UI.FieldGroup#Relation'},
			{$Type: 'UI.ReferenceFacet', Label: '{i18n>facet_label_technical_info}', Target: '@UI.FieldGroup#TechnicalData'},
			{$Type: 'UI.ReferenceFacet', Label: '{i18n>facet_label_shipment}', Target: '_logistics/@UI.LineItem'}		
		],
		FieldGroup#BuPaHeader: {
			Data: [ {Value: status.name, Criticality: status.criticality} ]   
		},
		FieldGroup#BuPaInfo: {
			Data: [
				{Value: customerName},
				{Value: customerId},
				{Value: cxsalesId},				
				{Value: customerCountry},
				{Value: customerCity},
				{Value: customerPhone},
				{Value: customerMail},
				{Value: customerLanguage},
				{Value: comment}
			]
		},
		FieldGroup#Relation: {
			Data: [
				{Value: customerCondition_conditionId, Criticality: customerCondition.criticality}, 
				{Value: status_statusId, Criticality: status.criticality},
				{Value: salesEmployee_empID}, // using foreign key in case of navigation
				{Value: salesEmployee.email},
				{Value: deliveryPoint},
				{$Type: 'UI.DataField', Value: cxsalesId}  
			]
		},
		FieldGroup#TechnicalData: {
			Data: [
        {Value: customerId},
				{Value: processId},
				{Value: backendEventTime},
				{Value: backendEventType},
				{Value: backendEventSource},
				{Value: backendUrl},
				{Value: cxsalesId},
				{Value: cxsalesObjectId}
			]
		}
	}
);