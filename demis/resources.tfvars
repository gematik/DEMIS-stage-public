# Map containing the Resources Definitions to be defined for the Services in the cluster
resource_definitions = [
  {
    service  = "ars-service"
    replicas = 1
  },
  {
    service  = "ars-pseudonymization-service"
    replicas = 1
  },
  {
    service  = "context-enrichment-service"
    replicas = 1
  },
  {
    service  = "fhir-storage-purger"
    replicas = 1
  },
  {
    service  = "fhir-storage-reader"
    replicas = 1
  },
  {
    service  = "fhir-storage-writer"
    replicas = 1
  },
  {
    service  = "futs-core"
    replicas = 1
  },
  {
    service  = "futs-igs"
    replicas = 1
  },
  {
    service  = "gateway-igs"
    replicas = 1
  },
  {
    service  = "hospital-location-service"
    replicas = 1
  },
  {
    service  = "igs-service"
    replicas = 1
  },
  {
    service  = "lifecycle-validation-service"
    replicas = 1
  },
  {
    service  = "minio"
    replicas = 1
  },
  {
    service  = "notification-gateway"
    replicas = 1
  },
  {
    service  = "notification-processing-service"
    replicas = 1
  },
  {
    service  = "notification-routing-service"
    replicas = 1
  },
  {
    service  = "pdfgen-service"
    replicas = 1
  },
  {
    service  = "pgbouncer"
    replicas = 1
  },
  {
    service  = "portal-bedoccupancy"
    replicas = 1
  },
  {
    service  = "portal-disease"
    replicas = 1
  },
  {
    service  = "portal-igs"
    replicas = 1
  },
  {
    service  = "portal-pathogen"
    replicas = 1
  },
  {
    service  = "portal-shell"
    replicas = 1
  },
  {
    service  = "postgres"
    replicas = 1
  },
  {
    service  = "pseudonymization-service"
    replicas = 1
  },
  {
    service  = "pseudonymization-storage-service"
    replicas = 1
  },
  {
    service  = "report-processing-service"
    replicas = 1
  },
  {
    service  = "surveillance-pseudonym-service-ars"
    replicas = 1
  },
  {
    service  = "surveillance-pseudonym-purger-ars"
    replicas = 1
  },
  {
    service  = "validation-service-core"
    replicas = 1
  },
  {
    service  = "validation-service-igs"
    replicas = 1
  },
  {
    service  = "validation-service-ars"
    replicas = 1
  }
]