variable "provider_integration_authorization_lookup" {
  description = <<EOT
Map of provider_integration_authorization_lookup, attributes below
Required:
    - id
    - environment (block):
        - id (required)
EOT

  type = map(object({
    id = string
    environment = object({
      id = string
    })
  }))
}

