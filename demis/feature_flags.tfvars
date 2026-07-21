# Map containing the Feature Flags to be activated for services
feature_flags = [
  {
    services   = ["ars-service"]
    flag_name  = "FEATURE_FLAG_ARS_VALIDATION_ENABLED"
    flag_value = true
  },
  {
    services   = ["validation-service-bedoccupancy", "validation-service-core", "validation-service-disease", "validation-service-pathogen"]
    flag_name  = "FEATURE_FLAG_COMMON_CODE_SYSTEM_TERMINOLOGY_ENABLED"
    flag_value = true
  },
  {
    services   = ["validation-service-ars", "validation-service-bedoccupancy", "validation-service-core", "validation-service-disease", "validation-service-igs", "validation-service-pathogen"]
    flag_name  = "FEATURE_FLAG_DENY_MODIFIER_EXTENSIONS"
    flag_value = true
  },
  {
    services   = ["portal-disease"]
    flag_name  = "FEATURE_FLAG_DISEASE_AUTOCOMPLETE"
    flag_value = true
  },
  {
    services   = ["futs-bedoccupancy", "futs-core", "futs-disease", "futs-igs", "futs-pathogen"]
    flag_name  = "FEATURE_FLAG_DISEASE_INDENT"
    flag_value = true
  },
  {
    services   = ["notification-processing-service"]
    flag_name  = "FEATURE_FLAG_FEIGN_INTERCEPTOR_ENABLED"
    flag_value = true
  },
  {
    services   = ["lifecycle-validation-service", "notification-processing-service"]
    flag_name  = "FEATURE_FLAG_FHIR_CORE_SPLIT"
    flag_value = true
  },
  {
    services   = ["validation-service-ars", "validation-service-igs"]
    flag_name  = "FEATURE_FLAG_FILTERED_ERRORS_AS_WARNINGS_DISABLED"
    flag_value = true
  },
  {
    services   = ["surveillance-pseudonym-service-ars"]
    flag_name  = "FEATURE_FLAG_INDIVIDUAL_PSEUDONYM"
    flag_value = true
  },
  {
    services   = ["notification-gateway"]
    flag_name  = "FEATURE_FLAG_LOINC_VERSION_VIA_PORTAL"
    flag_value = true
  },
  {
    services   = ["notification-processing-service"]
    flag_name  = "FEATURE_FLAG_NBL_FOR_NOTBYNAME_ENABLED"
    flag_value = true
  },
  {
    services   = ["notification-processing-service", "notification-routing-service"]
    flag_name  = "FEATURE_FLAG_NEW_ERROR_MESSAGE_FOR_FAILED_ROUTING"
    flag_value = true
  },
  {
    services   = ["pdfgen-service"]
    flag_name  = "FEATURE_FLAG_PDF_OPTIMIZATION"
    flag_value = true
  },
  {
    services   = ["portal-bedoccupancy", "portal-disease", "portal-igs", "portal-pathogen", "portal-shell"]
    flag_name  = "FEATURE_FLAG_PORTAL_ACCESSIBILITY"
    flag_value = true
  },
  {
    services               = ["portal-shell"]
    flag_name              = "FEATURE_FLAG_PORTAL_ARE_ENABLED"
    flag_value             = true
    synchronize_flag_value = false
  },
  {
    services   = ["portal-bedoccupancy", "portal-disease", "portal-igs", "portal-pathogen", "portal-shell"]
    flag_name  = "FEATURE_FLAG_PORTAL_HEADER_FOOTER"
    flag_value = true
  },
  {
    services   = ["notification-gateway", "portal-pathogen"]
    flag_name  = "FEATURE_FLAG_REFERENCE_FIELD"
    flag_value = true
  },
  {
    services   = ["portal-pathogen"]
    flag_name  = "FEATURE_FLAG_REMOVABLE_ANALYT"
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
    services   = ["validation-service-ars", "validation-service-bedoccupancy", "validation-service-core", "validation-service-disease", "validation-service-igs", "validation-service-pathogen"]
    flag_name  = "FEATURE_FLAG_VALIDATION_EXTENSION_CHECK_ENABLED"
    flag_value = true
  },
  {
    services   = ["notification-gateway", "portal-disease"]
    flag_name  = "FEATURE_FLAG_WITHOUT_CONTACT_POINT_USE"
    flag_value = true
  }
]
