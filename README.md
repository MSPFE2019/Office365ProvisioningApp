# Office365 Provisioning App
Power App that provisions SharePoint sites and Teams

This app uses standard Power Platform Connectors with a SharePoint Backend. 

###To import a solution:
Sign into Power Apps and select Solutions from the left navigation.

On the command bar, select Import.

Import solution.

On the Import a solution page, select Browse to locate the compressed (.zip or .cab) file that contains the solution you want to import.

Select Next.

Information about the solution is displayed. By default, in the Advanced settings section, if SDK messages and flows exist in the solution, they will be imported. Clear the Enable SDK messages and flows included in the solution option if you want them to import in an inactive state.

If your solution contains connection references, you’ll be prompted to select the connections you want. If a connection does not already exist, create a new one. Select Next.

If your solution contains environment variables, you will be prompted to enter values. You will not see this screen if value(s) are already present in your solution or the target environment.

If missing dependencies are detected in the target environment, a list of the dependencies is presented. In environments where the required package version is available for import in the target environment, a link to resolve the dependency is presented. Selecting the link takes you to the Power Platform admin center where you can install the application update. After the application update is completed, you can start the solution import again.

Select Import.

Create SharePoit List
#1 - Connect to the destination SharePoint site 
Connect-PnPOnline -Url "https://destinationSite.sharepoint.com/sites/destinationSite" 

#2 - Import the items from the template file
Invoke-PnPSiteTemplate -Path "C:\Temp\SPList.pnp"

It will create the following list:
Agency Data - This contain your Agency information for the naming convention
SharePointRequestList - Contains all the SharePoint Request
TeamsRequestList - Contains all the Teams Request
