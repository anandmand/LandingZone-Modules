output output_azure_firewall_configuration_name {
    description = "The id of the newly created vNet"
    value       = azurerm_firewall.module_azurerm_firewall.sku_name
}

output output_azure_firewall_configuration_id {
    description = "The id of the newly created vNet"
    value       = azurerm_firewall.module_azurerm_firewall.id
}

# output output_azurerm_firewall_application_rule_collection {
#     value= azurerm_firewall_application_rule_collection.example.id
# }