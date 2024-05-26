resource azurerm_firewall module_azurerm_firewall {
  name                = "afw-${var.env_prefix}-${var.region_prefix}-${var.ordinal_prefix}"
  resource_group_name = var.resource_group_name
  location            = var.location
  sku_name            = "AZFW_VNet"
  sku_tier            = "Standard"

  ip_configuration {
    name                 = var.azure_firewall_configuration
    subnet_id            = var.subnet_id
    public_ip_address_id = var.public_ip_address_id
  }
}