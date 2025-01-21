terraform {
  
  backend "s3" {
    bucket = ""
    key = ""
    region = ""
    endpoints = {
      s3 = ""
    }
    access_key = ""
    secret_key = ""
    use_path_style = true
    workspace_key_prefix = ""
    insecure = true
    skip_credentials_validation = true
    skip_requesting_account_id = true
    skip_metadata_api_check = true
  }
  
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }

}

provider "azurerm" {
  features {}
}