variable "resource_group_name" {
    description = "Name of the resource group to be imported."
    type        = string
}

variable "vnet_name" {
    description = "Name of the vnet to create"
    type        = string
}

variable virtual_network_name {
   type        = string
   description = "The full Azure resource ID of the remote virtual network."
}

variable peerings {
   type        = list(map(string))
   description = "List containing the blocks for the configuration of the peerings."
  /*
  peerings = [
    {
      name                         = "peering1"
      remote_virtual_networks_id   = "vnet2"
      allow_virtual_network_access = "true"
      allow_forwarded_traffic      = "false"
      allow_gateway_transit        = "false"
      use_remote_gateways          = "true"
    }
  ]
  */
}