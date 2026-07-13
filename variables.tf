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
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

