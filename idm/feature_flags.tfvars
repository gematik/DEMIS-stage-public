# Map containing the Feature Flags to be activated for services
feature_flags = [
  {
    services               = ["certificate-update-service"]
    flag_name              = "FEATURE_FLAG_IMPORT_FROM_DISK"
    flag_value             = true
    synchronize_flag_value = false
  },
  {
    services   = ["certificate-update-service"]
    flag_name  = "FEATURE_FLAG_KEYCLOAK_CUS_CLIENT"
    flag_value = false
  },
  {
    services   = ["keycloak"]
    flag_name  = "FEATURE_FLAG_TOKEN_EXCHANGE_ENABLED"
    flag_value = false
  }
]
