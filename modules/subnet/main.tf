resource azurerm_subnet module_subnet {
    count                = var.subnet_count
    resource_group_name  = var.resource_group_name
    virtual_network_name = var.vnet_name
    name                 = format("snet-${var.subscription_prefix}-${var.region_prefix}-${var.ordinal_prefix}-%d", count.index + 1 )
    address_prefixes     = ["10.0.1.0/24"]
}