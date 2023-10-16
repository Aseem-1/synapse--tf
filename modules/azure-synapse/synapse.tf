resource "azurerm_storage_account" "storageaccount" {
  name                     = var.storageaccount
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  account_kind             = var.account_kind
  is_hns_enabled           = var.is_hns_enabled
}


resource "azurerm_synapse_workspace" "synapse" {
  name                                 = var.synapse_name
  resource_group_name                  = var.resource_group_name
  location                             = var.location
  storage_data_lake_gen2_filesystem_id = azurerm_storage_data_lake_gen2_filesystem.datalake.id
  sql_administrator_login              = var.sql_administrator_login
  sql_administrator_login_password     = var.sql_administrator_login_password


  identity {
    type = "SystemAssigned"
  }
  
}

resource "azurerm_storage_data_lake_gen2_filesystem" "datalake" {
  name               = var.datalake_name
  storage_account_id = azurerm_storage_account.storageaccount.id
}
