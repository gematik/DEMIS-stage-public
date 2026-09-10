######################
# Global Options
######################

# Name of Context Path
context_path = ""
# Name of the stage
override_stage_name = "public"
stage_name          = "public"
# Name of the Namespace where to install the DEMIS services
target_namespace = "dmz"
# The Helm repository to use for the deployment
helm_repository = "https://gematik.github.io/DEMIS-Helm-Charts/"
# The Docker registry to use for the pulling the images for the deployment
docker_registry = "docker.io/gematik1"
# The path to the kubeconfig file to use for the deployment
kubeconfig_path = "../infrastructure/kind-config"
# Flag to enable/disable the configuration of remote debugging for the Java Services
debug_enabled = true

# Database Host Address for PGBouncer
database_target_host = "postgres.dmz.svc.cluster.local"

# bulk-inbound-purger cron schedule
bulk_inbound_purger_suspend       = false
bulk_inbound_purger_cron_schedule = "0 22 * * *"

rabbitmq_pvc_config = {
  storageClass = "standard"
  capacity     = "3Gi"
  accessModes  = ["ReadWriteOnce"]
}
# Definition of Volumes
volumes = {
  postgres-volume-claim = {
    storage_class = "standard"
    capacity      = "1Gi"
  }
}

# Definition of the feature flags for the project
project_feature_flags = {}
