variable app_name_prefix {
description = "app_name of resources that are deployed"
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
type        = string
description = "Name of resource group"
}
variable location {
type        = string
description = "Azure location of storage account environment"
}
variable account_tier {
type        = string
description = "account_tier of storage account"
}
variable account_replication_type {
type        = string
description = "account_tier of storage account"
}