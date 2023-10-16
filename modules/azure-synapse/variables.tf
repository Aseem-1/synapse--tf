variable "resource_group_name" {
  type        = string
  description = "name of the resource group"
}

variable "location" {
  type        = string
  description = "location of the resource group"
}

variable "storageaccount" {
  type        = string
  description = "name of the azurerm_storage_account"
}

variable "datalake_name" {
  type        = string
  description = "name of the azurerm_storage_data_lake_gen2_filesystem"
}

variable "synapse_name" {
  type        = string
  description = "name of the azurerm_synapse_workspace"
}

variable "sql_administrator_login" {
  type        = string
  description = "login of the sql_administrator"
}

variable "sql_administrator_login_password" {
  type        = string
  sensitive   = true
  description = "password of the sql_administrator"
}

variable "account_tier" {
  type        = string
  description = "Defines the Tier to use for this storage account."
}

variable "account_replication_type" {
  type        = string
  description = " Defines the type of replication to use for this storage account"
}

variable "account_kind" {
  type        = string
  description = " Defines the Kind of account for storage account"
}

variable "is_hns_enabled" {
  type        = string
  description = " Is Hierarchical Namespace enabled? This can be used with Azure Data Lake Storage Gen 2 (see here for more information). Changing this forces a new resource to be created."
}

variable "type" {
  type        = string
  description = "identity type of the azurerm_synapse_workspace"
}


variable "azure_tenant_id" {
  type = string
}

variable "subscription_id" {
  type = string
}

variable "client_id" {
  type = string
}
