resource azurerm_virtual_network module_virtual_network {
    resource_group_name      = var.resource_group_name
    location                 = var.location
    name                     = "vnet-${var.subscription_prefix}-${var.region_prefix}-${var.ordinal_prefix}"
    address_space            = var.address_space
}
