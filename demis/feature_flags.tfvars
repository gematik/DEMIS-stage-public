# Map containing the Feature Flags to be activated for services
feature_flags = [
  {
    services   = ["portal-bedoccupancy"]
    flag_name  = "FEATURE_FLAG_BED_A11Y_INFO_REQUIREDFIELDS"
    flag_value = true
  },
  {
    services   = ["validation-service-ars", "validation-service-bedoccupancy", "validation-service-disease", "validation-service-igs", "validation-service-pathogen"]
    flag_name  = "FEATURE_FLAG_DENY_MODIFIER_EXTENSIONS"
    flag_value = true
  },
  {
    services   = ["portal-disease"]
    flag_name  = "FEATURE_FLAG_DISEASE_AUTOCOMPLETE"
    flag_value = true
  },
  {
    services   = ["futs-bedoccupancy", "futs-disease", "futs-igs", "futs-pathogen"]
    flag_name  = "FEATURE_FLAG_DISEASE_INDENT"
    flag_value = true
  },
  {
    services   = ["futs-bedoccupancy", "futs-disease", "futs-igs", "futs-pathogen"]
    flag_name  = "FEATURE_FLAG_DISEASE_QUESTIONNAIRE_ORG_INPUT_VALIDATION"
    flag_value = true
  },
  {
    services   = ["portal-disease"]
    flag_name  = "FEATURE_FLAG_DISEASE_STATUS_ORDER_NODEFAULT"
    flag_value = true
  },
  {
    services   = ["notification-processing-service"]
    flag_name  = "FEATURE_FLAG_FEIGN_INTERCEPTOR_ENABLED"
    flag_value = true
  },
  {
    services   = ["portal-pathogen"]
    flag_name  = "FEATURE_FLAG_FILTERABLE_SELECT_SUBPATHOGEN"
    flag_value = true
  },
  {
    services   = ["validation-service-ars", "validation-service-igs"]
    flag_name  = "FEATURE_FLAG_FILTERED_ERRORS_AS_WARNINGS_DISABLED"
    flag_value = true
  },
  {
    services   = ["portal-bedoccupancy", "portal-disease", "portal-igs", "portal-pathogen", "portal-shell"]
    flag_name  = "FEATURE_FLAG_FOOTER_LINKS_CORRECTION"
    flag_value = true
  },
  {
    services   = ["surveillance-pseudonym-service-ars"]
    flag_name  = "FEATURE_FLAG_INDIVIDUAL_PSEUDONYM"
    flag_value = true
  },
  {
    services   = ["notification-processing-service"]
    flag_name  = "FEATURE_FLAG_NBL_FOR_NOTBYNAME_ENABLED"
    flag_value = true
  },
  {
    services   = ["portal-bedoccupancy", "portal-disease", "portal-pathogen"]
    flag_name  = "FEATURE_FLAG_PLACEHOLDER_REMOVAL"
    flag_value = true
  },
  {
    services               = ["portal-shell"]
    flag_name              = "FEATURE_FLAG_PORTAL_ARE_ENABLED"
    flag_value             = true
    synchronize_flag_value = false
  },
  {
    services   = ["portal-bedoccupancy"]
    flag_name  = "FEATURE_FLAG_PORTAL_BED_OCCUPANCY_SIDENAV"
    flag_value = true
  },
  {
    services   = ["portal-bedoccupancy", "portal-shell"]
    flag_name  = "FEATURE_FLAG_PORTAL_BED_TEXT"
    flag_value = true
  },
  {
    services   = ["portal-disease"]
    flag_name  = "FEATURE_FLAG_PORTAL_DISEASE_LAYOUT"
    flag_value = true
  },
  {
    services   = ["portal-igs"]
    flag_name  = "FEATURE_FLAG_PORTAL_IGS_SIDENAV"
    flag_value = true
  },
  {
    services   = ["portal-shell"]
    flag_name  = "FEATURE_FLAG_PRIVACY_POLICY_TEXT_CHANGE"
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
    services   = ["notification-gateway", "portal-disease", "portal-pathogen"]
    flag_name  = "FEATURE_FLAG_REFERENCE_FIELD"
    flag_value = true
  },
  {
    services   = ["notification-routing-service"]
    flag_name  = "FEATURE_FLAG_REMOVE_SORMAS_EXCERPTS"
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
    services   = ["portal-pathogen"]
    flag_name  = "FEATURE_FLAG_UUID_VALIDATION"
    flag_value = true
  },
  {
    services   = ["validation-service-ars", "validation-service-bedoccupancy", "validation-service-disease", "validation-service-igs", "validation-service-pathogen"]
    flag_name  = "FEATURE_FLAG_VALIDATION_EXTENSION_CHECK_ENABLED"
    flag_value = true
  }
]
