output output_public_ip_id {
    value       = azurerm_public_ip.module_azurerm_public_ip.id
    description = "The network security group configuration ID."
}