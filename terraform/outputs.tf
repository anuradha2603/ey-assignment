output "gke_endpoint" {
  description = "The endpoint of the GKE cluster"
  value       = module.gke.endpoint
}
