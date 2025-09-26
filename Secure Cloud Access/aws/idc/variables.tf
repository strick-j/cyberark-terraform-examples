# General variables
variable "auth_url" {
  description = "Oauth2 URL for authentication"
  type        = string
}

variable "tenant_domain_name" {
  description = "The tenant subdomain, which is the same as tenant_name in the SCA REST API"
  type = string
}

variable "platform_domain_name" {
  description = "The platform domain"
  type = string
}

variable "base_url" {
  description = "SCA API base URL"
  type        = string
}

# Policy variables
variable "csp" {
  description = "The name of the cloud provider ('AWS','GCP','AZURE')"
  type        = string
}

variable "new_account" {
  description = "Is this new account"
  type        = bool
  default     = false  // True: Not supported for AWS IAM. Supported for AWS IDC, Azure, and GCP.
}

variable "roles" {
  description = "List of CloudRoles"
  type        = list(map(string))
}

variable "identities" {
  description = "List of Identities"
  type        = list(map(string))
}

variable "start_date" {
  description = "Start date of the policy in ISO 8601 format"
  type        = string
  default     = null
}

variable "end_date" {
  description = "End date of the policy in ISO 8601 format"
  type        = string
  default     = null
}

variable "access_rules" {
  description = "Access rules for the policy"
  type        = object({
    days                 = list(string)
    from_time            = optional(string, null)
    to_time              = optional(string, null)
    max_session_duration = number
    time_zone            = string
  })
  default = null
}

# Conjur variables
variable "conjur_appliance_url" {
  description = "Conjur URL"
  type = string
}

variable "conjur_authn_type" {
  description = "Conjur Authentication type"
  type = string
}

variable "conjur_account" {
  description = "Conjur Account Identifier"
  type = string
}

variable "conjur_host_id" {
  description = "Host Id"
  type = string
}

variable "conjur_authn_service_id" {
  description = "Authenticator Service Id"
  type = string
}

variable "sca_password" {
  description = "Placeholder for conjur identifier for secret retrieval"
  type = string
}

variable "sca_username" {
  description = "Placeholder for conjur identifier for secret retrieval"
  type = string
}