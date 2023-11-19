provider "google" {
  project = var.project_id
}

resource "google_container_cluster" "cluster" {
  name     = var.cluster_name
  project  = var.project_id
  location = var.zone

  node_pool {
    name               = var.node_pool_name
    initial_node_count = var.node_pool_size
    autoscaling {
      min_node_count = var.autoscaling_min_nodes
      max_node_count = var.autoscaling_max_nodes
    }
    management {
      auto_repair  = true
      auto_upgrade = true
    }
    node_config {
      machine_type = var.machine_type
      preemptible  = true  # Enable preemptible instances
      disk_type    = "pd-standard"
      disk_size_gb = 10
    }
  }
}

resource "google_compute_global_address" "address" {
  name    = "global-address"
  project = var.project_id
}
