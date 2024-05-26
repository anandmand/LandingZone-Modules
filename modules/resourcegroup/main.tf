resource azurerm_resource_group module_resource_group {
    name     = "RG-${var.app_name_prefix}-${var.subscription_prefix}-${var.region_prefix}-${var.ordinal_prefix}"
    location = var.location
    tags     = var.tags
}