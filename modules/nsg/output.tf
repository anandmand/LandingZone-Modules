output output_nsg_id {
    value       = azurerm_network_security_group.module_nsg.id
    description = "The network security group configuration ID."
}
output output_nsg_name {
    value       = azurerm_network_security_group.module_nsg.name
    description = "The name of the network security group."
}
output output_nsg_resource_group_name {
    value       = azurerm_network_security_group.module_nsg.resource_group_name
    description = "The name of the resource group in which to create the network security group."
}
output output_nsg_location {
    value       = azurerm_network_security_group.module_nsg.location
    description = "The location/region where the network security group is created."
}
output output_nsg_inbound_rules {
     value       = { for rule in azurerm_network_security_rule.module_nsg_inbound : rule.name => rule }
     description = "Blocks containing configuration of each inbound security rule."
  /*module.MODULE_NAME.inbound_rules["INBOUND_RULE_NAME"].id*/
}
output output_nsg_outbound_rules {
     value       = { for rule in azurerm_network_security_rule.module_nsg_outbound : rule.name => rule }
    description = "Blocks containing configuration of each outbound security rule."
  /*module.MODULE_NAME.outbound_rules["OUTBOUND_RULE_NAME"].id*/
}
output output_nsg_tags {
    value       = azurerm_network_security_group.module_nsg.tags
    description = "The tags assigned to the resource."
}