variable resource_group_name {
description = "Name of the resource group to be imported."
type        = string
}
variable location {
description = "Location of the vnet to create"
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
variable public_ip_address_id {
description = "name of azure_firewall_public_ip"
type        = string
}
variable azure_firewall_configuration {
description = "name of azure_firewall_configuration"
type        = string
}
variable subnet_id {
description = "(Required) ID for the subnet where to deploy the Azure Firewall " 
}
