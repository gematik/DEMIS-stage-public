######################
# Global Options
######################
stage_name    = "local"
is_production = false

# The path to the kubeconfig file to use for the deployment
kubeconfig_path = "../infrastructure/kind-config"

# Activation of terraform provider
# List of realms to manage with the terraform provider. Only these realms will be managed by the provider.
managed_realms = ["LAB", "INSTITUTIONS-TI", "SURVEILLANCE-PROGRAMS", "HOSPITAL", "OEGD", "PORTAL", "master"]
# Comma-separated list of realms to import. Only these realms will be imported by the terraform provider to the terraform state.
# realms_to_import = ["LAB", "INSTITUTIONS-TI", "SURVEILLANCE-PROGRAMS", "HOSPITAL", "OEGD", "PORTAL", "master"]

stage_specific_keycloak_config = {
  demis_keycloak_url      = "https://auth.ingress.local"
  provider_connection_url = "http://127.0.0.1:43434"

  themes = {
    login_theme   = "demis-login-theme"
    account_theme = "keycloak.v3"
    admin_theme   = "keycloak.v2"
    email_theme   = "demis-login-theme"
  }

  oidc_idp_configs = {
    gematik-idp = {
      tokenUrl         = "https://ti-idp.ingress.local/token"
      clientId         = "GEMgematDEMHrL7S830R"
      authorizationUrl = "https://ti-idp.ingress.local/sign_response"
      issuer           = "https://ti-idp.ingress.local"
    }
    entra-id = {
      tokenUrl         = "https://login.microsoftonline.com/30092c62-4dbf-43bf-a33f-10d21b5b660a/oauth2/v2.0/token"
      clientId         = "70d5ca8b-5dc0-415e-97b3-453a97606fe9"
      authorizationUrl = "https://login.microsoftonline.com/30092c62-4dbf-43bf-a33f-10d21b5b660a/oauth2/v2.0/authorize"
      issuer           = "https://login.microsoftonline.com/30092c62-4dbf-43bf-a33f-10d21b5b660a/v2.0"
    }
  }
  realm_specifics = {
    LAB = {
      x509_cert_auth_regular_expression      = "CN=(?:LAB|DEMIS|RKI)-([\\w.-]*),OU=DEMIS,O=gematik GmbH,L=Berlin,ST=Berlin,C=DE$"
      x509_ocsp_checking_enabled             = false
      x509_cert_timestamp_validation_enabled = false
      x509_cert_auth_ocsp_fail_open          = false
    }
    HOSPITAL = {
      x509_cert_auth_regular_expression      = "CN=DEMIS-([\\w.-]*),OU=DEMIS,O=gematik GmbH,L=Berlin,ST=Berlin,C=DE$"
      x509_ocsp_checking_enabled             = false
      x509_cert_timestamp_validation_enabled = false
      x509_cert_auth_ocsp_fail_open          = false
    }
    OEGD = {
      x509_cert_auth_regular_expression      = "CN=(?:GA|OEGD|RKI)-([\\w.-]*),OU=DEMIS,O=gematik GmbH,L=Berlin,ST=Berlin,C=DE$"
      x509_ocsp_checking_enabled             = false
      x509_cert_timestamp_validation_enabled = false
      x509_cert_auth_ocsp_fail_open          = false
    }
  }
  saml_idp_configs = {
    bundid-idp = {
      service_url            = "https://bundid-idp.ingress.local/realms/BUNDID/protocol/saml"
      entity_id              = "https://bundid-idp.ingress.local/realms/BUNDID"
      name_id_policy_format  = "Persistent"
      principal_type         = "SUBJECT"
      want_assertions_signed = false
      is_enabled             = true
    }
    muk = {
      service_url            = "https://bundid-idp.ingress.local/realms/MUK/protocol/saml"
      entity_id              = "https://bundid-idp.ingress.local/realms/MUK"
      name_id_policy_format  = "Persistent"
      principal_type         = "SUBJECT"
      want_assertions_signed = false
      is_enabled             = true
    }
  }
  authenticator_configs = {
    client_id         = "GEMgematDEMHrL7S830R"
    user_agent        = "demis/1.0.0 gematik/GEMgematDEMHrL7S830R"
    openid_config_url = "https://ti-idp.ingress.local/.well-known/openid-configuration"
    default_scope     = "openid authenticator-dev"
  }
  portal_specifics = {
    demis_home_url                    = "https://portal.ingress.local"
    meldeportal_redirect_url          = ["https://portal.ingress.local/*", "https://meldung.ingress.local/*", "http://localhost:4200/*"]
    meldeportal_web_origin            = ["https://portal.ingress.local", "https://meldung.ingress.local", "http://localhost:4200"]
    meldeportal_internet_redirect_url = ["https://portal.ingress.local/*", "https://meldung.ingress.local/*", "http://localhost:4200/*"]
    meldeportal_internet_web_origin   = ["https://portal.ingress.local", "https://meldung.ingress.local", "http://localhost:4200"]
  }
}

realm_config = {
  "master" = {
    login_with_email_allowed = true
    access_token_lifespan    = "1m"
  }
  "PORTAL" = {
    login_with_email_allowed = true
  }
  "OEGD" = {
    duplicate_emails_allowed = true
  }
  "INSTITUTIONS-TI" = {
    login_with_email_allowed = true
  }
  "SURVEILLANCE-PROGRAMS" = {
    edit_username_allowed = true
  }
  "HOSPITAL" = {
    duplicate_emails_allowed = true
  }
  "LAB" = {
    duplicate_emails_allowed = true
  }
}

# Map containing the Feature Flags to be activated for services
project_feature_flags = {
  "FEATURE_FLAG_MUK_ENABLED" = true
}
