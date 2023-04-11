terraform {
  required_providers {
    google = {
        source = "hashicorp/google"
        version = "4.51.0"
    }
  }
}

provider "google" {
  credentials = file("creds.json")

  project = "devops-383410"
  region = "us-central1"
  zone = "us-central1-c"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}