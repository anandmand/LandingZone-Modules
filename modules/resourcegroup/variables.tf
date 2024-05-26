variable app_name_prefix {
description = "app_name of resources that are deployed"
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
variable tags {
description = "A map of the tags to use for the module demo resources that are deployed"
type        = map
}
variable location {
type = string
description = "Prefix to be used for the resources"
}