variable "project_id" {
  description = "The GCP project ID"
  type        = string
}

variable "region" {
  description = "The GCP deployment region"
  default     = "us-central1"
}

variable "cluster_name" {
  description = "The name of the GKE cluster"
  default     = "my-gke-cluster"
}

variable "node_machine_type" {
  description = "Machine type for the node pool"
  default     = "e2-medium"
}

variable "min_node_count" {
  description = "Minimum number of nodes"
  default     = 1
}

variable "max_node_count" {
  description = "Maximum number of nodes"
  default     = 5
}
