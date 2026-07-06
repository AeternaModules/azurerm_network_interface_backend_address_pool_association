variable "network_interface_backend_address_pool_associations" {
  description = <<EOT
Map of network_interface_backend_address_pool_associations, attributes below
Required:
    - backend_address_pool_id
    - ip_configuration_name
    - network_interface_id
EOT

  type = map(object({
    backend_address_pool_id = string
    ip_configuration_name   = string
    network_interface_id    = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.network_interface_backend_address_pool_associations : (
        length(v.ip_configuration_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  # --- Unconfirmed validation candidates, derived from azurerm_network_interface_backend_address_pool_association's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: network_interface_id
  #   source:    [from commonids.ValidateNetworkInterfaceID] !ok
  # path: network_interface_id
  #   source:    [from commonids.ValidateNetworkInterfaceID] err != nil
  # path: backend_address_pool_id
  #   source:    [from loadbalancers.ValidateBackendAddressPoolID] !ok
  # path: backend_address_pool_id
  #   source:    [from loadbalancers.ValidateBackendAddressPoolID] err != nil
}

