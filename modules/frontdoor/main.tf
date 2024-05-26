resource azurerm_frontdoor module_azurerm_frontdoor {
  name                                         = "afd-${var.env_prefix}-${var.region_prefix}-${var.ordinal_prefix}"
  resource_group_name                          = var.resource_group_name
  #enforce_backend_pools_certificate_name_check = false

  routing_rule {
    name               = var.routing_rule
    accepted_protocols = var.accepted_protocols
    patterns_to_match  = var.patterns_to_match
    frontend_endpoints = var.frontend_endpoints
    forwarding_configuration {
      forwarding_protocol = var.forwarding_protocol
      backend_pool_name   = var.backendPool_name
    }
  }

  backend_pool_load_balancing {
    name = var.backendPool_LB
  }

  backend_pool_health_probe {
    name = var.backendPool_HP
  }

  backend_pool {
    name = var.backendPool_name
    backend {
      host_header = var.hostheader
      address     = var.hostheader
      http_port   = 80
      https_port  = 443
    }

    load_balancing_name = var.backendPool_LB
    health_probe_name   = var.backendPool_HP
  }

  frontend_endpoint {
    name                              = var.frontend_endpoint_name
    host_name                         = var.host_name
    #custom_https_provisioning_enabled = false
  }
}