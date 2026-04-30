# Map containing the Config Options to be activated for services
config_options = [
  {
    services     = ["keycloak"]
    option_name  = "ALLOWED_CLIENT_IDS"
    option_value = "meldeportal,meldeportal-internet"
  },
  {
    services                 = ["certificate-update-service"]
    option_name              = "CERT_ROOT_FOLDER_PATH"
    option_value             = "config/"
    synchronize_option_value = false
  },
  {
    services                 = ["keycloak"]
    option_name              = "JWT_VALIDATION_EXPECTED_ISSUER"
    option_value             = null
    synchronize_option_value = false
  },
  {
    services                 = ["keycloak"]
    option_name              = "JWT_VALIDATION_EXPECTED_SCOPE"
    option_value             = null
    synchronize_option_value = false
  },
  {
    services                 = ["keycloak"]
    option_name              = "JWT_VALIDATION_ISSUER_CERTIFICATE"
    option_value             = null
    synchronize_option_value = false
  },
  {
    services                 = ["keycloak"]
    option_name              = "JWT_VALIDATION_VERIFICATION_KEY"
    option_value             = "MFowFAYHKoZIzj0CAQYJKyQDAwIIAQEHA0IABJZQrG1NWxIB3kz/6Z2zojlkJqN3vJXZ3EZnJ6JXTXw5ZDFZ5XjwWmtgfomv3VOV7qzI5ycUSJysMWDEu3mqRcY="
    synchronize_option_value = false
  },
  {
    services     = ["keycloak"]
    option_name  = "ONLINE_SERVICE_ID"
    option_value = "BMI-A2623"
  },
  {
    services     = ["keycloak"]
    option_name  = "SURVEILLANCE_PROGRAM_MANAGEMENT_REALM"
    option_value = "SURVEILLANCE-PROGRAMS"
  },
  {
    services     = ["keycloak"]
    option_name  = "USER_REALM"
    option_value = "PORTAL"
  }
]
