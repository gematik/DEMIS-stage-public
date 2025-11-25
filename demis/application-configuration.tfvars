######################
# Global Options
######################

# Name of Context Path
context_path = ""
# Name of the stage
override_stage_name = "public"
stage_name          = "public"
# Name of the Namespace where to install the DEMIS services
target_namespace = "demis"
# The Helm repository to use for the deployment
helm_repository = "https://gematik.github.io/DEMIS-Helm-Charts/"
# The Docker registry to use for the pulling the images for the deployment
docker_registry = "docker.io/gematik1"
# The path to the kubeconfig file to use for the deployment
kubeconfig_path = "../infrastructure/kind-config"
# The Strategy to use for downloading the images
image_pull_policy = "IfNotPresent"
# Flag to enable/disable the deployment of Istio Resources for DEMIS
istio_enabled = true
# Flag to enable/disable the configuration of remote debugging for the Java Services
debug_enabled = true

# Database Host Address for PGBouncer
database_target_host = "postgres.demis.svc.cluster.local"

# S3 Storage Server URL
s3_hostname = "minio.demis.svc.cluster.local"
s3_port     = 9000
# fhir storage service purger cron schedule
fhir_storage_purger_suspend       = false
fhir_storage_purger_cron_schedule = "0 22 * * *"

# surveillance-pseudonym-purger-ars cron schedule
surveillance_pseudonym_purger_ars_suspend       = false
surveillance_pseudonym_purger_ars_cron_schedule = "0 22 * * *"

# settings for validation service profile provisioning mode
# null disabled the profile provisioning mode and deploy in old mode
# possible values are: dedicated, distributed, combined
profile_provisioning_mode_vs_core = "combined"
profile_provisioning_mode_vs_igs  = "combined"
profile_provisioning_mode_vs_ars  = "combined"

# Definition of Volumes
volumes = {
  postgres-volume-claim = {
    storage_class = "standard"
    capacity      = "1Gi"
  }
  minio-volume-claim = {
    storage_class = "standard"
    capacity      = "1Gi"
  }
}
