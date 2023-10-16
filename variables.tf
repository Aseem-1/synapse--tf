variable "resource_group_name" {
  type        = string
  default = "synapse_storage"
  description = "name of the resource group"
}

variable "location" {
  type        = string
  default = "UK south"
  description = "location of the resource group"
}

variable "storageaccountname" {
  type        = string
  default = "synapse_storage"
  description = "name of the azurerm_storage_account"
}

variable "datalake_name" {
  type        = string
  default = "storage_lake"
  description = "name of the azurerm_storage_data_lake_gen2_filesystem"
}

variable "synapse_name" {
  type        = string
  default = "synapse_workspace"
  description = "name of the azurerm_synapse_workspace"
}

variable "sql_administrator_login" {
  type        = string
  default = "Synapse_test"
  description = "login of the sql_administrator"
}

variable "sql_administrator_login_password" {
  type        = string
  sensitive = true
  default = "Hello@world"
  description = "password of the sql_administrator"
}

variable "account_tier" {
  type        = string
  default = "Standard"
  description = "Defines the Tier to use for this storage account."
}

variable "account_replication_type" {
  type        = string
  default = "LRS"
  description = " Defines the type of replication to use for this storage account"
}

variable "account_kind" {
  type        = string
  default = "StorageV2"
  description = " Defines the Kind of account for storage account"
}

variable "is_hns_enabled" {
  type        = string
  default = "true"
  description = " Is Hierarchical Namespace enabled? This can be used with Azure Data Lake Storage Gen 2 (see here for more information). Changing this forces a new resource to be created."
}

variable "type" {
  type        = string
  default = "SystemAssigned"
  description = "identity type of the azurerm_synapse_workspace"
}


variable "azure_tenant_id" {
     type        = string
     default = "6f1a44dc-99c5-462d-b27d-4a6926a6b3e0"
}

variable "subscription_id" {
    default = "2bd92727-1a9b-4d70-b27d-e3de734c45a8"
     type        = string
}

variable "client_id" {
    default = "2bd92727-1a9b-4d70-b27d-e3de734c45a8"
    type = string
}
