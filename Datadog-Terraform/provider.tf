terraform {
  required_providers {
    datadog = {
      source = "DataDog/datadog"
    }
  }
}

provider "datadog" {
  api_url = "https://app.datadoghq.eu"
  api_key = "************************"
  app_key = "********************************"
}
