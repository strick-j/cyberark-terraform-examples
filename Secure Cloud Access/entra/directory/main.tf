# Description: This Terraform code creates a policy in Secure Cloud Access (SCA)
# using the SCA provider and retrieves credentials from Conjur.
terraform {
  required_providers {
    conjur = {
      # Provider version is 0.6.3
      source = "cyberark/conjur"
      version = "~> 0.6"
    }
    sca = {
      # Provider version is 1.0.0
      source = "cyberark/sca/sca"
    }
  }
}

# Initialize the Conjur provider
provider "conjur" {
  appliance_url = var.conjur_appliance_url
  account = var.conjur_account
  authn_type = var.conjur_authn_type
  service_id = var.conjur_authn_service_id
  host_id = var.conjur_host_id
}

# Retrieve SCA credentials from Conjur
data "conjur_secret" "sca_username" {
  name = var.sca_username
}

data "conjur_secret" "sca_password" {
  name = var.sca_password
}

# Initialize the SCA provider with credentials from Conjur
provider "sca" {
  auth_url = var.auth_url
  tenant_domain_name = var.tenant_domain_name
  platform_domain_name = var.platform_domain_name
  username = data.conjur_secret.sca_username.value
  password = data.conjur_secret.sca_password.value
}

# Create a policy in Secure Cloud Access
resource "sca_create_policy" "create_policy_example" {
  csp = var.csp
  roles = var.roles
  identities = var.identities
}