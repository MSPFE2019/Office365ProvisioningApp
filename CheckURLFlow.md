## Create CheckURLFlow

1. Trigger - Power Apps
![Screenshot](https://github.com/MSPFE2019/Office365ProvisioningApp/blob/main/PowerAppTrigger.jpg)

3. Initialize Variable - TenantURL
![Screenshot](https://github.com/MSPFE2019/Office365ProvisioningApp/blob/main/TenantURL.jpg)

5. Initialize Variable - Site Url
![Screenshot](https://github.com/MSPFE2019/Office365ProvisioningApp/blob/main/SiteUrl.jpg)

7. Initialize Variable - URLExist
![Screenshot](https://github.com/MSPFE2019/Office365ProvisioningApp/blob/main/URLExist.jpg)

9. Send an HTTP request to SharePoint
![Screenshot](https://github.com/MSPFE2019/Office365ProvisioningApp/blob/main/SendAnHttp.jpg)

11. Parse JSON
![Screenshot](https://github.com/MSPFE2019/Office365ProvisioningApp/blob/main/ParseJSON.jpg)
Parse JSON
</p>
  {
    "type": "object",
    "properties": {
        "status": {
            "type": "integer"
        },
        "message": {
            "type": "string"
        },
        "source": {
            "type": "string"
        },
        "errors": {
            "type": "array"
        }
    }
}
</P>

8. Condition
![Screenshot](https://github.com/MSPFE2019/Office365ProvisioningApp/blob/main/Condition.jpg)

10. Respond to PowerApp

![Screenshot](https://github.com/MSPFE2019/Office365ProvisioningApp/blob/main/Respond%20to%20PowerApp.jpg)

