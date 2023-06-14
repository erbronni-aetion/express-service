$Uri = "http://localhost:3000/api/v1/resource/1"
$PutParams = @{
    Uri = $Uri
    Method = "PUT"
    Body =  '{"data": {"resourceId": 1, "resource": "RESOURCE"}}'
    ContentType = "application/json"
}
Invoke-WebRequest @PutParams
Invoke-WebRequest -Uri $Uri

