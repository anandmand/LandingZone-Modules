variable resource_group_name {
description = "Name of the resource group to be imported."
type        = string
}
variable location {
description = "Location of the vnet to create"
type        = string
}
variable subscription_prefix {
description = "subscription of resources that are deployed"
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
variable address_space {
type        = list(string)
description = "The address space that is used by the virtual network."
}
