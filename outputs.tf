output "network_interface_backend_address_pool_associations_backend_address_pool_id" {
  description = "Map of backend_address_pool_id values across all network_interface_backend_address_pool_associations, keyed the same as var.network_interface_backend_address_pool_associations"
  value       = { for k, v in azurerm_network_interface_backend_address_pool_association.network_interface_backend_address_pool_associations : k => v.backend_address_pool_id }
}
output "network_interface_backend_address_pool_associations_ip_configuration_name" {
  description = "Map of ip_configuration_name values across all network_interface_backend_address_pool_associations, keyed the same as var.network_interface_backend_address_pool_associations"
  value       = { for k, v in azurerm_network_interface_backend_address_pool_association.network_interface_backend_address_pool_associations : k => v.ip_configuration_name }
}
output "network_interface_backend_address_pool_associations_network_interface_id" {
  description = "Map of network_interface_id values across all network_interface_backend_address_pool_associations, keyed the same as var.network_interface_backend_address_pool_associations"
  value       = { for k, v in azurerm_network_interface_backend_address_pool_association.network_interface_backend_address_pool_associations : k => v.network_interface_id }
}

