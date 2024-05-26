resource azurerm_cdn_profile module_azurerm_cdn_profile {
    name                = "cdn-${var.env_prefix}-${var.region_prefix}-${var.ordinal_prefix}"
    resource_group_name = var.resource_group_name
    location            = var.location
    sku                 = var.sku
}

resource azurerm_cdn_endpoint module_azurerm_cdn_endpoint {
    name                = "cdnendpoint-${var.env_prefix}-${var.region_prefix}-${var.ordinal_prefix}"
    profile_name        = azurerm_cdn_profile.module_azurerm_cdn_profile.name
    resource_group_name = var.resource_group_name
    location            = var.location

  origin {
    name          = var.origin_name
    host_name     = var.cdn_host_name
    http_port     = "80"
    https_port    = "443"
  }
}