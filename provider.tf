terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.75.0"
    }
  }
}

provider "azurerm" {
  features {}
}

/*
provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  tenant_id = var.azure_tenant_id
  }
  */