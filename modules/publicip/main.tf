resource azurerm_public_ip module_azurerm_public_ip {
    name                = "pip-${var.app_name_prefix}-${var.env_prefix}-${var.region_prefix}-${var.ordinal_prefix}"
    resource_group_name = var.resource_group_name
    location            = var.location
    allocation_method   = "Dynamic" #--Dynamic set means Azure will generate an IP for your Azure VPN Gateway
}