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
    services   = ["validation-service-core", "validation-service-igs", "validation-service-ars"]
    flag_name  = "FEATURE_FLAG_FILTERED_VALIDATION_ERRORS_DISABLED"
    flag_value = true
  },
  {
    services   = ["futs-core"]
    flag_name  = "FEATURE_FLAG_FUTS_VALUESETS_SNOMED"
    flag_value = true
  },
  {
    services   = ["pdfgen-service"]
    flag_name  = "FEATURE_FLAG_HOSPITALIZATION_ORDER"
    flag_value = true
  },
  {
    services   = ["futs-core", "notification-gateway", "pdfgen-service"]
    flag_name  = "FEATURE_FLAG_HOSP_REASON_MOVE"
    flag_value = true
  },
  {
    services   = ["surveillance-pseudonym-service-ars"]
    flag_name  = "FEATURE_FLAG_INDIVIDUAL_PSEUDONYM"
    flag_value = true
  },
  {
    services   = ["notification-processing-service"]
    flag_name  = "FEATURE_FLAG_LV_DISEASE"
    flag_value = true
  },
  {
    services   = ["portal-pathogen", "portal-disease", "portal-bedoccupancy"]
    flag_name  = "FEATURE_FLAG_PORTAL_ERROR_DIALOG"
    flag_value = true
  },
  {
    services   = ["portal-pathogen", "portal-disease"]
    flag_name  = "FEATURE_FLAG_PORTAL_ERROR_DIALOG_ON_SUBMIT"
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
    services   = ["portal-pathogen"]
    flag_name  = "FEATURE_FLAG_PORTAL_PATHOGEN_DATEPICKER"
    flag_value = true
  },
  {
    services   = ["portal-pathogen", "portal-disease"]
    flag_name  = "FEATURE_FLAG_PORTAL_SUBMIT"
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
    services   = ["notification-gateway"]
    flag_name  = "FEATURE_FLAG_SNAPSHOT_5_3_0_ACTIVE"
    flag_value = true
  },
  {
    services   = ["ars-service"]
    flag_name  = "FEATURE_FLAG_SURVEILLANCE_PSEUDONYM_SERVICE_ENABLED"
    flag_value = true
  }
]