######################
# Global Options
######################

# Name of the stage
override_stage_name = "public"
# Name of the Namespace where to install the DEMIS services
target_namespace = "idm"
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
database_target_host = "postgres.idm.svc.cluster.local"

# Enable User Realm Import in Keycloak and BundID IDP
keycloak_user_import_enabled   = true
bundid_idp_user_import_enabled = true
bundid_idp_issuer_subdomain    = "bundid-idp"

certificate_update_service_suspend = false
# certificate update service cron schedule
certificate_update_cron_schedule = "0 */12 * * *"

keycloak_user_purger_suspend = false
# keycloak-user-purger cron schedule
keycloak_user_purger_cron_schedule = "0 2 * * *"

# The Imagename of Stage Configuration Data to use
stage_configuration_data_name = "stage-configuration-data-public"

# gematik idp configuration
ti_idp_subdomain        = "ti-idp"
ti_idp_server_url       = "https://ti-idp.ingress.local"
ti_idp_client_name      = "GEMgematDEMHrL7S830R"
ti_idp_redirect_uri     = "https://auth.ingress.local/realms/PORTAL/broker/gematik-authenticator/endpoint/result"
ti_idp_return_sso_token = true

# Definition of Volumes
volumes = {
  postgres-volume-claim = {
    storage_class = "standard"
    capacity      = "1Gi"
  }
  redis-cus-volume-claim = {
    storage_class = "standard"
    capacity      = "100Mi"
  }
  cus-volume-claim = {
    storage_class = "standard"
    capacity      = "50Mi"
  }
}
