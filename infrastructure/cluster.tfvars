# Define if it is local or remote
local_cluster = true
# Version of KIND
kind_image_tag = "v1.33.0"
# Name of the KIND cluster
kind_cluster_name = "demis-cluster"
# Number of worker nodes
kind_worker_nodes = 3

# Name of the stage - Used for Labels
stage_name = "public"
# Name of the region - Used for Labels
cluster_region = "public"

# Service Mesh Options
service_mesh_istio_version      = "1.25.2"
service_mesh_kiali_version      = "2.8.0"
service_mesh_jaeger_version     = "2.5.0"
service_mesh_jaeger_digest      = "sha256:20d715ade1cf32e8c2be1a288317c2126376ce60811be71f0856793d7f849127"
service_mesh_grafana_version    = "11.6.1"
service_mesh_grafana_digest     = "sha256:52c3e20686b860c6dc1f623811565773cf51eefa378817a4896dfc863c3c82c8"
service_mesh_prometheus_version = "27.11.0"
# Number of replicas for the Istiod services
service_mesh_istiod_replica_count = 3
# Enable the deployment of Monitoring Services (Grafana, Prometheus)
service_mesh_monitoring_enabled = true
# The sampling rate option can be used to control what percentage of requests get reported to the tracing system
service_mesh_tracing_sampling = "100.0"

# Trivy Options
trivy_enabled = false
trivy_private_registry_secret_names = []

trivy_cron_job_schedule  = "0 */6 * * *"
trivy_ignore_unfixed     = false
trivy_scan_jobs_limit    = 3
trivy_use_less_resources = true
trivy_severity_levels    = "UNKNOWN,LOW,MEDIUM,HIGH,CRITICAL"

kyverno_enabled                       = false
kyverno_policy_reporter_enabled       = false
kyverno_admissioncontroller_replicas  = 1
kyverno_backgroundcontroller_replicas = 1
kyverno_cleanupcontroller_replicas    = 1
kyverno_reportscontroller_replicas    = 1