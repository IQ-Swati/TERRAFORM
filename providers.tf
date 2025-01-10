terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.14.0"
    }
  }
}


#Azure Provider
provider "azurerm" {
  # Configuration options
  subscription_id = var.subscription_id 
  tenant_id = var.tenant_id           // Directory Id = Tenant Id
  features {}
}


# tls Provider
provider "tls" {
  
}