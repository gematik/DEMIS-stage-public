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
    services                 = ["package-registry"]
    option_name              = "ATTESTATION_SAN"
    option_value             = null
    synchronize_option_value = false
  },
  {
    services                 = ["destination-lookup-writer"]
    option_name              = "CONFIG_LIQUIBASE_ENABLED"
    option_value             = true
    synchronize_option_value = false
  },
  {
    services     = ["validation-service-core"]
    option_name  = "CONFIG_OPTION_ADDITIONAL_STRICT_CODING_VALIDATOR_ENABLED"
    option_value = true
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
    services     = ["gateway-igs"]
    option_name  = "IGS_PROFILE_VERSION"
    option_value = "v4"
  },
  {
    services     = ["pseudonymization-service"]
    option_name  = "OPS_FLAG_SECRETS_TWO_DISEASES"
    option_value = "hiv,trp,neg,ech,tox,cht"
  },
  {
    services     = ["pdfgen-service"]
    option_name  = "PDFGEN_QUANTITY_VALUE_DISPLAY_VALUE_SET_SOURCE"
    option_value = "https://terminologien.bfarm.de/fhir/CodeSystem/ucum-common-units-translation-de-de"
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
    services                 = ["package-registry"]
    option_name              = "SIGNATURE_ATTESTATION_URL"
    option_value             = "https://artifactregistry.googleapis.com/download/v1/projects/gematik-demis-public/locations/europe-west3/repositories/npm-trust"
    synchronize_option_value = false
  },
  {
    services                 = ["package-registry"]
    option_name              = "SIGNATURE_SAN"
    option_value             = "fhir-packages-writer@gematik-demis-public.iam.gserviceaccount.com"
    synchronize_option_value = false
  },
  {
    services                 = ["package-registry"]
    option_name              = "SOURCE_REGISTRY_TYPE"
    option_value             = "GCP_PUBLIC"
    synchronize_option_value = false
  },
  {
    services                 = ["package-registry"]
    option_name              = "SOURCE_REGISTRY_URL"
    option_value             = "https://europe-west3-npm.pkg.dev/gematik-demis-public/fhir-packages"
    synchronize_option_value = false
  },
  {
    services                 = ["fhir-storage-writer", "surveillance-pseudonym-service-ars"]
    option_name              = "SPRING_LIQUIBASE_ENABLED"
    option_value             = true
    synchronize_option_value = false
  }
]
