# Set Up SAP Graph

SAP Graph is an API to use the data of the SAP Intelligent Enterprise. It offers an API of connected entities from the SAP domain of business processes. As a service in SAP BTP, SAP Graph is compatible with SAP Cloud Application Programming Model (CAP) extension solutions and events managed using SAP Event Mesh.

## Initial Setup

To use SAP Graph in SAP BTP, a service instance needs to be created in the space of your SAP BTP Subaccount. It requires administrator authorization of SAP BTP.

1. In your SAP BTP subaccount, navigate to **Services** &rarr; **Instances and Subscriptions** in the left-hand pane. A new **Instance or Subscription** wizard opens.

2. Enter the basic information for your instance.

3. In the **Service** dropdown menu, select **SAP Graph**.

4. In the **Plan** dropdown menu, select **free**.

5. In the **Instance Name** field, enter a name for your instance.

6. Choose **Create**.

![Graph Instance](./images/graphInstance.png)

7. Create a new service key for your SAP Graph instance.

![Graph Service Key](./images/serviceKey.png)

8. Download the service key file.

![Download Key](./images/downloadKey.png)

9. To configure SAP Graph, your user must have the `Graph_Key_User.` authorization role. To assign this role to a user, you must create a role collection, add the role of `Graph_Key_User.`, and then assign it to the relevant user. See [Create Role Collection and Add Roles](https://help.sap.com/docs/help/468c925d1276476680b47d94548174a1/2660d67a0d6149c4910fb27513ffb387.html) in the SAP Graph documentation.

10. Share the previously downloaded service with the relevant user.

## SAP Graph Configuration

The graphctl command line tool is used to configure your SAP Graph tenant. See [Install graphctl](https://help.sap.com/viewer/84bbf6acb5384861add4cb6939bef647/PROD/en-US/b1b729334aae4021870374237016516e.html) for more details.

1. Install graphctl:

  ```
  npm install -g @sap/graph-toolkit
  ```

  > To check that the installation was successful, execute `graphctl --help` in the command line window. You should see a list of all commands that graphctl supports.

2. To use the tool, you have to log in by using the service key shared by your administrator:

  ```
  graphctl login [-f <service-key.json>]
  ```

<!-- This feature does not work with destination created using SAP S/4HANA Cloud Extensibility service. Will be supported in future by SAP Graph.

3. Generate the configuration file:

  ```
  graphctl generate config [-f <config.jsonc>]
  ```
-->

3. Create a new file named **config.json** and copy the following configuration into it. Ensure that correct destination name (created prior using the SAP S/4HANA Cloud Extensibility service) is specified in the configuration.

```
{
  "businessDataGraphIdentifier": "v1",
  "graphModelVersion": "^v3",
  "extensions":["logistics-extension"],
  "dataSources": [
    {
      "name": "s4",
      "services": [
        {
          "destinationName": "bupa",
          "path": "sap/opu/odata/sap/API_BUSINESS_PARTNER"
        }
      ]
    },
    {
      "name": "c4c",
      "services": [
        {
          "destinationName": "graph-c4c-dest"
        }
      ]
    },
    {
        "name": "logistics",
        "services":[
          {
            "destinationName": "logistics-partner"
          }
        ],
        "namespace": "custom.logistics"
    }
  ],
  "locatingPolicy": {
    "cues": [],
    "rules": [
      {
        "name": "sap.s4.*",
        "leading": "s4",
        "local": []
      },
      {
        "name": "sap.c4c.*",
        "leading": "c4c",
        "local": []
      },
      {
        "name": "sap.graph.*",
        "leading": "s4",
        "local": [
          "c4c"
        ]
      },
      {
        "name": "custom.logistics.*",
        "leading": "logistics",
        "local": [
          "s4"
        ]
      },
      {
        "name": "custom.ns.*",
        "leading": "logistics",
        "local": [
          "s4"
        ]
      },
      {
        "name": "sap.graph.AppointmentActivity",
        "leading": "c4c"
      },
      {
        "name": "sap.graph.ContactPerson",
        "leading": "c4c",
        "local": [
          "s4"
        ]
      },
      {
        "name": "sap.graph.CorporateAccount",
        "leading": "c4c",
        "local": [
          "s4"
        ]
      },
      {
        "name": "sap.graph.Country",
        "leading": "c4c"
      },
      {
        "name": "sap.graph.Currency",
        "leading": "c4c"
      },
      {
        "name": "sap.graph.Customer",
        "leading": "c4c",
        "local": [
          "s4"
        ]
      },
      {
        "name": "sap.graph.CustomerGroup",
        "leading": "c4c"
      },
      {
        "name": "sap.graph.DistributionChannel",
        "leading": "c4c"
      },
      {
        "name": "sap.graph.Division",
        "leading": "c4c"
      },
      {
        "name": "sap.graph.Equipment",
        "leading": "c4c"
      },
      {
        "name": "sap.graph.FunctionalLocation",
        "leading": "c4c"
      },
      {
        "name": "sap.graph.IncotermsClassification",
        "leading": "c4c"
      },
      {
        "name": "sap.c4c.IndividualCustomerCollection",
        "leading": "c4c",
        "mapped": [
          {
            "referenceQualifier": "s4",
            "strategy": "externalIdInReferencedSystem",
            "params": [
              {
                "name": "externalKey",
                "value": "ExternalID",
                "params": []
              }
            ]
          }
        ],
        "local": [],
        "cues": []
      },
      {
        "name": "sap.s4.A_BusinessPartner",
        "leading": "s4",
        "mapped": [
          {
            "referenceQualifier": "c4c",
            "strategy": "externalIdInReferencingSystem",
            "params": [
              {
                "name": "externalKey",
                "value": "ExternalID",
                "params": []
              }
            ]
          }
        ],
        "local": [],
        "cues": []
      },
      {
        "name": "sap.graph.IndustrySector",
        "leading": "c4c"
      },
      {
        "name": "sap.graph.Job",
        "leading": "c4c"
      },
      {
        "name": "sap.graph.Language",
        "leading": "c4c"
      },
      {
        "name": "sap.graph.PersonMaritalStatus",
        "leading": "c4c"
      },
      {
        "name": "sap.graph.PersonTitle",
        "leading": "c4c"
      },
      {
        "name": "sap.graph.Product",
        "leading": "c4c"
      },
      {
        "name": "sap.graph.ProductCategory",
        "leading": "c4c"
      },
      {
        "name": "sap.graph.ProductCategoryHierarchy",
        "leading": "c4c"
      },
      {
        "name": "sap.graph.SalesContract",
        "leading": "c4c"
      },
      {
        "name": "sap.graph.SalesDocumentCancellationReason",
        "leading": "c4c"
      },
      {
        "name": "sap.graph.SalesDocumentReason",
        "leading": "c4c"
      },
      {
        "name": "sap.graph.SalesLead",
        "leading": "c4c"
      },
      {
        "name": "sap.graph.SalesOpportunity",
        "leading": "c4c"
      },
      {
        "name": "sap.graph.SalesOrder",
        "leading": "c4c"
      },
      {
        "name": "sap.graph.SalesPricingConditionType",
        "leading": "c4c"
      },
      {
        "name": "sap.graph.SalesQuote",
        "leading": "c4c"
      },
      {
        "name": "sap.graph.ServiceRequest",
        "leading": "c4c"
      },
      {
        "name": "sap.graph.TimeSheet",
        "leading": "c4c"
      },
      {
        "name": "sap.graph.WorkAssignment",
        "leading": "c4c"
      }
    ]
  }
}
```

Notice `extensions` in the above configuration. These are the custom extensions (Logistics Partner) we will be registering before activating the SAP Graph configuration in the next step.

4. Download the custom extension configuration [archive](../../logistics-extension-config.zip) and unzip it.

5. Register the extension using the downloaded configuration files:

  ```
    graphctl register extension -d <path to unzipped logistics directory>
  ```

6. Activate the configuration (using the JSON file **config.json** created in the previous step):

  ```
  graphctl activate config -f <config.json>
  ```

  ![Graph Activation](./images/graphActivation.png)

> If a business data graph with the same identifier already exists in the current landscape, activation will fail, unless the **--force** option is used to overwrite the same business data graph. <br /> <br /> graphctl activate config -f <config.json> [--force]

See [Configuration File](https://help.sap.com/viewer/84bbf6acb5384861add4cb6939bef647/PROD/en-US/56a40529c2ef42969dfc94c44e603bde.html) in the SAP Graph documentation.

## Set Up SAP Graph Destination

Maintain the **Graph API** in the URL (for example, `https://xxxx.graph.sap/api`). This is the URL that you received after activation of graph configuration in the previous step. Refer to SAP Graph's service key to fill in the values for **Client ID** and **Client Secret**. The **Token Service URL** value is derived by suffixing the **URL** mentioned in service key with `/oauth/token`.

Use the Graph API to configure the destinations with:

1. *OAuth2JWTBearer* Authentication:

  1.1. In the SAP BTP cockpit, go to your global account and navigate to your subaccount.

  1.2. Choose **Connectivity** in the menu on the left, and then choose **Destinations > New Destination**.

  1.3. Create the **Destination Configuration** using the details from Service key of the SAP Graph instance:

![OAuth2JWTBearer](./images/OAuth2JWTBearerDestination.png)

2. *OAuth2ClientCredential* Authentication:

![OAuth2ClientCredential](./images/OAuth2ClientCredentialDestination.png)

>Hint: `Check Connection` button for the created destination gives the response `401:Unauthorised`. This is expected. It will be resolved when the application forwards the JWT token.
