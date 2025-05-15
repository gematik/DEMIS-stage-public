# Map containing the Feature Flags to be activated for services
feature_flags = [
  {
    services   = ["certificate-update-service"]
    flag_name  = "FEATURE_FLAG_IMPORT_FROM_DISK"
    flag_value = true
  }
]
