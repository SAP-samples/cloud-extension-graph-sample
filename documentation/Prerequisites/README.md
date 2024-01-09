# Prerequisites

This section contains the prerequisites that you would have to get started. It’s likely that you have some of the software already installed, so you can just skip those steps.

## Systems and Accounts

* [SAP S/4HANA Cloud](https://help.sap.com/docs/SAP_S4HANA_CLOUD) system
* [Enterprise global account](https://help.sap.com/products/BTP/65de2977205c403bbc107264b8eccf4b/8ed4a705efa0431b910056c0acdbf377.html?locale=en-US#loioc165d95ee700407eb181770901caec94) in SAP BTP with SAP BTP, Cloud Foundry enrivonment enabled. Trial accounts in SAP BTP are not supported.

## For Local Development

* [Node.js](https://nodejs.org/en/download/) - find the latest Node.js version supported by [CAP](https://cap.cloud.sap/docs/advanced/troubleshooting#node-version)
* [Cloud Foundry Command Line Interface (CLI)](https://github.com/cloudfoundry/cli#downloads)
* [Visual Studio Code](https://code.visualstudio.com/download) or another suitable IDE or editor of your choice
* [SQLite](https://sqlite.org/download.html) (for Windows only). Find the steps how to install it in the CAP documentation in section [How Do I Install SQLite](https://cap.cloud.sap/docs/advanced/troubleshooting#how-do-i-install-sqlite-on-windows).

## On SAP BTP Side

* [Subaccount](https://help.sap.com/products/BTP/65de2977205c403bbc107264b8eccf4b/8ed4a705efa0431b910056c0acdbf377.html?locale=en-US#loio8d6e3a0fa4ab43e4a421d3ed08128afa) in SAP BTP
* Cloud Foundry Space in SAP BTP


### Services in SAP BTP and Entitlements

The application requires the following set of SAP BTP [Entitlements and Quotas](https://help.sap.com/products/BTP/65de2977205c403bbc107264b8eccf4b/00aa2c23479d42568b18882b1ca90d79.html?locale=en-US):

| Service                           | Plan       | Number of Instances |
|-----------------------------------|------------|:-------------------:|
| Event Mesh                        | default    |          1          |
| SAP HANA Schemas & HDI Containers | hdi-shared |          1          |
| SAP HANA Cloud                    | hana       |          1          |
| Cloud Foundry Runtime             | MEMORY     |          2          |
| SAP Graph                         | api        |          1          |
| SAP S/4HANA Cloud Extensibility   | api-access |          1          |
| SAP S/4HANA Cloud Extensibility   | messaging  |          1          |
| SAP Integration Suite             | enterprise_agreement |1          |


Optional Subscriptions:

| Service                           | Plan       | Number of Instances |
|-----------------------------------|------------|:-------------------:|
|SAP Business Application Studio	|standard    |         1           |
|Event Mesh	                        |standard    |         1           |


[SAP Business Application Studio](https://help.sap.com/products/SAP%20Business%20Application%20Studio?locale=en-US&version=Cloud) offers a modern development environment tailored for efficient development of business applications for the SAP Intelligent Enterprise.

[SAP Event Mesh](https://help.sap.com/viewer/product/SAP_EM/Cloud/en-US) is a fully managed cloud service that allows applications to communicate through asynchronous events. Create responsive applications that work independently and participate in event-driven business processes across your business ecosystem for greater agility and scalability.

## On SAP HANA Cloud Side

Make sure that you have an instance of SAP HANA database in your space. For more details, see section [Create an SAP HANA Database Instance Using SAP HANA Cloud Central](https://help.sap.com/docs/HANA_CLOUD/9ae9104a46f74a6583ce5182e7fb20cb/92c59db648b940f48105d62a34f099fc.html) in the SAP HANA Cloud documentation.

## On SAP S/4HANA Cloud Side

Make sure you have the following roles assigned to your user in the SAP S/4HANA Cloud system:

    SAP_BR_ADMINISTRATOR (Administrator)

    SAP_BR_BPC_EXPERT (Configuration Expert) including catalogs

        SAP_CORE_BC_XBE (Enterprise Event Enablement) and
        SAP_CORE_BC_COM (Communication Management)

    BR_BUPA_MASTER_SPECIALIST (Master Data Specialist - Business Partner Data)

    BR_EMPLOYEE (Employee)

## On SAP Sales Cloud Side

Make sure you have the **Administrator** role assigned to your user in the SAP Sales Cloud system.







