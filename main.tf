resource "auth0_client_cimd" "client_cimds" {
  for_each = var.client_cimds

  external_client_id                                   = each.value.external_client_id
  allowed_origins                                      = each.value.allowed_origins
  app_type                                             = each.value.app_type
  client_metadata                                      = each.value.client_metadata
  description                                          = each.value.description
  external_client_id_version                           = each.value.external_client_id_version
  grant_types                                          = each.value.grant_types
  oidc_conformant                                      = each.value.oidc_conformant
  organization_discovery_methods                       = each.value.organization_discovery_methods
  redirection_policy                                   = each.value.redirection_policy
  require_proof_of_possession                          = each.value.require_proof_of_possession
  skip_non_verifiable_callback_uri_confirmation_prompt = each.value.skip_non_verifiable_callback_uri_confirmation_prompt
  web_origins                                          = each.value.web_origins

  dynamic "default_organization" {
    for_each = each.value.default_organization != null ? [each.value.default_organization] : []
    content {
      flows           = default_organization.value.flows
      organization_id = default_organization.value.organization_id
    }
  }

  dynamic "jwt_configuration" {
    for_each = each.value.jwt_configuration != null ? [each.value.jwt_configuration] : []
    content {
      alg                 = jwt_configuration.value.alg
      lifetime_in_seconds = jwt_configuration.value.lifetime_in_seconds
    }
  }

  dynamic "refresh_token" {
    for_each = each.value.refresh_token != null ? [each.value.refresh_token] : []
    content {
      expiration_type              = refresh_token.value.expiration_type
      idle_token_lifetime          = refresh_token.value.idle_token_lifetime
      infinite_idle_token_lifetime = refresh_token.value.infinite_idle_token_lifetime
      infinite_token_lifetime      = refresh_token.value.infinite_token_lifetime
      leeway                       = refresh_token.value.leeway
      rotation_type                = refresh_token.value.rotation_type
      token_lifetime               = refresh_token.value.token_lifetime
    }
  }

  dynamic "token_quota" {
    for_each = each.value.token_quota != null ? [each.value.token_quota] : []
    content {
      client_credentials {
        enforce  = token_quota.value.client_credentials.enforce
        per_day  = token_quota.value.client_credentials.per_day
        per_hour = token_quota.value.client_credentials.per_hour
      }
    }
  }
}

