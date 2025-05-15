# Map containing the Configuration Options to be activated for services
config_options = [
  {
    services     = ["postgres"]
    option_name  = "CONFIG_NOTIFICATION_DB"
    option_value = false
  },
  {
    services     = ["postgres"]
    option_name  = "CONFIG_ESPRI_DB"
    option_value = false
  },
  {
    services     = ["postgres"]
    option_name  = "CONFIG_FHIR_DB"
    option_value = false
  },
  {
    services     = ["postgres"]
    option_name  = "CONFIG_HAPI_FHIR_DB"
    option_value = false
  },
  {
    services     = ["postgres"]
    option_name  = "CONFIG_FHIR_STORAGE_DB"
    option_value = false
  },
  {
    services     = ["postgres"]
    option_name  = "CONFIG_PSEUDO_DB"
    option_value = false
  },
  {
    services     = ["certificate-update-service"]
    option_name  = "CERT_ROOT_FOLDER_PATH"
    option_value = "config/"
  }
]
