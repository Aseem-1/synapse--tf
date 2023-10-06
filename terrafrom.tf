terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.43"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = var.subscription_id
  tenant_id = var.azure_tenant_id
  }


resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = var.location
}


resource "azurerm_storage_account" "example" {
  name                     = "examplestorageaccount578"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"
  is_hns_enabled           = "true"
}

resource "azurerm_storage_data_lake_gen2_filesystem" "example" {
  name               = "example"
  storage_account_id = azurerm_storage_account.example.id
}


resource "azurerm_synapse_workspace" "example777908" {
  name                                 = "example777908"
  resource_group_name                  = azurerm_resource_group.example.name
  location                             = azurerm_resource_group.example.location
  storage_data_lake_gen2_filesystem_id = azurerm_storage_data_lake_gen2_filesystem.example.id
  sql_administrator_login              = var.sql_administrator_login
  sql_administrator_login_password     = var.sql_administrator_login_password
  managed_virtual_network_enabled      = true


 identity {
    type = "SystemAssigned"
  }

  tags = {
    Application = "RFR"
    CostCentre = ""
    Createby = "Aseem.Suleman@met.police.uk"
    Environment = "PP"
    Owner = "David Pitty"
    WBS = ""

  }
  
}
resource "azurerm_synapse_sql_pool" "anprdevsqlpool" {
  name                 = "anprdevsqlpool"
  synapse_workspace_id = azurerm_synapse_workspace.example777908.id
  sku_name             = "DW100c"
  create_mode          = "Default"
  storage_account_type = "GRS"
}
