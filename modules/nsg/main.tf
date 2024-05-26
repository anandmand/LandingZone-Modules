resource azurerm_network_security_group module_nsg {
    name                        = "nsg-${var.policy_name_prefix}-${var.ordinal_prefix}"
    resource_group_name         = var.resource_group_name
    location                    = var.location
    tags                        = var.tags
}

resource azurerm_network_security_rule module_nsg_inbound {
    for_each                    = { for rule in var.inbound_rules : rule.name => rule }
    resource_group_name         = azurerm_network_security_group.module_nsg.resource_group_name
    network_security_group_name = azurerm_network_security_group.module_nsg.name
    direction                   = "Inbound"
    name                        = each.value.name
    priority                    = each.value.priority
    access                      = each.value.access
    protocol                    = each.value.protocol
    source_address_prefix       = lookup(each.value, "source_address_prefix", "*")
    source_port_range           = lookup(each.value, "source_port_range", "*")
    destination_address_prefix  = lookup(each.value, "destination_address_prefix", "*")
    destination_port_range      = lookup(each.value, "destination_port_range", "*")
    description                 = lookup(each.value, "description", null)
}

resource azurerm_network_security_rule module_nsg_outbound {
    for_each                    = { for rule in var.outbound_rules : rule.name => rule }
    resource_group_name         = azurerm_network_security_group.module_nsg.resource_group_name
    network_security_group_name = azurerm_network_security_group.module_nsg.name
    direction                   = "Outbound"
    name                        = each.value.name
    priority                    = each.value.priority
    access                      = each.value.access
    protocol                    = each.value.protocol
    source_address_prefix       = lookup(each.value, "source_address_prefix", "*")
    source_port_range           = lookup(each.value, "source_port_range", "*")
    destination_address_prefix  = lookup(each.value, "destination_address_prefix", "*")
    destination_port_range      = lookup(each.value, "destination_port_range", "*")
    description                 = lookup(each.value, "description", null)
}