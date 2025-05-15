# Map containing the Feature Flags to be activated for services
feature_flags = [
  {
    services   = ["portal-disease"]
    flag_name  = "FEATURE_FLAG_DISEASE_TITLE"
    flag_value = true
  },
  {
    services   = ["validation-service-core", "validation-service-igs"]
    flag_name  = "FEATURE_FLAG_COMMON_CODE_SYSTEM_TERMINOLOGY_ENABLED"
    flag_value = true
  },
  {
    services   = ["igs-service"]
    flag_name  = "FEATURE_FLAG_VALIDATION_ENABLED"
    flag_value = true
  },
  {
    services   = ["notification-processing-service"]
    flag_name  = "FEATURE_FLAG_LV_DISEASE"
    flag_value = true
  },
  {
    services   = ["notification-processing-service", "report-processing-service", "igs-service"]
    flag_name  = "FEATURE_FLAG_CONTEXT_ENRICHMENT_SERVICE"
    flag_value = true
  },
  {
    services   = ["futs-core"]
    flag_name  = "FEATURE_FLAG_DISEASE_GROUP_TITLE"
    flag_value = true
  },
  {
    services   = ["futs-core", "notification-gateway"]
    flag_name  = "FEATURE_FLAG_HOSP_REASON_MOVE"
    flag_value = true
  },
  {
    services   = ["lifecycle-validation-service"]
    flag_name  = "FEATURE_FLAG_ACCEPTING_ANONYMOUS_NOTIFICATIONS"
    flag_value = true
  },
  {
    services   = ["notification-processing-service", "notification-routing-service"]
    flag_name  = "FEATURE_FLAG_NOTIFICATIONS_7_4"
    flag_value = true
  },
  {
    services   = ["futs-core", "portal-disease", "notification-gateway"]
    flag_name  = "FEATURE_FLAG_HOSP_COPY_CHECKBOXES"
    flag_value = true
  },
  {
    services   = ["portal-shell"]
    flag_name  = "FEATURE_FLAG_NEW_STARTPAGE_DESIGN"
    flag_value = true
  },
  {
    services   = ["futs-core"]
    flag_name  = "FEATURE_FLAG_FUTS_VALUESETS_SNOMED"
    flag_value = true
  },
  {
    services   = ["fhir-storage-writer", "fhir-storage-purger"]
    flag_name  = "FEATURE_FLAG_HAPI"
    flag_value = false
  }
]