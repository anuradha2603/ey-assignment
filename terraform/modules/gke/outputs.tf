output "endpoint" {
  description = "The GKE cluster endpoint"
  value       = google_container_cluster.gke_cluster.endpoint
}

output "cluster_ca_certificate" {
  description = "The GKE cluster CA certificate"
  value       = google_container_cluster.gke_cluster.master_auth[0].cluster_ca_certificate
}
