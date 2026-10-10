output "client_cimds_id" {
  description = "Map of id values across all client_cimds, keyed the same as var.client_cimds except keys with no id are omitted"
  value       = { for k, v in auth0_client_cimd.client_cimds : k => v.id if v.id != null && length(v.id) > 0 }
}
output "client_cimds_allowed_origins" {
  description = "Map of allowed_origins values across all client_cimds, keyed the same as var.client_cimds except keys with no allowed_origins are omitted"
  value       = { for k, v in auth0_client_cimd.client_cimds : k => v.allowed_origins if v.allowed_origins != null && length(v.allowed_origins) > 0 }
}
output "client_cimds_app_type" {
  description = "Map of app_type values across all client_cimds, keyed the same as var.client_cimds except keys with no app_type are omitted"
  value       = { for k, v in auth0_client_cimd.client_cimds : k => v.app_type if v.app_type != null && length(v.app_type) > 0 }
}
output "client_cimds_callbacks" {
  description = "Map of callbacks values across all client_cimds, keyed the same as var.client_cimds except keys with no callbacks are omitted"
  value       = { for k, v in auth0_client_cimd.client_cimds : k => v.callbacks if v.callbacks != null && length(v.callbacks) > 0 }
}
output "client_cimds_client_id" {
  description = "Map of client_id values across all client_cimds, keyed the same as var.client_cimds except keys with no client_id are omitted"
  value       = { for k, v in auth0_client_cimd.client_cimds : k => v.client_id if v.client_id != null && length(v.client_id) > 0 }
}
output "client_cimds_client_metadata" {
  description = "Map of client_metadata values across all client_cimds, keyed the same as var.client_cimds except keys with no client_metadata are omitted"
  value       = { for k, v in auth0_client_cimd.client_cimds : k => v.client_metadata if v.client_metadata != null && length(v.client_metadata) > 0 }
}
output "client_cimds_default_organization" {
  description = "Map of default_organization values across all client_cimds, keyed the same as var.client_cimds except keys with no default_organization are omitted"
  value       = { for k, v in auth0_client_cimd.client_cimds : k => one(v.default_organization) if v.default_organization != null && length(v.default_organization) > 0 }
}
output "client_cimds_description" {
  description = "Map of description values across all client_cimds, keyed the same as var.client_cimds except keys with no description are omitted"
  value       = { for k, v in auth0_client_cimd.client_cimds : k => v.description if v.description != null && length(v.description) > 0 }
}
output "client_cimds_external_client_id" {
  description = "Map of external_client_id values across all client_cimds, keyed the same as var.client_cimds except keys with no external_client_id are omitted"
  value       = { for k, v in auth0_client_cimd.client_cimds : k => v.external_client_id if v.external_client_id != null && length(v.external_client_id) > 0 }
}
output "client_cimds_external_client_id_version" {
  description = "Map of external_client_id_version values across all client_cimds, keyed the same as var.client_cimds except keys with no external_client_id_version are omitted"
  value       = { for k, v in auth0_client_cimd.client_cimds : k => v.external_client_id_version if v.external_client_id_version != null }
}
output "client_cimds_external_metadata_created_by" {
  description = "Map of external_metadata_created_by values across all client_cimds, keyed the same as var.client_cimds except keys with no external_metadata_created_by are omitted"
  value       = { for k, v in auth0_client_cimd.client_cimds : k => v.external_metadata_created_by if v.external_metadata_created_by != null && length(v.external_metadata_created_by) > 0 }
}
output "client_cimds_external_metadata_type" {
  description = "Map of external_metadata_type values across all client_cimds, keyed the same as var.client_cimds except keys with no external_metadata_type are omitted"
  value       = { for k, v in auth0_client_cimd.client_cimds : k => v.external_metadata_type if v.external_metadata_type != null && length(v.external_metadata_type) > 0 }
}
output "client_cimds_grant_types" {
  description = "Map of grant_types values across all client_cimds, keyed the same as var.client_cimds except keys with no grant_types are omitted"
  value       = { for k, v in auth0_client_cimd.client_cimds : k => v.grant_types if v.grant_types != null && length(v.grant_types) > 0 }
}
output "client_cimds_is_first_party" {
  description = "Map of is_first_party values across all client_cimds, keyed the same as var.client_cimds except keys with no is_first_party are omitted"
  value       = { for k, v in auth0_client_cimd.client_cimds : k => v.is_first_party if v.is_first_party != null }
}
output "client_cimds_jwks_uri" {
  description = "Map of jwks_uri values across all client_cimds, keyed the same as var.client_cimds except keys with no jwks_uri are omitted"
  value       = { for k, v in auth0_client_cimd.client_cimds : k => v.jwks_uri if v.jwks_uri != null && length(v.jwks_uri) > 0 }
}
output "client_cimds_jwt_configuration" {
  description = "Map of jwt_configuration values across all client_cimds, keyed the same as var.client_cimds except keys with no jwt_configuration are omitted"
  value       = { for k, v in auth0_client_cimd.client_cimds : k => one(v.jwt_configuration) if v.jwt_configuration != null && length(v.jwt_configuration) > 0 }
}
output "client_cimds_logo_uri" {
  description = "Map of logo_uri values across all client_cimds, keyed the same as var.client_cimds except keys with no logo_uri are omitted"
  value       = { for k, v in auth0_client_cimd.client_cimds : k => v.logo_uri if v.logo_uri != null && length(v.logo_uri) > 0 }
}
output "client_cimds_name" {
  description = "Map of name values across all client_cimds, keyed the same as var.client_cimds except keys with no name are omitted"
  value       = { for k, v in auth0_client_cimd.client_cimds : k => v.name if v.name != null && length(v.name) > 0 }
}
output "client_cimds_oidc_conformant" {
  description = "Map of oidc_conformant values across all client_cimds, keyed the same as var.client_cimds except keys with no oidc_conformant are omitted"
  value       = { for k, v in auth0_client_cimd.client_cimds : k => v.oidc_conformant if v.oidc_conformant != null }
}
output "client_cimds_organization_discovery_methods" {
  description = "Map of organization_discovery_methods values across all client_cimds, keyed the same as var.client_cimds except keys with no organization_discovery_methods are omitted"
  value       = { for k, v in auth0_client_cimd.client_cimds : k => v.organization_discovery_methods if v.organization_discovery_methods != null && length(v.organization_discovery_methods) > 0 }
}
output "client_cimds_redirection_policy" {
  description = "Map of redirection_policy values across all client_cimds, keyed the same as var.client_cimds except keys with no redirection_policy are omitted"
  value       = { for k, v in auth0_client_cimd.client_cimds : k => v.redirection_policy if v.redirection_policy != null && length(v.redirection_policy) > 0 }
}
output "client_cimds_refresh_token" {
  description = "Map of refresh_token values across all client_cimds, keyed the same as var.client_cimds except keys with no refresh_token are omitted"
  value       = { for k, v in auth0_client_cimd.client_cimds : k => one(v.refresh_token) if v.refresh_token != null && length(v.refresh_token) > 0 }
}
output "client_cimds_require_proof_of_possession" {
  description = "Map of require_proof_of_possession values across all client_cimds, keyed the same as var.client_cimds except keys with no require_proof_of_possession are omitted"
  value       = { for k, v in auth0_client_cimd.client_cimds : k => v.require_proof_of_possession if v.require_proof_of_possession != null }
}
output "client_cimds_signing_keys" {
  description = "Map of signing_keys values across all client_cimds, keyed the same as var.client_cimds except keys with no signing_keys are omitted"
  value       = { for k, v in auth0_client_cimd.client_cimds : k => v.signing_keys if v.signing_keys != null && length(v.signing_keys) > 0 }
  sensitive   = true
}
output "client_cimds_skip_non_verifiable_callback_uri_confirmation_prompt" {
  description = "Map of skip_non_verifiable_callback_uri_confirmation_prompt values across all client_cimds, keyed the same as var.client_cimds except keys with no skip_non_verifiable_callback_uri_confirmation_prompt are omitted"
  value       = { for k, v in auth0_client_cimd.client_cimds : k => v.skip_non_verifiable_callback_uri_confirmation_prompt if v.skip_non_verifiable_callback_uri_confirmation_prompt != null }
}
output "client_cimds_third_party_security_mode" {
  description = "Map of third_party_security_mode values across all client_cimds, keyed the same as var.client_cimds except keys with no third_party_security_mode are omitted"
  value       = { for k, v in auth0_client_cimd.client_cimds : k => v.third_party_security_mode if v.third_party_security_mode != null && length(v.third_party_security_mode) > 0 }
}
output "client_cimds_token_quota" {
  description = "Map of token_quota values across all client_cimds, keyed the same as var.client_cimds except keys with no token_quota are omitted"
  value       = { for k, v in auth0_client_cimd.client_cimds : k => one(v.token_quota) if v.token_quota != null && length(v.token_quota) > 0 }
}
output "client_cimds_validation" {
  description = "Map of validation values across all client_cimds, keyed the same as var.client_cimds except keys with no validation are omitted"
  value       = { for k, v in auth0_client_cimd.client_cimds : k => v.validation if v.validation != null && length(v.validation) > 0 }
}
output "client_cimds_web_origins" {
  description = "Map of web_origins values across all client_cimds, keyed the same as var.client_cimds except keys with no web_origins are omitted"
  value       = { for k, v in auth0_client_cimd.client_cimds : k => v.web_origins if v.web_origins != null && length(v.web_origins) > 0 }
}

