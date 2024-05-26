## Block to create azure application gateway
resource azurerm_application_gateway module_azurerm_application_gateway {
    name                = "agw-${var.service_prefix}-${var.env_prefix}-${var.region_prefix}-${var.ordinal_prefix}"
    resource_group_name = var.resource_group_name
    location            = var.location
    sku {
        name     = var.appgw_sku_name
        tier     = var.appgw_tier
        capacity = 2
    }

    gateway_ip_configuration {
        name      = var.gateway_ip_configuration_name
        subnet_id = var.subnet_id
    }

    frontend_port {
        name = "HTTPPORT"
        port = 80
    }

    frontend_port {
        name = "HTTPSPORT"
        port = 443
    }

    frontend_ip_configuration {
        name                 = var.frontend_ip_configuration_name
        public_ip_address_id = var.public_ip_address_id
    }

    backend_address_pool {
        name = var.backend_address_http_pool_name
    }

    backend_address_pool {
        name = var.backend_address_https_pool_name
    }

    backend_http_settings {
        name                                = var.backend_http_settings_name
        cookie_based_affinity               = "Enabled"
        affinity_cookie_name                = "ApplicationGatewayAffinity"
        port                                = 80
        protocol                            = "Http"
        request_timeout                     = 120
        pick_host_name_from_backend_address = true
        probe_name                          = "HTTPSETTINGPROBE"
    }

    backend_http_settings {
        name                                = var.backend_https_settings_name
        cookie_based_affinity               = "Enabled"
        affinity_cookie_name                = "ApplicationGatewayAffinity"
        port                                = 443
        protocol                            = "Https"
        request_timeout                     = 120
        pick_host_name_from_backend_address = true
        probe_name                          = "HTTPSSETTINGPROBE"
    }

    http_listener {
        name                           = "HTTP-LISTENER"
        frontend_ip_configuration_name = var.frontend_ip_configuration_name
        frontend_port_name             = "HTTPPORT"
        protocol                       = "Http"
        host_name                      = var.appgw_list1_hostname
    }

    http_listener {
        name                           = "HTTPS-LISTENER"
        frontend_ip_configuration_name = var.frontend_ip_configuration_name
        frontend_port_name             = "HTTPSPORT"
        protocol                       = "Https"
        host_name                      = var.appgw_list1_hostname
        #ssl_certificate_name           = var.appgw_list1_hostname
        require_sni                    = true
    }

    request_routing_rule {
        name                       = "HTTP-RULE"
        rule_type                  = "Basic"
        http_listener_name         = "HTTP-LISTENER"
        backend_address_pool_name  = var.backend_address_http_pool_name
        backend_http_settings_name = var.backend_http_settings_name        
    }

    request_routing_rule {
        name                       = "HTTPS-TERRAFORMUI-RULE"
        rule_type                  = "Basic"
        http_listener_name         = "HTTPS-TERRAFORMUI-LISTENER"
        backend_address_pool_name  = var.backend_address_http_pool_name
        backend_http_settings_name = var.backend_https_settings_name
    }

    waf_configuration {
        enabled          = "true"
        firewall_mode    = "Prevention"
        rule_set_type    = "OWASP"
        rule_set_version = "3.0"
    }

    probe {
        name                                      = "HTTPSETTINGPROBE"
        protocol                                  = "Http"
        interval                                  = 30
        path                                      = "/"
        unhealthy_threshold                       = 3
        pick_host_name_from_backend_http_settings = "true"
        timeout                                   = 30
    }

    probe {
        name                                      = "HTTPSSETTINGPROBE"
        protocol                                  = "Https"
        interval                                  = 30
        path                                      = "/"
        unhealthy_threshold                       = 3
        pick_host_name_from_backend_http_settings = "true"
        timeout                                   = 30
    }

    # ssl_certificate {
    #     name     = var.appgw_list1_hostname
    #     data     = (filebase64(var.certpath)) ## cert needs to be present in the same location as the tf file
    #     password = "__cert__"
    # }

    # ssl_policy {
    #     policy_type = "Predefined"
    #     policy_name = "AppGwSslPolicy20170401S"
    #}
}