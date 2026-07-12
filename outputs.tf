output "virtual_wans_allow_branch_to_branch_traffic" {
  description = "Map of allow_branch_to_branch_traffic values across all virtual_wans, keyed the same as var.virtual_wans"
  value       = { for k, v in azurerm_virtual_wan.virtual_wans : k => v.allow_branch_to_branch_traffic }
}
output "virtual_wans_disable_vpn_encryption" {
  description = "Map of disable_vpn_encryption values across all virtual_wans, keyed the same as var.virtual_wans"
  value       = { for k, v in azurerm_virtual_wan.virtual_wans : k => v.disable_vpn_encryption }
}
output "virtual_wans_location" {
  description = "Map of location values across all virtual_wans, keyed the same as var.virtual_wans"
  value       = { for k, v in azurerm_virtual_wan.virtual_wans : k => v.location }
}
output "virtual_wans_name" {
  description = "Map of name values across all virtual_wans, keyed the same as var.virtual_wans"
  value       = { for k, v in azurerm_virtual_wan.virtual_wans : k => v.name }
}
output "virtual_wans_office365_local_breakout_category" {
  description = "Map of office365_local_breakout_category values across all virtual_wans, keyed the same as var.virtual_wans"
  value       = { for k, v in azurerm_virtual_wan.virtual_wans : k => v.office365_local_breakout_category }
}
output "virtual_wans_resource_group_name" {
  description = "Map of resource_group_name values across all virtual_wans, keyed the same as var.virtual_wans"
  value       = { for k, v in azurerm_virtual_wan.virtual_wans : k => v.resource_group_name }
}
output "virtual_wans_tags" {
  description = "Map of tags values across all virtual_wans, keyed the same as var.virtual_wans"
  value       = { for k, v in azurerm_virtual_wan.virtual_wans : k => v.tags }
}
output "virtual_wans_type" {
  description = "Map of type values across all virtual_wans, keyed the same as var.virtual_wans"
  value       = { for k, v in azurerm_virtual_wan.virtual_wans : k => v.type }
}

