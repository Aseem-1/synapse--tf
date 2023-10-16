module "azure-synapse" {
  source = "./modules/azure-synapse"

  location                         = var.location
  resource_group_name              = var.resource_group_name
  storageaccount                   = var.storageaccount
  datalake_name                    = var.datalake_name
  synapse_name                     = var.synapse_name
  sql_administrator_login          = var.sql_administrator_login
  sql_administrator_login_password = var.sql_administrator_login_password
  account_tier                     = var.account_tier
  account_replication_type         = var.account_replication_type
  account_kind                     = var.account_kind
  is_hns_enabled                   = var.is_hns_enabled
  type                             = var.type
  azure_tenant_id                  = var.azure_tenant_id
  subscription_id                  = var.subscription_id
  client_id                        = var.client_id

}