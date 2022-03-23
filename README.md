# Office365 Provisioning App
Power App that provisions SharePoint sites and Teams

This app uses standard Power Platform Connectors with a SharePoint Backend. 


### To import a solution:
Sign into Power Apps and select Solutions from the left navigation.

1. On the command bar, select Import.

2. [Import solution.](https://github.com/MSPFE2019/Office365ProvisioningApp/blob/main/RequestATeamPA_1_1_0_6.zip), Click to download solution.

3. On the Import a solution page, select Browse to locate the compressed (.zip or .cab) file that contains the solution you want to import.

4. Select Next.

5. Information about the solution is displayed. By default, in the Advanced settings section, if SDK messages and flows exist in the solution, they will be imported. Clear the Enable SDK messages and flows included in the solution option if you want them to import in an inactive state.

6. If your solution contains connection references, you’ll be prompted to select the connections you want. If a connection does not already exist, create a new one. Select Next.

7. The solution has three environment variables: 

* SPO_TenantInformation -(https://contoso.sharepoint.com/) - This your Tenant URL

* SPO Site for Data - (https://contoso.sharepoint.com/sites/Office365ManagementApp)

* SPO List Name - (Office365ManagementApp) - SharePoint List Name

8. If missing dependencies are detected in the target environment, a list of the dependencies is presented. In environments where the required package version is available for import in the target environment, a link to resolve the dependency is presented. Selecting the link takes you to the Power Platform admin center where you can install the application update. After the application update is completed, you can start the solution import again.

9. Select Import.


### Imported Components:

###### Flows
* CreateAgencyList - Create Agency List for Naming of resource
 
* CreateOffice365ManList - Create Office365ManagementApp List for request storage

* Check_URL - Check resource url availiable [Check_URL - Check if Url exits](https://github.com/MSPFE2019/Office365ProvisioningApp/blob/main/CheckURLFlow.md)


###### App
* Office365 Provisioning Appv3
 
** Remove connection and Re-add your SharePoint List connections

### Create SharePoint Lists

Run the following flows:

* CreateAgencyList - Create Agency List for Naming of resource

** Agency Data - This contain your Agency information for the naming convention
![Screenshot](https://github.com/MSPFE2019/Office365ProvisioningApp/blob/main/AgencyData.jpg)

* CreateOffice365ManList - Create Office365ManagementApp List for request storage

** Office365ManagementApp - Contains all the SharePoint Request
