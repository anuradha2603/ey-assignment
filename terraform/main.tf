provider "google" {
  project = var.project_id
  region  = var.region
}

module "gke" {
  source     = "./modules/gke"

  project_id     = var.project_id
  region        = var.region
  cluster_name  = var.cluster_name
  node_machine_type = var.node_machine_type
  min_nodes     = var.min_node_count
  max_nodes     = var.max_node_count
}
