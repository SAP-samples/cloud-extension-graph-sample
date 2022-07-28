# Set Up SAP BTP and SAP Sales Cloud
## Set Up Communication Arrangements in Sales Cloud System

To build extension applications for your SAP Sales Cloud system, you need to connect your SAP Sales Cloud system to your SAP BTP account.

To be able to do this, in respect to authorizations, you must be:

- An administrator of the SAP BTP global account

- An administrator of the SAP Sales Cloud system


## Set Up Communication System

1. Log on to your SAP Sales Cloud tenant.

2. Navigate to **Administrator** &rarr; **General Settings** and open **Communication Systems** under the **Integration** block.

3. Choose **New** to create a new communication system.

4. For **ID** enter *TRIAL_TECH_SYSTEM_USER*.

5. For **Hostname** enter *ODATA_ACCESS*.

6. For **System Access Type** choose **Internet**.

    ![Setup System](./images/setup1.png)

7. In the **System instances** view choose **Add Row**.

8. For **System Instance ID** enter *TRIAL_TECH_SYSTEM_USER*.

    ![Setup System2](./images/setup2.png)

9. In the menu bar on top, choose **Actions** &rarr; **Set to Active**.

    ![Setup activate](./images/setup6.png)

## Set Up Communication Arrangement

1. Navigate to **Administrator** &rarr; **General Settings** and open **Communication Arrangement** under the **Integration** block.

2. Choose **New** to create a new communication arrangement.

3. Choose **OData Services for Business Objects** as the Communication scenario.

4. Choose **Next** in the footer menu.

5. For **System Instance ID**, choose the communication system name given in the previous step **TRIAL_TECH_SYSTEM_USER**.

    ![setup System3](./images/setup3.png)

6. Choose **Next** in the footer menu.

7. Set **Communication Method** to **Direct Communication**.

8. Under the **Inbound Communication: Basic Settings** choose **authentication** method as **User ID and Password**.

9. In the Technical **User ID**, choose **Edit credentials**.

10. Enter new password and choose **Ok**. Remember this password.

11. Under the services used, choose the following services:

    - businesspartner
    - customer
    - employeeanduser
    - employeebasicdata
    - objectidentifiermapping

12. Choose **Next** and **Finish** the setup.

    ![Setup System4](./images/setup4.png)

## Configure Destination in SAP BTP

You need to configure a destination for your SAP Sales Cloud System, which would be used for Graph configuration in the next steps.

1. Open your SAP BTP global account and navigate to your **Subaccount**.

2. Choose **Connectivity** in the menu on the left then choose **Destinations** &rarr; **New Destination**.

3. Enter the following information to the **Destination Configuration** view:

    - Name: `graph-c4c-dest`
    - URL: `https://<SAP_Sales_Cloud_API>/sap/c4c/odata/v1/c4codataapi`
    - Authentication: `Basic Authentication`
    - User: `_TIRAL_TECH_`
    - Password: password you have set in the previous step

    ![Setup System5](./images/setup5.png)

## Set Up Communication System for mapping Business System

1. Log on to your SAP Sales Cloud tenant.

2. Navigate to **Administrator** &rarr; **General Settings** and open **Communication Systems** under the **Integration** block.

3. Choose **New** to create a new communication system.

4. For **ID** enter *GRAPH_S4*.

5. For **Hostname** enter *S4_HANA*.

6. For **System Access Type** choose **Internet**.


7. In the **System instances** view choose **Add Row**.

8. For **System Instance ID** enter *GRAPH_S4*.


9. In the menu bar on top, choose **Actions** &rarr; **Set to Active**.


    ![Setup7](./images/setup7.png)