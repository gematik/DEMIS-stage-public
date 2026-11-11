# Map containing the Feature Flags to be activated for services
feature_flags = [
  {
    services               = ["ars-service"]
    flag_name              = "FEATURE_FLAG_ARS_BULK_ENABLED"
    flag_value             = false
    synchronize_flag_value = false
  },
  {
    services   = ["ars-service"]
    flag_name  = "FEATURE_FLAG_ARS_SENTINEL_ENABLED"
    flag_value = false
  },
  {
    services   = ["portal-bedoccupancy"]
    flag_name  = "FEATURE_FLAG_BED_A11Y_INFO_REQUIREDFIELDS"
    flag_value = true
  },
  {
    services   = ["portal-disease"]
    flag_name  = "FEATURE_FLAG_DISEASE_AUTOCOMPLETE"
    flag_value = true
  },
  {
    services   = ["futs-ars", "futs-bedoccupancy", "futs-disease", "futs-igs", "futs-pathogen"]
    flag_name  = "FEATURE_FLAG_DISEASE_INDENT"
    flag_value = true
  },
  {
    services   = ["notification-processing-service"]
    flag_name  = "FEATURE_FLAG_FEIGN_INTERCEPTOR_ENABLED"
    flag_value = true
  },
  {
    services   = ["validation-service-ars", "validation-service-igs"]
    flag_name  = "FEATURE_FLAG_FILTERED_ERRORS_AS_WARNINGS_DISABLED"
    flag_value = true
  },
  {
    services   = ["notification-processing-service"]
    flag_name  = "FEATURE_FLAG_NBL_FOR_NOTBYNAME_ENABLED"
    flag_value = true
  },
  {
    services   = ["notification-processing-service", "notification-routing-service"]
    flag_name  = "FEATURE_FLAG_PERMISSION_CHECK_ENABLED"
    flag_value = true
  },
  {
    services   = ["portal-shell"]
    flag_name  = "FEATURE_FLAG_PORTAL_ARE_ENABLED"
    flag_value = true
  },
  {
    services   = ["portal-bedoccupancy", "portal-shell"]
    flag_name  = "FEATURE_FLAG_PORTAL_BED_TEXT"
    flag_value = true
  },
  {
    services   = ["package-registry"]
    flag_name  = "FEATURE_FLAG_PR_PKG_TTL"
    flag_value = true
  },
  {
    services   = ["notification-processing-service"]
    flag_name  = "FEATURE_FLAG_RECEIPT_WITH_NBL"
    flag_value = true
  },
  {
    services   = ["validation-service-ars", "validation-service-bedoccupancy", "validation-service-disease", "validation-service-igs", "validation-service-pathogen"]
    flag_name  = "FEATURE_FLAG_REFERENCE_PROFILE_VALIDATION"
    flag_value = true
  },
  {
    services   = ["notification-routing-service"]
    flag_name  = "FEATURE_FLAG_SEARCH_COMPARISON"
    flag_value = true
  },
  {
    services   = ["portal-shell"]
    flag_name  = "FEATURE_FLAG_SURVEILLANCE_PROGRAM_ADMISSION_ENABLED"
    flag_value = true
  },
  {
    services               = ["igs-service"]
    flag_name              = "FEATURE_FLAG_USE_OBJECT_STORAGE_SERVICE_SECRET"
    flag_value             = true
    synchronize_flag_value = false
  }
]
