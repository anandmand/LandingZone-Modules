variable service_prefix {
description = "env of resources that are deployed"
type        = string
}
variable env_prefix {
description = "env of resources that are deployed"
type        = string
}
variable region_prefix {
description = "region of resources that are deployed"
type        = string
}
variable ordinal_prefix {
description = "ordinal of resources that are deployed"
type        = string
}
variable resource_group_name {
type    = string
}
variable location {
type     = string
}
variable appgw_sku_name {
type        = string
description = "Specify the SKU name for the Azure application gateway"
}
variable appgw_tier {
type        = string
description = "Specify the SKU tier for the Azure application gateway"
}
variable gateway_ip_configuration_name {
type        = string
}
variable public_ip_address_id {
type = string
}
variable subnet_id {
type = string
}
variable frontend_ip_configuration_name {
type        = string
}
variable backend_address_http_pool_name {
type        = string
}
variable backend_address_https_pool_name {
type        = string
}
variable backend_http_settings_name {
type        = string
}
variable backend_https_settings_name {
type        = string
}
variable appgw_list1_hostname {
type        = string
default     = "dev.terraformui.com"
description = "The hostname of Listner 1"
}
variable certpath {
type        = string
default     = "dev.terraformui.com(Internal - expires 7-25-2021).pfx"
description = "The filename of the certificate"
}