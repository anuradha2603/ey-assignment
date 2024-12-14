# modules/gke/variables.tf

variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The region where GKE cluster is deployed"
  default     = "us-central1"
}

variable "cluster_name" {
  description = "The name of the GKE cluster"
  type        = string
}

variable "node_machine_type" {
  description = "Machine type for the node pool"
  default     = "e2-medium"
}

variable "min_nodes" {
  description = "Minimum number of nodes in the node pool"
  default     = 1
}

variable "max_nodes" {
  description = "Maximum number of nodes in the node pool"
  default     = 5
}

variable "k8s_version" {
  description = "Kubernetes version for GKE cluster"
  type        = string
  default     = "1.30.5-gke.1699000"
}
