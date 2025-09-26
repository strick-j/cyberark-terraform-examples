# Generic Variables for providers
auth_url = "https://example.id.cyberark.cloud/oauth2/token/example_app_id"
platform_domain_name = "cyberark.cloud"
tenant_domain_name = "example_tenant"
base_url = "https://example_tenant.sca.cyberark.cloud/api"

# Policy Variables
csp = "AZURE"
roles = [{
  entity_id = "12a12345-1234-1234-abcd-12345678abcd"
  entity_source_id = "abc1df12-1234-5678-910a-abcde5671234"
  organization_id = "abc1df12-1234-5678-910a-abcde5671234"
  workspace_type = "directory"
}]
identities = [{
    entity_name = "Example Role
    entity_source_id = "0000-0000-0000-0000"
    entity_class = "role"
}]
access_rules = {
  days = [
    "sunday",
    "monday",
    "tuesday",
    "wednesday",
    "thursday",
    "friday",
    "saturday"
  ]
  from_time            = "09:00"
  to_time              = "17:00"
  max_session_duration = 1
  time_zone            = "Central/Chicago"
}

# Conjur variables
conjur_appliance_url = "https://example_tenant.secretsmgr.cyberark.cloud/api"
conjur_authn_type = "aws"
conjur_host_id = "host/data/example/example_role"
conjur_account = "conjur"
conjur_authn_service_id = "aws"

# Conjur variable names
sca_username = "data/vault/safe_name/object_name/username"
sca_password = "data/vault/safe_name/object_name/password"