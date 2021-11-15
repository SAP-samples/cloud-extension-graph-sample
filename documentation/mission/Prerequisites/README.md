# Prerequisites

## Requirements for local development

* [Node js](https://nodejs.org/en/download/)
* [Cloud Foundry Command Line Interface (CLI)](https://github.com/cloudfoundry/cli#downloads)
* [Visual Studio Code](https://code.visualstudio.com/download) or another suitable IDE or editor of your choice
* [SQLite ](https://sqlite.org/download.html)

## Requirements in BTP

* SAP Business Technology Platform Cloud Foundry global account (trial accounts are not supported)
* SAP Business Technology Platform subaccount
* SAP Business Technology Platform space


### Entitlements

The application requires below set of SAP Business Technology Platform Entitlements/Quota

| Service                           | Plan       | Number of Instances |
|-----------------------------------|------------|:-------------------:|
| Event Mesh                        | default    |          1          |
| SAP HANA Schemas & HDI Containers | hdi-shared |          1          |
| SAP HANA Cloud                    | hana       |          1          |
| Cloud Foundry runtime             | MEMORY     |          1          |
| SAP Graph                         | beta       |          1          |
| SAP S/4HANA Cloud Extensibility   | api-access |          1          |
| SAP S/4HANA Cloud Extensibility   | messaging  |          1          |


Optional Subscriptions:

| Service                           | Plan       | Number of Instances |
|-----------------------------------|------------|:-------------------:|
|SAP Business Application Studio	|standard    |         1           |
|Event Mesh	                        |standard    |         1           |


SAP Business Application Studio provides you the development environment where you can edit, test, debug the code.
Event Mesh subscription lets you see the queues created, consume the messages etc. 

## Requirements in S/4Hana Cloud

The following prerequisites need to be fulfilled / below steps are expected to have been performed before being able to execute the main steps of this mission:

- SAP S/4HANA Cloud system (release 1905 or higher)

Please make sure you have the following roles assigned to your user in the SAP S/4HANA
Cloud system:

    SAP_BR_ADMINISTRATOR (Administrator)

    SAP_BR_BPC_EXPERT (Configuration Expert) including catalogs 
        
        SAP_CORE_BC_XBE (Enterprise Event Enablement) and 
        SAP_CORE_BC_COM (Communication Management)  
    
    BR_BUPA_MASTER_SPECIALIST (Master Data Specialist - Business Partner Data)
    
    BR_EMPLOYEE (Employee)






