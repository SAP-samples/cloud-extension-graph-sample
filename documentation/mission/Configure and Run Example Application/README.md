# Configuration

With the app coding ready on your device, you now need to perform a few steps to adjust the app to your own environment.
  
In detail you have to adapt the *manifest.yaml* and the *service.js* files.

Find the *manifest.yaml*  and *services-manifest.yml* in your installation folder , open it and perform the below
adjustments, if at all needed. Adjustments are only needed if you have adjusted the services names during the earlier steps or plan for using an app name without the random route option with the push command later.
    
  In case you are wondering about the correct service names, you can look then up the SAP Business Technology Platform Cockpit.
  
 ![Services](./images/run2.png)
  

# Deployment

We are going to use the cloud foundry command line client for the deployment. In case you have not installed it yet, follow the steps described in this blog:

https://blogs.sap.com/2019/06/11/sap-cloud-platform-backend-service-tutorial-23-using-command-line-for-cloud/

To deploy the application, perform the following steps:

1. Open command prompt.
2. Login to the account and space:

```
cf login -sso
```
or alternatively

```
cf login
```

2. Login to the account and space with *cf login*.
3. Navigate to the folder >installation folder</

### Deployment using manifest file
1. Ensure you are in the folder that contains the *manifest.yaml* file.
2. Execute the following command, using [CF service push plugin](https://github.com/dawu415/CF-CLI-Create-Service-Push-Plugin)



```
    cf create-service-push --vars-file vars-dev.yml --push-as-subprocess
```

  In case Create-Service-Push plugin is missing, execute the following command to install it.

```
    cf install-plugin -r CF-Community "Create-Service-Push"
```

### Deploy Application (using MTA)

#### Setup plugin

>Hint: The below installation steps are not needed if you are using Business Application Studio. 

- To build the multi target application, we need the [Cloud MTA Build tool](https://sap.github.io/cloud-mta-build-tool/), download the tool from [here](https://sap.github.io/cloud-mta-build-tool/download/)

- For Windows system, install 'MAKE' from http://gnuwin32.sourceforge.net/packages/make.htm

- [multiapps plugin](https://github.com/cloudfoundry-incubator/multiapps-cli-plugin) - ``` cf install-plugin multiapps```

- mbt - ```npm install -g mbt```


#### Build application: 

```
mbt build
```

#### Deploy application:

```
cf deploy -f <path/to/mtar>
```

6. Check the console for the final output and that the deployment has worked out.

7. Check and remember the URL of your deployed app.

Example URL: *geo.cfapps.eu10.hana.ondemand.com*

Hint: Using the command ```CF apps``` you can always look up this information

Note: replace “geo” with the host name which was entered in the *manifest.yaml* file.

8. Open the URL of your deployed app in a browser. Click on the hyperlink /georelApplication.html

 ![Application](./images/run4.png)


# Create role

After the application is deployed, you will see two role templates.

![RoleTemplate](./images/roleTemplates.png)

Now we need to create a new role using role template 'Viewer'.

1. Go to Roles.
2. Add new role("+" icon).
3. Configure role attributes. Choose "Viewer" role template.

![RoleStep1](./images/createRoleStep1.png)

4. Click on next.
5. Specify the country attribute of your choice.

![RoleStep2](./images/createRoleStep2.png)

6. Click on next.
7. Choose the role collection of your preference.

![RoleStep3](./images/createRoleStep3.png)

8. Click on next.
9. Review the role.
10. Click on finish.
11. Please ensure that the chosen role collection is assigned to the application's user.
