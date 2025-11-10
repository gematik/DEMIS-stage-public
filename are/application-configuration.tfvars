######################
# Global Options
######################

# Name of the stage
override_stage_name = "public"
# Name of the Namespace where to install the services
target_namespace = "are"
# The Helm repository to use for the deployment
# Change to your feature branch/commit for local development
helm_repository = "https://api.bitbucket.org/2.0/repositories/noves1/demis-helm-charts/src/feature_istio_setup"
# The Bitbucket-Docker registry to use for the pulling the images for the deployment
docker_registry = "crg.apkg.io/noves1"
# The path to the kubeconfig file to use for the deployment
kubeconfig_path = "../infrastructure/kind-config"
# Flag to enable/disable the configuration of remote debugging for the Java Services
debug_enabled = true

volumes = {}