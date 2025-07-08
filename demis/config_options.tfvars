# Map containing the Config Options to be activated for services
config_options = [
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
    services     = ["notification-gateway"]
    option_name  = "APPLICATION_LEGACY_MODE"
    option_value = false
  },
  {
    services     = ["postgres"]
    option_name  = "CONFIG_BUNDID_DB"
    option_value = false
  },
  {
    services     = ["postgres"]
    option_name  = "CONFIG_KEYCLOAK_DB"
    option_value = false
  },
  {
    services                 = ["pdfgen-service"]
    option_name              = "CONFIG_OPTION_PDF_WATERMARK"
    option_value             = "stage-public"
    synchronize_option_value = false
  },
  {
    services     = ["portal-shell"]
    option_name  = "CONFIG_TOKEN_INJECTION_ENABLED"
    option_value = true
  },
  {
    services     = ["igs-service"]
    option_name  = "FASTA_VALIDATION_PATHOGEN_DUMY"
    option_value = "1000,100,0.1"
  },
  {
    services     = ["context-enrichment-service", "fhir-storage-purger", "fhir-storage-reader", "fhir-storage-writer", "futs-core", "futs-igs"]
    option_name  = "MANAGEMENT_TRACING_PROPAGATION_TYPE"
    option_value = "w3c"
  },
  {
    services     = ["pseudonymization-service"]
    option_name  = "OPS_FLAG_SECRETS_TWO_DISEASES"
    option_value = "hiv,trp,neg,ech,tox,cht"
  },
  {
    services     = ["notification-gateway"]
    option_name  = "PATHOGEN_AUTHENTICATION_REQUIRED"
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
    services                 = ["fhir-storage-writer"]
    option_name              = "SPRING_LIQUIBASE_ENABLED"
    option_value             = true
    synchronize_option_value = false
  }
]
