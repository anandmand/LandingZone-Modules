variable app_name_prefix {
description = "app_name of resources that are deployed"
type        = string
default     = "security"
}

variable subscription_prefix {
description = "subscription of resources that are deployed"
type        = string
default     = "sandbox"
}

variable region_prefix {
description = "region of resources that are deployed"
type        = string
default     = "we"
}

variable ordinal_prefix {
description = "ordinal of resources that are deployed"
type        = string
default     = "001"
}

variable env_prefix {
description = "env of resources that are deployed"
type        = string
default     = "sb"
}

variable location {
type = string
default = "West Europe"
description = "Location name to be used for the resources"
}

variable tags {
description = "List of tags associated with resource"
default     = {
  "Environment"     = "SandBox"
  }
}

variable account_tier {
type        = string
description = "account_tier of storage account"
default     = "Standard"
}

variable account_replication_type {
type        = string
description = "account_tier of storage account"
default     = "LRS"
}

variable addressspace {
type        = list(string)
default     = ["10.0.0.0/16"]
description = "Specify a addressspace"
}

variable policy_name_prefix {
type        = string
default     = "paas"
description = "Specify a policy_name_prefix"
}

variable "azure_firewall_configuration" {
type        = string
default     = "afw-sb-we-configuration"
description = "Specify a azure_firewall_configuration"
}

variable service_prefix {
description = "env of resources that are deployed"
type        = string
default     = "frontend"
}

variable "fd_name" {
    type     = string
    default     = "example-FrontDoor"
  }

  variable "routing_rule" {
    type     = string
    default     = "exampleRoutingRule1"
  }

  variable "accepted_protocols" {
    type    = list
    default = ["Http", "Https"]
  }

  variable "patterns_to_match" {
    type  = list
    default = ["/*"]
  }

  variable "frontend_endpoints" {
    type    = list
    default = ["exampleFrontendEndpoint1"]
  }

  variable "forwarding_protocol" {
    type    = string
    default = "MatchRequest"
  }

  variable "backendPool_name" {
    type    = string
    default = "exampleBackendBing"
  }

  variable "backendPool_LB" {
    type    = string
    default = "exampleLoadBalancingSettings1"
  }

  variable "backendPool_HP" {
    type    = string
    default = "exampleHealthProbeSetting1"
  }

  variable "hostheader" {
    type    = string
    default = "www.bing.com"
  }

  variable "host_name" {
    type    = string
    default = "example-FrontDoor.azurefd.net"
  }

  variable "frontend_endpoint_name" {
    type    = string
    default = "exampleFrontendEndpoint1"
  }

  variable "cdn_name" {
    type     = string
    default = "RGRP-CDN"
  }

  variable "sku" {
    type    = string
    default = "Standard_Verizon"
  }

  variable "endpoint_name" {
    type     = string
    default = "Primark"
  }

  variable "origin_name" {
    type     = string
    default = "Primark"
  }

  variable "cdn_host_name" {
    type     = string
    default = "www.primark.com"
  }

  variable "publicipname" {
    type    = string
    default = "example-pip"
  }
variable "appgwname" {
    type    = string
    default = "example-appgateway"
  }
variable "appgw_sku_name" {
    type        = string
    description = "Specify the SKU name for the Azure application gateway"
    default     = "WAF_Medium"
}
variable "appgw_tier" {
    type        = string
    description = "Specify the SKU tier for the Azure application gateway"
    default     = "WAF"
}
variable "gateway_ip_configuration_name" {
    type        = string
    default     = "AGW01-IPCONFIG"
}
variable "frontend_ip_configuration_name" {
    type        = string
    default = "FENDIPCONFIG"
}
variable "backend_address_http_pool_name" {
    type        = string
    default = "HTTP-TERRAFORMPOOL"
}
variable "backend_address_https_pool_name" {
    type        = string
    default = "HTTPS-TERRAFORMPOOL"
}
variable "backend_http_settings_name" {
    type        = string
    default = "BACKENDHTTPSETTING"
}
variable "backend_https_settings_name" {
    type        = string
    default = "BACKENDHTTPSSETTING"
}
variable "appgw_list1_hostname" {
    type        = string
    default     = "dev.terraformui.com"
    description = "The hostname of Listner 1"
}
variable "certpath" {
         type        = string
         default     = "dev.terraformui.com(Internal - expires 7-25-2021).pfx"
         description = "The filename of the certificate"
}
variable public_ip {
    type = string
    default = "common_public_ip"
}

variable "peer_vpn_gateway" {
  description = "A list of public subnets inside the vNet."
  type        = string
  default     = "peer_vpn_gateway"
}

variable "peer_subnet_address_spaces" {
  description = "location of the vnet to create"
  type        = list
  default     = ["10.1.1.0/24"]
}

variable "vpn_gateway" {
  description = "location of the vnet to create"
  type        = string
  default = "vpn_gateway"
}

variable "vpn_connection" {
  description = "location of the vnet to create"
  type        = string
  default = "vpn_connection"
}

variable "vpn_psk" {
    type        = string
    description = "VPN PSK"
    default = "value"
}

variable cosmos_db_account_name {
  type        = string
  description = "The name of the network security group."
  default = "cosmosdb"
}
variable failover_location {
  type        = string
  description = "The location/region where the network security group is created. "
  default = "east us"
}
variable azurerm_cosmosdb_sql_database_name {
  type        = string
  description = "The location/region where the network security group is created. "
  default = "azurerm_cosmosdb_sql_database_name"
}
variable azurerm_cosmosdb_sql_container {
  type        = string
  description = "The location/region where the network security group is created. "
  default = "azurerm_cosmosdb_sql_container"
}