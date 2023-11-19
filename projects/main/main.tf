locals {
  project_name          = "PROJECT_NAME"
  project_id            = "PROJECT_ID"
  billing_account       = "BILLING_ACCOUNT"
  bucket_name           = "BUCKET_NAME"
  region                = "us-west1"
  zone                  = "us-west1-a"
  cluster_name          = "main-cluster"
  node_pool_name        = "main-node-pool"
  machine_type          = "e2-standard-2"
  node_pool_size        = 1
  autoscaling_min_nodes = 1
  autoscaling_max_nodes = 3
}

module "gcp_project" {
  source          = "../../modules/project"
  project_name    = local.project_name
  project_id      = local.project_id
  billing_account = local.billing_account
  bucket_name     = local.bucket_name
  region          = local.region
}

module "gcp_cluster" {
  source                = "../../modules/cluster"
  project_id            = local.project_id
  zone                  = local.zone
  cluster_name          = local.cluster_name
  node_pool_name        = local.node_pool_name
  machine_type          = local.machine_type
  node_pool_size        = local.node_pool_size
  autoscaling_min_nodes = local.autoscaling_min_nodes
  autoscaling_max_nodes = local.autoscaling_max_nodes
}
