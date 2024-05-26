resource azurerm_storage_account module_storage_account {
    name                     = "stg${var.app_name_prefix}${var.env_prefix}${var.region_prefix}${var.ordinal_prefix}"
    resource_group_name      = var.resource_group_name
    location                 = var.location
    account_tier             = var.account_tier
    account_replication_type = var.account_replication_type
}

resource azurerm_storage_container module_container {
    name                  = "ci-${var.app_name_prefix}-${var.env_prefix}-${var.region_prefix}-${var.ordinal_prefix}"
    storage_account_name  = azurerm_storage_account.module_storage_account.name
    container_access_type = "container" # "blob" "private"
}

resource azurerm_storage_blob module_blob {
    name                   = "stb${var.app_name_prefix}${var.env_prefix}${var.region_prefix}${var.ordinal_prefix}"
    storage_account_name   = azurerm_storage_account.module_storage_account.name
    storage_container_name = azurerm_storage_container.module_container.name
    type                   = "Block"
    source                 = "commands.sh"
}