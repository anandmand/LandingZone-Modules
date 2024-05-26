variable resource_group_name {
type    = string
}
variable location {
type     = string
}
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