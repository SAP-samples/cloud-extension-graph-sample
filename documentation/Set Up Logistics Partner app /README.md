# Set Up Logistics Partner Application

This application allows you to maintain the delivery information of the shipments to customer. It's a mock application for the third-party API to showcase the capabilities of the custom extension in SAP Graph.

You can either clone the code from GitHub or download and extract the ZIP file provided to your local file system in your installation folder.

Clone the project:

```
git clone https://github.com/SAP-samples/cloud-extension-graph-sample.git
```

## Deploy the Application Using Manifest Files

1. Open a command line window.

2. Log in to the account and space:

```
cf login -sso
```

    or alternatively log in to the account and space using your SAP BTP credentials:

```
cf login
```

3. Ensure you are inside the folder **logistics-partner** and that contains the *manifest.yaml* file.

4. Run the following command:

```
cf push
```

    This will deploy the **logistics-partner** application to the SAP BTP, Cloud Foundry runtime.

## Set Up a Destination

You have to create a destination in your subaccount in SAP BTP for the deployed application which will be set up in SAP Graph later.

1. In the SAP BTP cockpit, go to your global account and navigate to your subaccount.

2. Choose **Connectivity** in the left-hand navigation, and then choose **Destinations > New Destination**.

3. In the **Destination Configuration** section, use the URL of the deployed application when creating your destination:

    - Name: `logistics-partner`
    - Type: HTTP
    - URL: `<URL of deployed app>/logistics`
    - Proxy Type: Internet
    - Authentication: No Authentication
