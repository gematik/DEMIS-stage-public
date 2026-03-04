# Map containing the Feature Flags to be activated for services
feature_flags = [
  {
    services   = ["validation-service-core"]
    flag_name  = "FEATURE_FLAG_ADDITIONAL_STRICT_CODING_VALIDATOR_ENABLED"
    flag_value = true
  },
  {
    services   = ["futs-core", "futs-igs"]
    flag_name  = "FEATURE_FLAG_ADD_DESIGNATION_USE"
    flag_value = true
  },
  {
    services   = ["ars-service"]
    flag_name  = "FEATURE_FLAG_ARS_VALIDATION_ENABLED"
    flag_value = true
  },
  {
    services   = ["notification-processing-service", "lifecycle-validation-service"]
    flag_name  = "FEATURE_FLAG_CODEMAPPING_SERVICE_BASE"
    flag_value = true
  },
  {
    services   = ["pdfgen-service"]
    flag_name  = "FEATURE_FLAG_DISEASE_SECOND_PAGE"
    flag_value = true
  },
  {
    services   = ["lifecycle-validation-service"]
    flag_name  = "FEATURE_FLAG_FHIRPATH_VALIDATION_ENABLED"
    flag_value = true
  },
  {
    services   = ["surveillance-pseudonym-service-ars"]
    flag_name  = "FEATURE_FLAG_INDIVIDUAL_PSEUDONYM"
    flag_value = false
  },
  {
    services   = ["ars-service", "fhir-storage-reader", "notification-processing-service"]
    flag_name  = "FEATURE_FLAG_MOVE_ERROR_ID_TO_DIAGNOSTICS"
    flag_value = false
  },
  {
    services   = ["ars-service", "fhir-storage-reader", "fhir-storage-writer", "futs", "futs-core", "futs-igs", "gateway-igs", "hospital-location-service", "igs-service", "network-rules", "notification-gateway", "notification-processing-service", "notification-routing-service", "pdfgen-service", "policies-authorizations", "portal-bedoccupancy", "portal-disease", "portal-igs", "portal-pathogen", "portal-shell", "report-processing-service"]
    flag_name  = "FEATURE_FLAG_NEW_API_ENDPOINTS"
    flag_value = true
  },
  {
    services   = ["all"]
    flag_name  = "FEATURE_FLAG_NEW_ISTIO_SIDECAR_REQUEST_AND_LIMITS"
    flag_value = true
  },
  {
    services   = ["pdfgen-service"]
    flag_name  = "FEATURE_FLAG_NEW_PDF_SECOND_PAGE"
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
    flag_name  = "FEATURE_FLAG_PDF_OPTIMIZATION"
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
    services   = ["notification-routing-service"]
    flag_name  = "FEATURE_FLAG_SEARCH_COMPARISON"
    flag_value = true
  },
  {
    services   = ["futs-core", "futs-igs"]
    flag_name  = "FEATURE_FLAG_SNAPSHOT_6"
    flag_value = true
  },
  {
    services   = ["futs-core", "futs-igs"]
    flag_name  = "FEATURE_FLAG_SNOMED_VERSION_FROM_FUTS"
    flag_value = true
  },
  {
    services   = ["ars-service"]
    flag_name  = "FEATURE_FLAG_SURVEILLANCE_PSEUDONYM_SERVICE_ENABLED"
    flag_value = false
  }
]
