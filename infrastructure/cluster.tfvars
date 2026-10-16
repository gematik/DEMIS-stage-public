# Define if it is local or remote
local_cluster = true
# Version of KIND
kind_image_tag = "v1.36.4"
# Name of the KIND cluster
kind_cluster_name = "demis-cluster"
# Number of worker nodes
kind_worker_nodes = 3

# Name of the stage - Used for Labels
stage_name = "public"
# Name of the region - Used for Labels
cluster_region = "public"

# Service Mesh Options
service_mesh_istio_version      = "1.31.1"
service_mesh_kiali_version      = "2.32.0"
service_mesh_jaeger_version     = "2.22.0"
service_mesh_jaeger_digest      = "sha256:836b967b5abcf1f7758066aa6b348619267a2f1459f72d472840570f9bd88a17"
service_mesh_grafana_version    = "13.0.9"
service_mesh_grafana_digest     = "sha256:c26daa778ea9fd817be3fe606ba4b78ea4c217a7a27c1ba8f5faa4418ecc48dd"
service_mesh_prometheus_version = "29.33.0"
# Number of replicas for the Istiod services
service_mesh_istiod_replica_count = 3
# Enable the deployment of Monitoring Services (Grafana, Prometheus)
service_mesh_monitoring_enabled = true
# The sampling rate option can be used to control what percentage of requests get reported to the tracing system
service_mesh_tracing_sampling = "100.0"

# Trivy Options
trivy_enabled                       = false
trivy_private_registry_secret_names = []

trivy_cron_job_schedule  = "0 */6 * * *"
trivy_chart_version      = "0.32.1"
trivy_ignore_unfixed     = false
trivy_scan_jobs_limit    = 3
trivy_use_less_resources = true
trivy_severity_levels    = "UNKNOWN,LOW,MEDIUM,HIGH,CRITICAL"

kyverno_enabled                       = false
kyverno_chart_version                 = "3.9.1"
kyverno_policy_reporter_enabled       = false
kyverno_policy_reporter_chart_version = "3.10.0"
kyverno_admissioncontroller_replicas  = 1
kyverno_backgroundcontroller_replicas = 1
kyverno_cleanupcontroller_replicas    = 1
kyverno_reportscontroller_replicas    = 1

# Resolve the Helm Charts from the Helm repositories.yaml ("local") or from the public URLs ("url")
helm_repository_source = "local"
helm_repository_name   = "demis-public"
