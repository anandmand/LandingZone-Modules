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
description = "Name of the resource group to be imported."
type        = string
}

variable location {
description = "location of the vnet to create"
type        = string
}

variable peer_vpn_gateway {
description = "A list of public subnets inside the vNet."
type        = string
}

variable peer_subnet_address_spaces {
description = "location of the vnet to create"
type        = list
}

variable public_ip_address_id {
description = "location of the vnet to create"
type        = string
}

variable subnet_id {
description = "location of the vnet to create"
type        = string
}

variable vpn_connection {
description = "location of the vnet to create"
type        = string
}

variable vpn_psk {
type        = string
description = "VPN PSK"
}