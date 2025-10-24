# Map containing the Resources Definitions to be defined for the Services in the cluster
resource_definitions = [
  {
    service  = "bundid-idp"
    replicas = 1
  },
  {
    service  = "certificate-update-service"
    replicas = 1
  },
  {
    service  = "gematik-idp"
    replicas = 1
  },
  {
    service  = "keycloak"
    replicas = 1
  },
  {
    service  = "keycloak-user-purger"
    replicas = 1
  },
  {
    service  = "pgbouncer"
    replicas = 1
  },
  {
    service  = "postgres"
    replicas = 1
  },
  {
    service  = "redis-cus"
    replicas = 1
  }
]