# Map containing the Configuration Options to be activated for services
config_options = [
  {
    services     = ["postgres"]
    option_name  = "CONFIG_KEYCLOAK_DB"
    option_value = false
  },
  {
    services     = ["postgres"]
    option_name  = "CONFIG_BUNDID_DB"
    option_value = false
  },
  {
    services     = ["portal-shell"]
    option_name  = "CONFIG_TOKEN_INJECTION_ENABLED"
    option_value = true
  },
  {
    services     = ["report-processing-service"]
    option_name  = "DEMIS_IDP_VALIDATE_JWT"
    option_value = false
  },
  {
    services     = ["futs-core", "futs-igs"]
    option_name  = "DATA_NOTIFICATION_CATEGORY_FILTER_ACTIVE"
    option_value = true
  },
  {
    services     = ["futs-core", "futs-igs"]
    option_name  = "ADD_TEST_DATA_ERROR_CASE_FOR_LAB"
    option_value = true
  },
  {
    services     = ["futs-core", "futs-igs"]
    option_name  = "ADD_TEST_DATA_LABORATORY_SORTING"
    option_value = true
  },
  {
    services     = ["pseudonymization-service"]
    option_name  = "SECRETS_ONE_GENERATION_INIT_ON_MISSING"
    option_value = true
  },
  {
    services     = ["pseudonymization-service"]
    option_name  = "SECRETS_TWO_GENERATION_INIT_ON_MISSING"
    option_value = true
  },
  {
    services     = ["pseudonymization-service"]
    option_name  = "OPS_FLAG_SECRETS_TWO_DISEASES"
    option_value = "hiv,trp,neg,ech,tox,cht"
  },
  {
    services     = ["pseudonymization-service"]
    option_name  = "OPS_FLAG_COMPARE_IMPLEMENTATIONS"
    option_value = true
  },
  {
    services     = ["pseudonymization-storage-service"]
    option_name  = "STORAGE_CLEANUP_AFTER_DAYS"
    option_value = "90"
  },
  {
    services     = ["notification-gateway", "gateway-pathogen"]
    option_name  = "APPLICATION_LEGACY_MODE"
    option_value = false
  },
  {
    services     = ["notification-gateway", "gateway-pathogen"]
    option_name  = "JWT_OFFLINE_DECODER_ENABLED"
    option_value = true
  },
  {
    services     = ["notification-gateway", "gateway-pathogen"]
    option_name  = "ENABLE_HOSTNAME_VERIFICATION"
    option_value = false
  },
  {
    services     = ["notification-gateway", "gateway-pathogen"]
    option_name  = "CONFIG_NOTIFICATION_PORTAL_FEATURE_FLAGS_SSO_AUTH_ENABLED"
    option_value = true
  },
  {
    services     = ["notification-gateway", "gateway-pathogen"]
    option_name  = "CONFIG_NOTIFICATION_PORTAL_FEATURE_FLAGS_PATHOGEN_TILE_IS_ON"
    option_value = true
  },
  {
    services     = ["notification-gateway", "gateway-pathogen"]
    option_name  = "CONFIG_NOTIFICATION_PORTAL_FEATURE_FLAGS_TOKEN_INJECTION_ENABLED"
    option_value = true
  },
  {
    services     = ["notification-gateway", "gateway-pathogen"]
    option_name  = "PATHOGEN_AUTHENTICATION_REQUIRED"
    option_value = true
  },
  {
    services     = ["notification-gateway", "gateway-pathogen"]
    option_name  = "HOSPITAL_LOCATION_SERVICE_ENABLED"
    option_value = true
  },
  {
    services     = ["minio"]
    option_name  = "MINIO_BROWSER"
    option_value = "on"
  },
  {
    services     = ["igs-service"]
    option_name  = "FASTA_VALIDATION_PATHOGEN_DUMY"
    option_value = "1000,100,0.1"
  },
  {
    # Remove this option once Jaeger v2 is rolled out in PROD and W3C is the default type in service-base
    services     = ["context-enrichment-service", "fhir-storage-purger", "fhir-storage-reader", "fhir-storage-writer", "futs-core", "futs-igs", "gateway-igs", "hospital-location-service", "igs-service", "lifecycle-validation-service", "notification-gateway", "notification-processing-service", "notification-routing-service", "pdfgen-service", "pseudonymization-service", "pseudonymization-storage-service", "report-processing-service", "validation-service-core", "validation-service-igs"]
    option_name  = "MANAGEMENT_TRACING_PROPAGATION_TYPE"
    option_value = "w3c"
  }
]