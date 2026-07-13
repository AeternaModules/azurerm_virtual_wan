variable "virtual_wans" {
  description = <<EOT
Map of virtual_wans, attributes below
Required:
    - location
    - name
    - resource_group_name
Optional:
    - allow_branch_to_branch_traffic
    - disable_vpn_encryption
    - office365_local_breakout_category
    - tags
    - type
EOT

  type = map(object({
    location                          = string
    name                              = string
    resource_group_name               = string
    allow_branch_to_branch_traffic    = optional(bool)
    disable_vpn_encryption            = optional(bool)
    office365_local_breakout_category = optional(string)
    tags                              = optional(map(string))
    type                              = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.virtual_wans : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.virtual_wans : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.virtual_wans : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.virtual_wans : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.virtual_wans : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

