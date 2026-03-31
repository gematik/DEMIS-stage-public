# Map containing the Feature Flags to be activated for services
feature_flags = [
  {
    services   = ["ars-service"]
    flag_name  = "FEATURE_FLAG_ARS_VALIDATION_ENABLED"
    flag_value = true
  },
  {
    services   = ["validation-service-core"]
    flag_name  = "FEATURE_FLAG_COMMON_CODE_SYSTEM_TERMINOLOGY_ENABLED"
    flag_value = true
  },
  {
    services   = ["lifecycle-validation-service"]
    flag_name  = "FEATURE_FLAG_FHIRPATH_VALIDATION_ENABLED"
    flag_value = true
  },
  {
    services   = ["notification-gateway", "notification-processing-service", "notification-routing-service"]
    flag_name  = "FEATURE_FLAG_FOLLOW_UP_NOTIFICATION"
    flag_value = true
  },
  {
    services   = ["portal-disease", "portal-shell"]
    flag_name  = "FEATURE_FLAG_FOLLOW_UP_NOTIFICATION_PORTAL_DISEASE"
    flag_value = true
  },
  {
    services   = ["portal-pathogen", "portal-shell"]
    flag_name  = "FEATURE_FLAG_FOLLOW_UP_NOTIFICATION_PORTAL_PATHOGEN"
    flag_value = true
  },
  {
    services   = ["surveillance-pseudonym-service-ars"]
    flag_name  = "FEATURE_FLAG_INDIVIDUAL_PSEUDONYM"
    flag_value = false
  },
  {
    services   = ["portal-disease", "portal-pathogen"]
    flag_name  = "FEATURE_FLAG_MIXED_FOLLOW_UP"
    flag_value = true
  },
  {
    services   = ["ars-service", "fhir-storage-reader", "notification-processing-service"]
    flag_name  = "FEATURE_FLAG_MOVE_ERROR_ID_TO_DIAGNOSTICS"
    flag_value = false
  },
  {
    services   = ["notification-processing-service"]
    flag_name  = "FEATURE_FLAG_NBL_FOR_NOTBYNAME_ENABLED"
    flag_value = false
  },
  {
    services   = ["all"]
    flag_name  = "FEATURE_FLAG_NEW_ISTIO_SIDECAR_REQUEST_AND_LIMITS"
    flag_value = true
  },
  {
    services   = ["notification-gateway"]
    flag_name  = "FEATURE_FLAG_OTH_PRIVAT_LAB_SUBMITTER_ASSIGNMENT_DISABLED"
    flag_value = true
  },
  {
    services   = ["portal-disease"]
    flag_name  = "FEATURE_FLAG_OUTLINE_DESIGN"
    flag_value = true
  },
  {
    services   = ["futs-core", "futs-igs", "validation-service-ars", "validation-service-core", "validation-service-igs"]
    flag_name  = "FEATURE_FLAG_PACKAGE_REGISTRY_ENABLED"
    flag_value = true
  },
  {
    services   = ["pdfgen-service"]
    flag_name  = "FEATURE_FLAG_PDF_LABEL"
    flag_value = true
  },
  {
    services   = ["portal-bedoccupancy", "portal-disease", "portal-igs", "portal-pathogen", "portal-shell"]
    flag_name  = "FEATURE_FLAG_PORTAL_ACCESSIBILITY"
    flag_value = true
  },
  {
    services   = ["portal-bedoccupancy", "portal-disease", "portal-igs", "portal-pathogen", "portal-shell"]
    flag_name  = "FEATURE_FLAG_PORTAL_HEADER_FOOTER"
    flag_value = true
  },
  {
    services   = ["portal-shell"]
    flag_name  = "FEATURE_FLAG_PORTAL_TEXT"
    flag_value = true
  },
  {
    services   = ["portal-shell"]
    flag_name  = "FEATURE_FLAG_PORTAL_WELCOME_PAGE_A11Y"
    flag_value = true
  },
  {
    services   = ["notification-processing-service", "report-processing-service"]
    flag_name  = "FEATURE_FLAG_RELAXED_VALIDATION"
    flag_value = true
  },
  {
    services   = ["lifecycle-validation-service"]
    flag_name  = "FEATURE_FLAG_RETURN_DISEASE_FHIRPATH_VALIDATION_IN_RESPONSES"
    flag_value = true
  },
  {
    services   = ["lifecycle-validation-service"]
    flag_name  = "FEATURE_FLAG_RETURN_FHIRPATH_VALIDATION_IN_RESPONSES"
    flag_value = true
  },
  {
    services   = ["notification-routing-service"]
    flag_name  = "FEATURE_FLAG_SEARCH_COMPARISON"
    flag_value = true
  },
  {
    services   = ["ars-service"]
    flag_name  = "FEATURE_FLAG_SURVEILLANCE_PSEUDONYM_SERVICE_ENABLED"
    flag_value = false
  },
  {
    services   = ["notification-gateway", "portal-pathogen"]
    flag_name  = "FEATURE_FLAG_WITHOUT_CONTACT_POINT_USE"
    flag_value = true
  }
]
