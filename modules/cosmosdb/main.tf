resource azurerm_cosmosdb_account module_azurerm_cosmosdb_account {
    name                        = "cos-${var.app_name_prefix}-${var.env_prefix}-${var.region_prefix}-${var.ordinal_prefix}"
    resource_group_name         = var.resource_group_name
    location                    = var.location
    offer_type                  = "Standard"
    kind                        = "GlobalDocumentDB"
    enable_automatic_failover   = true
    consistency_policy {
        consistency_level       = "Session"
    }
  
  geo_location {
    location = var.failover_location
    failover_priority = 1
  }
  geo_location {
    location = var.location
    failover_priority = 0
  }
}
resource azurerm_cosmosdb_sql_database module_azurerm_cosmosdb_sql_database {
    name                = var.azurerm_cosmosdb_sql_database_name
    resource_group_name = var.resource_group_name
    account_name        = var.cosmos_db_account_name
}
resource azurerm_cosmosdb_sql_container module_azurerm_cosmosdb_sql_container {
    name                = var.azurerm_cosmosdb_sql_container
    resource_group_name = var.resource_group_name
    account_name        = var.cosmos_db_account_name
    database_name       = var.azurerm_cosmosdb_sql_database_name
    partition_key_path  = "/*"
}