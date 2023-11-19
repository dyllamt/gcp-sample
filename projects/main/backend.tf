terraform {
  backend "gcs" {
    bucket = "NAME OF YOUR BUCKET"
    prefix = "terraform/state"
  }
}