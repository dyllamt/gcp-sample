provider "google" {
  project = var.project_id
}

resource "google_project" "project" {
  name            = var.project_name
  project_id      = var.project_id
  billing_account = var.billing_account
}

resource "google_storage_bucket" "bucket" {
  name     = var.bucket_name
  project  = var.project_id
  location = var.region
}
