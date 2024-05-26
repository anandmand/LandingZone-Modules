output output_subnet_id1 {
    description = "The id of the newly created vNet"
    value       = azurerm_subnet.module_subnet.0.id
}

# output output_subnet_id2 {
#     description = "The id of the newly created vNet"
#     value       = azurerm_subnet.module_subnet.1.id
# }

output output_subnet_name {
    description = "The Name of the newly created vNet"
    value       = azurerm_subnet.module_subnet.*.name
}