# Build a Side-by-Side Extension Application Connecting to the Intelligent Enterprise using SAP Graph
## Description

Extend SAP S/4HANA Cloud on the SAP Business Technology Platform using state of the art methodologies and technologies. Put an event-driven architecture into action, use the SAP Cloud Application Programming Model (CAP) for building on SAP S/4HANA Cloud events and use SAP Graph to consume unified APIs to retrieve all the required informations.

The main intent of this scenario is to complement an existing business process in an SAP solution, i.e. enhancing SAP S/4HANA Cloud with additional business process steps. This involves adding major logic and/or additional data and goes beyond simple UI changes. 

This scenario showcases:

- Building a side-by-side extension to SAP S/4HANA Cloud
- Setting up Eventing and consuming events from SAP S/4HANA Cloud via [SAP Event Mesh](https://help.sap.com/viewer/bf82e6b26456494cbdd197057c09979f/Cloud/en-US/df532e8735eb4322b00bfc7e42f84e8d.html)
- Consuming data via API calls using [SAP Graph](https://help.sap.com/viewer/84bbf6acb5384861add4cb6939bef647/Beta/en-US)
- Developing an application on SAP Business Technology Platform using the [SAP Cloud Application Programming Model(CAP)](https://cap.cloud.sap/docs/)
- Implementing a SAP Fiori Elements UI

## Business Scenario

In specific focus regions, we would like to follow up with newly created customers or existing customers that have had their data updated in our SAP S/4HANA Cloud backend. External call center employees should do this follow up for us by contacting relevant customers by phone. At the same time, the call center employees have no access to our SAP S/4HANA system. We therefore provide a custom built extension application that is specifically designed and optimized for the task and that is supplied with relevant data in real time using an event-driven approach. 

![georel](./documentation/images/app.png)

**Current Position - What is the challenge?**

- Business Partner data available only in SAP S/4HANA system
- Call center personnel needs SAP S/4HANA access for their work
- No custom UI for specific geo marketing use case

**Destination - What is the outcome?**

- Changes in S/4HANA communicated via events in real time to extension application
- Custom extension application works independently from SAP S/4HANA
- Call center personnel only needs access to custom app

**Development Challenges**
- Developing SAP extension apps that works with multiple SAP systems require mastering a broad set of skills for even the simplest data queries, and the applications you develop are sensitive to the smallest product and landscape configuration changes.

**Solution**
- SAP Graph!

## Architecture

### Solution Diagram

The extension application is developed using the SAP Cloud Application programming Model (CAP) and runs on the SAP Business Technology Platform. It consumes platform services like SAP Event Mesh and the SAP Graph Services. The events generated in SAP S/4HANA Cloud are inserted into an SAP Event Mesh queue created by CAP. The application consumes these events and inserts relevant business partners into the local database. The extensions application uses SAP Graph APIs to read Business Partner data from the SAP S/4HANA Cloud system. 

![solution diagram](./documentation/images/solutiondiagram.png)

## Requirements
* SAP S/4HANA Cloud system (release 1905 or newer)
* SAP Business Technology Platform Cloud Foundry global account (trial accounts are not supported)

### For local development you would require the following:
* [Node js](https://nodejs.org/en/download/)
* [Cloud Foundry Command Line Interface (CLI)](https://github.com/cloudfoundry/cli#downloads)
* [Visual Studio Code](https://code.visualstudio.com/download) or another suitable IDE or editor of your choice
* [SQLite ](https://sqlite.org/download.html)

### Entitlements

The application requires below set of SAP Business Technology Platform Entitlements/Quota

| Service                           | Plan       | Number of Instances |
|-----------------------------------|------------|:-------------------:|
| Event Mesh                        | default    |          1          |
| SAP HANA Schemas & HDI Containers | hdi-shared |          1          |
| SAP HANA Cloud                    | hana       |          1          |
| Cloud Foundry runtime             | MEMORY     |          1          |
| SAP Graph                         | beta       |          1          |
| Destination Service               | lite       |          1          |
| SAP S/4HANA Cloud Extensibility   | api-access |          1          |
| SAP S/4HANA Cloud Extensibility   | messaging  |          1          |


## Configuration

### Step 1: [Check Prerequisites](./documentation/mission/Prerequisites/README.md)

### Step 2: [Setup SAP Business Technology Platform and S/4HANA Cloud](./documentation/mission/Setup%20Cloud%20Platform%20and%20S4HANA/README.md)

### Step 3: [Setup SAP Graph](./documentation/mission/GraphSetup/README.md)

### Step 4: [Prepare Development Environment and Install Application](./documentation/mission/Development%20Environment%20and%20Application/README.md)

### Step 5: [Configure and Run Application](documentation/mission/Configure%20and%20Run%20Example%20Application/README.md)

### Step 6: [Demo Script](documentation/mission/Demo%20Script)

## Known Issues

No known issues.

## How to obtain support

[Create an issue](https://github.com/SAP-samples/cloud-extension-graph-sample/issues) in this repository if you find a bug or have questions about the content.
 
For additional support, [ask a question in SAP Community](https://answers.sap.com/questions/ask.html).

## License
Copyright (c) 2021 SAP SE or an SAP affiliate company. All rights reserved. This project is licensed under the Apache Software License, version 2.0 except as noted otherwise in the [LICENSE](LICENSES/Apache-2.0.txt) file.
