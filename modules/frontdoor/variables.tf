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
variable routing_rule {
type     = string
}
variable resource_group_name {
type    = string
}
variable patterns_to_match {
type  = list
}
  variable accepted_protocols {
    type    = list
  }
  variable backendPool_name {
    type    = string
  }
   variable forwarding_protocol {
    type    = string
  }
  variable backendPool_LB {
    type    = string
  }
  variable backendPool_HP {
    type    = string
  }
  variable hostheader {
    type    = string
  }
  variable frontend_endpoint_name {
    type    = string
  }
  variable host_name {
    type    = string
  }
  variable frontend_endpoints {
    type    = list
  }
  
  
  
          
  
  