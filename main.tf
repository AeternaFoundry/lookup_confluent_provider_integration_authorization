data "confluent_provider_integration_authorization" "provider_integration_authorization_lookup" {
  for_each = var.provider_integration_authorization_lookup

  id = each.value.id

  environment {
    id = each.value.environment.id
  }
}

