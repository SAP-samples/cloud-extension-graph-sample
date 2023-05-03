# Configure and Run Geo Relations Application

After your are ready with the application coding, you now need to adjust the application to your own environment.
To do that, you have to adapt the *manifest.yaml* and the *service.js* files.

Find the *manifest.yaml* and *services-manifest.yml* files in your installation folder and open it. You have to adapt the *manifest.yaml* and the *service.js* files only if you have used different names in the configurations so far. If you have followed all the configurations with the exact names inside, leave the *manifest.yaml* and the *service.js* files as they are. 

In case you are wondering about the correct service names, you can look them up in the [SAP BTP Cockpit](https://account.hana.ondemand.com/).

 ![Services](./images/run2.png)

  > Note: Adapt the application security descriptor ([xs-security.json](../../xs-security.json)) with `redirect-uris` parameter to restrict access as much as possible depending on the landscape domain as mentioned in the [SAP Help Portal: Listing Allowed Redirect URIs](https://help.sap.com/docs/BTP/65de2977205c403bbc107264b8eccf4b/f117cab6b92d438cb2a0b5204713994b.html?q=security%20considerations#listing-allowed-redirect-uris)

# Deployment

You will use the Cloud Foundry Command Line Interface (cf CLI) for the deployment. In case you have not installed it yet, do it as mentioned in the [Prerequisites](../Prerequisites/README.md).

Deployment can be done either using a manifest file or an [MTA](https://help.sap.com/products/BTP/65de2977205c403bbc107264b8eccf4b/d04fc0e2ad894545aebfd7126384307c.html?locale=en-US) file. You can choose one of the following options:

### Deploy the Application Using Manifest Files

1. Open a command line window.

2. Log in to the account and space:

```
cf login -sso
```

  or alternatively log in to the account and space using your SAP BTP credentials:

```
cf login
```

3. Ensure you are in the folder that contains the *manifest.yaml* file.

4. Run the following command:

```
cds build --production
```

5. Run the following command, using the [CF service push plugin](https://github.com/dawu415/CF-CLI-Create-Service-Push-Plugin):

```
cf create-service-push --vars-file vars-dev.yml --push-as-subprocess
```

> Note: Adjust the `vars-dev.yml` accordingly.

  In case Create-Service-Push plugin is missing, run the following command to install it.

```
cf install-plugin -r CF-Community "Create-Service-Push"
```

### Deploy the Application Using MTA

The deployment is based on an MTA (*Multi-Target Application*, sometimes also called *MultiApps*) technology. The [MTA](https://help.sap.com/products/BTP/65de2977205c403bbc107264b8eccf4b/d04fc0e2ad894545aebfd7126384307c.html?locale=en-US) is an SAP-proprietary way to do deployments consisting of multiple modules that can be implemented in different technologies.

#### Prerequisites

Follow steps 1-4 in the [Deploy Your Multi-Target Application (MTA)](https://developers.sap.com/tutorials/btp-app-cap-mta-deployment.html) tutorial.

#### Build the Application

1. Build the MTA module:

```
mbt build
```

This creates a `mtar` file `<xxx.mtar>` in the current folder.

#### Deploy the Application:

1. Deploy the module to your current Cloud Foundry space:

```
cf deploy <path/to/mtar>
```

2. The deployment can take some minutes. After successful deployment, check if all the services have been created:

```
cf services
```

3. In the deploy log, find the URL of your deployed app.

Example URL: *geo.cfapps.us10.hana.ondemand.com*

> Using the command `CF apps` you can always look up this information.

4. Open the URL of your deployed UI application in a browser.


# Create a Role

After the application is deployed, you will see two **Role Templates** in [SAP BTP cockpit](https://account.hana.ondemand.com/).

  ![RoleTemplate](./images/roleTemplates.png)

Now, you need to create a new role using role template 'Viewer'.

1. Go to **Roles**.

2. Add new role by choosing **+**.

3. Configure role attributes. In the **Role Template** field, choose **Viewer**.

  ![RoleStep1](./images/createRoleStep1.png)

4. Choose **Next**.

5. Specify the **Country** attribute of your choice.

  ![RoleStep2](./images/createRoleStep2.png)

6. Choose **Next**.

7. Select the role collection of your preference with *&#x2611;*.

  ![RoleStep3](./images/createRoleStep3.png)

8. Choose **Next**.

9. Review the role.

10. Choose **Finish**.

11. Ensure that the chosen role collection is assigned to the application's user.
