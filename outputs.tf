output "provider_integration_authorization_lookup_azure" {
  description = "Map of azure values across all provider_integration_authorization_lookup, keyed the same as var.provider_integration_authorization_lookup except keys with no azure are omitted"
  value       = { for k, v in data.confluent_provider_integration_authorization.provider_integration_authorization_lookup : k => v.azure if v.azure != null && length(v.azure) > 0 }
}
output "provider_integration_authorization_lookup_environment" {
  description = "Map of environment values across all provider_integration_authorization_lookup, keyed the same as var.provider_integration_authorization_lookup except keys with no environment are omitted"
  value       = { for k, v in data.confluent_provider_integration_authorization.provider_integration_authorization_lookup : k => one(v.environment) if v.environment != null && length(v.environment) > 0 }
}
output "provider_integration_authorization_lookup_gcp" {
  description = "Map of gcp values across all provider_integration_authorization_lookup, keyed the same as var.provider_integration_authorization_lookup except keys with no gcp are omitted"
  value       = { for k, v in data.confluent_provider_integration_authorization.provider_integration_authorization_lookup : k => v.gcp if v.gcp != null && length(v.gcp) > 0 }
}
output "provider_integration_authorization_lookup_id" {
  description = "Map of id values across all provider_integration_authorization_lookup, keyed the same as var.provider_integration_authorization_lookup except keys with no id are omitted"
  value       = { for k, v in data.confluent_provider_integration_authorization.provider_integration_authorization_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "provider_integration_authorization_lookup_provider_integration_id" {
  description = "Map of provider_integration_id values across all provider_integration_authorization_lookup, keyed the same as var.provider_integration_authorization_lookup except keys with no provider_integration_id are omitted"
  value       = { for k, v in data.confluent_provider_integration_authorization.provider_integration_authorization_lookup : k => v.provider_integration_id if v.provider_integration_id != null && length(v.provider_integration_id) > 0 }
}

