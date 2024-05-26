resource azurerm_virtual_network_peering module_virtual_network_peering {
    for_each                     = { for peering in var.peerings : peering.name => peering }
    name                         = each.value.name
    resource_group_name          = var.resource_group_name
    virtual_network_name         = var.vnet_name
    remote_virtual_network_id    = each.value.remote_virtual_network_id
    allow_virtual_network_access = lookup(each.value, "allow_virtual_network_access", true)
    allow_forwarded_traffic      = lookup(each.value, "allow_forwarded_traffic", true)
    allow_gateway_transit        = lookup(each.value, "allow_gateway_transit", false)
    use_remote_gateways          = lookup(each.value, "use_remote_gateways", false)
}
