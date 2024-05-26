variable app_name_prefix {
description = "app_name of resources that are deployed"
type        = string
}
variable env_prefix {
description = "subscription of resources that are deployed"
type        = string
}
variable region_prefix {
description = "region of resources that are deployed"
type        = string
}
variable ordinal_prefix {
description = "ordinal of resources that are deployed"
type        = string
}
variable cosmos_db_account_name {
  type        = string
  description = "The name of the network security group."
}
variable resource_group_name {
  type        = string
  description = "The name of the resource group in which to create the network security group."
}
variable location {
  type        = string
  description = "The location/region where the network security group is created. "
}
variable failover_location {
  type        = string
  description = "The location/region where the network security group is created. "
}
variable azurerm_cosmosdb_sql_database_name {
  type        = string
  description = "The location/region where the network security group is created. "
}
variable azurerm_cosmosdb_sql_container {
  type        = string
  description = "The location/region where the network security group is created. "
}