variable "client_cimds" {
  description = <<EOT
Map of client_cimds, attributes below
Required:
    - external_client_id
Optional:
    - allowed_origins
    - app_type
    - client_metadata
    - description
    - external_client_id_version
    - grant_types
    - oidc_conformant
    - organization_discovery_methods
    - redirection_policy
    - require_proof_of_possession
    - skip_non_verifiable_callback_uri_confirmation_prompt
    - web_origins
    - default_organization (block):
        - flows (required)
        - organization_id (required)
    - jwt_configuration (block):
        - alg (optional)
        - lifetime_in_seconds (optional)
    - refresh_token (block):
        - expiration_type (optional)
        - idle_token_lifetime (optional)
        - infinite_idle_token_lifetime (optional)
        - infinite_token_lifetime (optional)
        - leeway (optional)
        - rotation_type (optional)
        - token_lifetime (optional)
    - token_quota (block):
        - client_credentials (required, block):
            - enforce (optional)
            - per_day (optional)
            - per_hour (optional)
EOT

  type = map(object({
    external_client_id                                   = string
    allowed_origins                                      = optional(list(string))
    app_type                                             = optional(string)
    client_metadata                                      = optional(map(string))
    description                                          = optional(string)
    external_client_id_version                           = optional(number)
    grant_types                                          = optional(list(string))
    oidc_conformant                                      = optional(bool)
    organization_discovery_methods                       = optional(list(string))
    redirection_policy                                   = optional(string)
    require_proof_of_possession                          = optional(bool)
    skip_non_verifiable_callback_uri_confirmation_prompt = optional(bool)
    web_origins                                          = optional(list(string))
    default_organization = optional(object({
      flows           = list(string)
      organization_id = string
    }))
    jwt_configuration = optional(object({
      alg                 = optional(string)
      lifetime_in_seconds = optional(number)
    }))
    refresh_token = optional(object({
      expiration_type              = optional(string)
      idle_token_lifetime          = optional(number)
      infinite_idle_token_lifetime = optional(bool)
      infinite_token_lifetime      = optional(bool)
      leeway                       = optional(number)
      rotation_type                = optional(string)
      token_lifetime               = optional(number)
    }))
    token_quota = optional(object({
      client_credentials = object({
        enforce  = optional(bool)
        per_day  = optional(number)
        per_hour = optional(number)
      })
    }))
  }))
}

