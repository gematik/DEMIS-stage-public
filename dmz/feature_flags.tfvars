# Map containing the Feature Flags to be activated for services
feature_flags = [
  {
    services   = ["bulk-inbound-service", "policies-authorizations"]
    flag_name  = "FEATURE_FLAG_ARS_BULK_ENABLED"
    flag_value = true
  }
]
