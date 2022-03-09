## Create CheckURLFlow

1. Trigger - Power Apps
2. Initialize Variable - TenantURL
3. Initialize Variable - Site Url
4. Initialize Variable - URLExist
5. Send an HTTP request to SharePoint
6. Parse JSON

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
9. Respond to PowerApp

