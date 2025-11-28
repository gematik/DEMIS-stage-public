# Map containing the Feature Flags to be activated for services
feature_flags = [
  {
    services   = ["lifecycle-validation-service"]
    flag_name  = "FEATURE_FLAG_ACCEPTING_ANONYMOUS_NOTIFICATIONS"
    flag_value = true
  },
  {
    services   = ["ars-service"]
    flag_name  = "FEATURE_FLAG_ARS_VALIDATION_ENABLED"
    flag_value = true
  },
  {
    services   = ["portal-disease", "futs-core", "futs-igs"]
    flag_name  = "FEATURE_FLAG_DISEASE_DATEPICKER"
    flag_value = true
  },
  {
    services   = ["validation-service-core", "validation-service-igs", "validation-service-ars"]
    flag_name  = "FEATURE_FLAG_FILTERED_VALIDATION_ERRORS_DISABLED"
    flag_value = true
  },
  {
    services   = ["pdfgen-service"]
    flag_name  = "FEATURE_FLAG_HOSPITALIZATION_ORDER"
    flag_value = true
  },
  {
    services   = ["surveillance-pseudonym-service-ars"]
    flag_name  = "FEATURE_FLAG_INDIVIDUAL_PSEUDONYM"
    flag_value = false
  },
  {
    services   = ["notification-processing-service"]
    flag_name  = "FEATURE_FLAG_LV_DISEASE"
    flag_value = true
  },
  {
    services   = ["notification-processing-service", "notification-routing-service", "pdfgen-service", "report-processing-service", "igs-service", "ars-service", "fhir-storage-reader", "fhir-storage-writer", "hospital-location-service", "futs", "futs-core", "futs-igs", "policies-authorizations", "network-rules", "notification-gateway", "portal-pathogen", "portal-bedoccupancy", "portal-disease", "portal-shell", "portal-igs", "gateway-igs"]
    flag_name  = "FEATURE_FLAG_NEW_API_ENDPOINTS"
    flag_value = true
  },
  {
    services   = ["all", "context-enrichment-service", "postgres", "pgbouncer", "destination-lookup-writer", "destination-lookup-reader", "pseudonymization-service"]
    flag_name  = "FEATURE_FLAG_NEW_ISTIO_SIDECAR_REQUEST_AND_LIMITS"
    flag_value = true
  },
  {
    services   = ["pdfgen-service"]
    flag_name  = "FEATURE_FLAG_NEW_PDF_SECOND_PAGE"
    flag_value = true
  },
  {
    services   = ["portal-pathogen", "portal-disease", "portal-bedoccupancy"]
    flag_name  = "FEATURE_FLAG_PORTAL_ERROR_DIALOG"
    flag_value = true
  },
  {
    services   = ["portal-shell"]
    flag_name  = "FEATURE_FLAG_PORTAL_INFOBANNER"
    flag_value = true
  },
  {
    services   = ["portal-pathogen", "portal-disease", "portal-bedoccupancy"]
    flag_name  = "FEATURE_FLAG_PORTAL_PASTEBOX"
    flag_value = true
  },
  {
    services   = ["notification-processing-service", "report-processing-service"]
    flag_name  = "FEATURE_FLAG_RELAXED_VALIDATION"
    flag_value = true
  },
  {
    services   = ["notification-routing-service"]
    flag_name  = "FEATURE_FLAG_SEARCH_COMPARISON"
    flag_value = true
  },
  {
    services   = ["notification-gateway", "futs-core", "futs-igs"]
    flag_name  = "FEATURE_FLAG_SNAPSHOT_6_ACTIVE"
    flag_value = true
  },
  {
    services   = ["ars-service"]
    flag_name  = "FEATURE_FLAG_SURVEILLANCE_PSEUDONYM_SERVICE_ENABLED"
    flag_value = false
  }
]
