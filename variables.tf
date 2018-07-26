# Declare variables used by modules
# Adds default values to missing or empty tfvars

variable "gke_username" {}

variable "gke_password" {}

variable "project" {
  default = "np-gke"
}

variable "gcp_region" {
  default = "us-west1"
}

variable "gcp_zone" {
  default = "us-west1-b"
}

variable "cluster_name" {
  default = "gke-demo"
}

variable "initial_node_count" {
  default = 1
}

variable "node_machine_type" {
  default = "n1-standard-1"
}

variable "node_disk_size" {
  default = "20"
}

variable "env" {
  default = "dev"
}

variable "network_name" {
  default = "tf-gke-k8s"
}
