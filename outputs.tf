output "virtual_wans" {
  description = "All virtual_wan resources"
  value       = azurerm_virtual_wan.virtual_wans
}
output "virtual_wans_allow_branch_to_branch_traffic" {
  description = "List of allow_branch_to_branch_traffic values across all virtual_wans"
  value       = [for k, v in azurerm_virtual_wan.virtual_wans : v.allow_branch_to_branch_traffic]
}
output "virtual_wans_disable_vpn_encryption" {
  description = "List of disable_vpn_encryption values across all virtual_wans"
  value       = [for k, v in azurerm_virtual_wan.virtual_wans : v.disable_vpn_encryption]
}
output "virtual_wans_location" {
  description = "List of location values across all virtual_wans"
  value       = [for k, v in azurerm_virtual_wan.virtual_wans : v.location]
}
output "virtual_wans_name" {
  description = "List of name values across all virtual_wans"
  value       = [for k, v in azurerm_virtual_wan.virtual_wans : v.name]
}
output "virtual_wans_office365_local_breakout_category" {
  description = "List of office365_local_breakout_category values across all virtual_wans"
  value       = [for k, v in azurerm_virtual_wan.virtual_wans : v.office365_local_breakout_category]
}
output "virtual_wans_resource_group_name" {
  description = "List of resource_group_name values across all virtual_wans"
  value       = [for k, v in azurerm_virtual_wan.virtual_wans : v.resource_group_name]
}
output "virtual_wans_tags" {
  description = "List of tags values across all virtual_wans"
  value       = [for k, v in azurerm_virtual_wan.virtual_wans : v.tags]
}
output "virtual_wans_type" {
  description = "List of type values across all virtual_wans"
  value       = [for k, v in azurerm_virtual_wan.virtual_wans : v.type]
}

