# Create a Azure Firewall Network Rule for DNS
resource azurerm_firewall_network_rule_collection module_azurerm_firewall_network_rule_collection {
  name                = "azure-firewall-dns-rule"
  azure_firewall_name = azurerm_firewall.module_azurerm_firewall.name
  resource_group_name = var.resource_group_name
  priority            = 100
  action              = "Allow"

  rule {
    name = "DNS"
    source_addresses = ["10.0.0.0/16"]
    destination_ports = ["53"]
    destination_addresses = ["8.8.8.8","8.8.4.4"]
    protocols = ["TCP","UDP"]
  }
}

# # Create a Azure Firewall Network Rule for Web access
# resource azurerm_firewall_network_rule_collection module_azurerm_firewall_network_rule_collection1 {
#   name                = "azure-firewall-web-rule"
#   azure_firewall_name = azurerm_firewall.module_azurerm_firewall.name
#   resource_group_name = var.resource_group_name
#   priority            = 101
#   action              = "Allow"

#   rule {
#     name = "HTTP"
#     source_addresses = [var.environment-cidr]
#     destination_ports = ["80"]
#     destination_addresses = ["*"]
#     protocols = ["TCP"]
#   }

#   rule {
#     name = "HTTPS"
#     source_addresses = [var.environment-cidr]
#     destination_ports = ["443"]
#     destination_addresses = ["*"]
#     protocols = ["TCP"]
#   }
# }

# # Create a Azure Firewall Network Rule for Network Services
# resource azurerm_firewall_network_rule_collection module_azurerm_firewall_network_rule_collection2 {
#   name                = "azure-firewall-network-services-rule"
#   azure_firewall_name = azurerm_firewall.module_azurerm_firewall.name
#   resource_group_name = var.resource_group_name
#   priority            = 102
#   action              = "Allow"

#   rule {
#     name = "NTP"
#     source_addresses = [var.environment-cidr]
#     destination_ports = ["123"]
#     destination_addresses = ["*"]
#     protocols = ["TCP"]
#   }
# }

# # Create a Azure Firewall Network Rule to Send Emails
# resource azurerm_firewall_network_rule_collection module_azurerm_firewall_network_rule_collection3 {
#   name                = "azure-firewall-mail-rule"
#   azure_firewall_name = azurerm_firewall.module_azurerm_firewall.name
#   resource_group_name = var.resource_group_name
#   priority            = 103
#   action              = "Allow"

#   rule {
#     name = "SMTP"
#     source_addresses = [var.environment-cidr]
#     destination_ports = ["25"]
#     destination_addresses = ["*"]
#     protocols = ["TCP"]
#   }
  
#   rule {
#     name = "SMTPS"
#     source_addresses = [var.environment-cidr]
#     destination_ports = ["587"]
#     destination_addresses = ["*"]
#     protocols = ["TCP"]
#   }
# }

# # Create a Azure Firewall Network Rule for Azure Active Directoy
# resource azurerm_firewall_network_rule_collection module_azurerm_firewall_network_rule_collection4 {
#   name                = "azure-firewall-azure-ad-rule"
#   azure_firewall_name = azurerm_firewall.module_azurerm_firewall.name
#   resource_group_name = var.resource_group_name
#   priority            = 104
#   action              = "Allow"

#   rule {
#     name = "Azure-AD"
#     source_addresses = [var.environment-cidr]
#     destination_ports = ["*"]
#     destination_addresses = ["AzureActiveDirectory"]
#     protocols = ["TCP","UDP"]
#   }
# }

# #######################################
# ## Azure Firewall Applications Rules ##
# #######################################

# # Create a Azure Firewall Application Rule for Windows Update
# resource azurerm_firewall_application_rule_collection module_azurerm_firewall_application_rule_collection5 {
#   name                = "azure-firewall-windows-update-rule"
#   azure_firewall_name = azurerm_firewall.module_azurerm_firewall.name
#   resource_group_name = var.resource_group_name
#   priority            = 1000
#   action              = "Allow"

#   rule {
#     name = "Windows Update"
#     source_addresses = ["10.0.0.0/16"]
#     fqdn_tags = ["WindowsUpdate"]
#   }
# }

# # Create a Azure Firewall Application Rule for Technologies Websites
# resource azurerm_firewall_application_rule_collection module_azurerm_firewall_application_rule_collection6 {
#   name                = "azure-firewall-tech-websites"
#    azure_firewall_name = azurerm_firewall.module_azurerm_firewall.name
#   resource_group_name = var.resource_group_name
#   priority            = 1001
#   action              = "Allow"
  
#   rule {
#     name = "Microsoft"
#     source_addresses = ["10.0.0.0/16"]
#     target_fqdns = ["*.microsoft.com"]
#     protocol {
#       port = "443"
#       type = "Https"
#     }
#   }
  
#   rule {
#     name = "Google"
#     source_addresses = ["10.0.0.0/16"]
#     target_fqdns = ["*.google.com"]
#     protocol {
#       port = "443"
#       type = "Https"
#     }
#   }
# }