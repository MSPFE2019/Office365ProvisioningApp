#Parameters
$SourceSiteURL = "https://gov210645.sharepoint.com/sites/M365LP/"
$DestinationSiteURL = "https://gov210645.sharepoint.com/"
$PageNames = "CustomLearningViewer.aspx", "Work-remotely.aspx"
 
#Connect to Source Site
Connect-PnPOnline -Url $SourceSiteURL -Interactive
 
#Export the Source page
ForEach ($PageName in $PageNames)
{
$TempFile = [System.IO.Path]::GetTempFileName()
Export-PnPClientSidePage -Force -Identity $PageName -Out $TempFile
 
#Import the page to the destination site
Connect-PnPOnline -Url $DestinationSiteURL -Interactive
Invoke-PnPSiteTemplate -Path $TempFile
}

