output output_storage_account_id {
    description = "id of SC"
    value       = azurerm_storage_account.module_storage_account.id
}

output output_primary_blob_endpoint {
    description = "endpoint of SC"
    value       = azurerm_storage_account.module_storage_account.primary_blob_endpoint
}

output output_blob_url {
    description = "url of SC"
    value       = azurerm_storage_blob.module_blob.url
}