output "network_interface_backend_address_pool_associations" {
  description = "All network_interface_backend_address_pool_association resources"
  value       = azurerm_network_interface_backend_address_pool_association.network_interface_backend_address_pool_associations
}
output "network_interface_backend_address_pool_associations_backend_address_pool_id" {
  description = "List of backend_address_pool_id values across all network_interface_backend_address_pool_associations"
  value       = [for k, v in azurerm_network_interface_backend_address_pool_association.network_interface_backend_address_pool_associations : v.backend_address_pool_id]
}
output "network_interface_backend_address_pool_associations_ip_configuration_name" {
  description = "List of ip_configuration_name values across all network_interface_backend_address_pool_associations"
  value       = [for k, v in azurerm_network_interface_backend_address_pool_association.network_interface_backend_address_pool_associations : v.ip_configuration_name]
}
output "network_interface_backend_address_pool_associations_network_interface_id" {
  description = "List of network_interface_id values across all network_interface_backend_address_pool_associations"
  value       = [for k, v in azurerm_network_interface_backend_address_pool_association.network_interface_backend_address_pool_associations : v.network_interface_id]
}

