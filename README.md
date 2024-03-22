You need to provide an api_key provided to you by datadog upon registration and the app_key you will create in UI.

For security purposes no need to specify your key values ​​in terraform files. 

Execute the command instead
```
terraform apply -var="datadog_api_key=<YOUR_API_KEY>" -var="datadog_app_key=<YOUR_APP_KEY>"
```
