resource azurerm_local_network_gateway module_azurerm_local_network_gateway {
    name                = var.peer_vpn_gateway
    resource_group_name = var.resource_group_name
    location            = var.location
    gateway_address     = "168.62.225.23" #--Your local device public IP here
    address_space       = var.peer_subnet_address_spaces
}

resource azurerm_virtual_network_gateway module_azurerm_virtual_network_gateway {
    name                    = "vgw-${var.service_prefix}-${var.env_prefix}-${var.region_prefix}-${var.ordinal_prefix}"
    resource_group_name     = var.resource_group_name
    location                = var.location
    type                    = "Vpn" #--Other option is ExpressRoute, predictably for ExpressRoute VPNs
    vpn_type                = "RouteBased" #--Policy based is also acceptable here, depending on your use case
    active_active           = false
    enable_bgp              = false
    sku                     = "Basic" #--A whole load of oddities occur around SKUs, see MS Docs for details
    ip_configuration {
        public_ip_address_id          = var.public_ip_address_id
        private_ip_address_allocation = "Dynamic"
        subnet_id                     = var.subnet_id #--There's that ID we needed, for the Transport Subnet
    }
}

resource azurerm_virtual_network_gateway_connection module_azurerm_virtual_network_gateway_connection {
    name                       = var.vpn_connection
    resource_group_name        = var.resource_group_name
    location                   = var.location
    type                       = "IPsec"
    virtual_network_gateway_id = azurerm_virtual_network_gateway.module_azurerm_virtual_network_gateway.id
    local_network_gateway_id   = azurerm_local_network_gateway.module_azurerm_local_network_gateway.id
    shared_key                 = var.vpn_psk #-Provided at run time
}