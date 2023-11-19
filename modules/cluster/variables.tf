variable "project_id" {
  description = "The ID of the GCP project"
}

variable "zone" {
  description = "The zone where the cluster will be located"
  default     = "us-west1-a"
}

variable "cluster_name" {
  description = "The name of the GKE cluster"
}

variable "node_pool_name" {
  description = "The name of the node pool"
}

variable "machine_type" {
  description = "The machine type for the nodes"
}

variable "node_pool_size" {
  description = "The initial number of nodes in the node pool"
}

variable "autoscaling_min_nodes" {
  description = "The minimum number of nodes in the node pool autoscaling"
}

variable "autoscaling_max_nodes" {
  description = "The maximum number of nodes in the node pool autoscaling"
}
