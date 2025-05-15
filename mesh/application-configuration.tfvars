######################
# Global Options
######################

# Name of the stage
override_stage_name = "public"
# Name of the Namespace where to install the DEMIS services
target_namespace = "mesh"
# The Helm repository to use for the deployment
helm_repository = "https://gematik.github.io/DEMIS-Helm-Charts/"
# The path to the kubeconfig file to use for the deployment
kubeconfig_path = "../infrastructure/kind-config"

# S3 Storage Server URL
s3_hostname = "minio.demis.svc.cluster.local"
s3_port     = 9000

# Cluster Endpoints
domain_name                 = "ingress.local"
ti_idp_subdomain            = "ti-idp"
bundid_idp_issuer_subdomain = "bundid-idp"
