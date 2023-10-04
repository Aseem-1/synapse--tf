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

  subscription_id   = "2bd92727-1a9b-4d70-b27d-e3de734c45a8"
  tenant_id         = "6f1a44dc-99c5-462d-b27d-4a6926a6b3e0"
  client_id         = "acf5f505-5481-4682-9ecb-a0d48eb01984"
  client_secret     = "TPL8Q~SszJUJNq8D1WF2Im9Y7roUXPNGnmPGmcoq"
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "UK South"
}

resource "azurerm_storage_account" "example" {
  name                     = "examplestorageacc"
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

resource "azurerm_synapse_workspace" "example" {
  name                                 = "example"
  resource_group_name                  = azurerm_resource_group.example.name
  location                             = azurerm_resource_group.example.location
  storage_data_lake_gen2_filesystem_id = azurerm_storage_data_lake_gen2_filesystem.example.id
  sql_administrator_login              = "sqladminuser"
  sql_administrator_login_password     = "H@Sh1CoR3!"



  tags = {
    Application = "RFR"
    CostCentre = "A1D2675"
    Createby = "Aseem.Suleman@met.police.uk"
    Environment = "PP"
    Owner = "David Pitty"
    WBS = "A1RDP000931148"

  }
}