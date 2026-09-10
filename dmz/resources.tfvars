# Map containing the Resources Definitions to be defined for the Services in the cluster
resource_definitions = [
  {
    service  = "pgbouncer"
    replicas = 1
  },
  {
    service  = "postgres"
    replicas = 1
  },
  {
    service  = "rabbitmq"
    replicas = 3
  },
  {
    service  = "waf-service"
    replicas = 1
  },
  {
    service  = "bulk-inbound-service"
    replicas = 1
  },
  {
    service  = "secure-message-gateway"
    replicas = 1
  },
]
