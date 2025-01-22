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
      version = "=4.16.0"
    }
  }

}

provider "azurerm" {
  subscription_id = var.subscription_id
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

module "aks" {
  source              = "./modules/aks"
  cluster_name        = var.cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix
  node_count          = var.node_count
  node_vm_size        = var.node_vm_size
  tags                = var.tags
}

module "registry" {
  source              = "./modules/registry"
  acr_name            = var.acr_name
  location            = var.location
  resource_group_name = var.resource_group_name
  tags                = var.tags
}