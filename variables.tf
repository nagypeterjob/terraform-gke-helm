variable "master_username" {}

variable "master_password" {}

variable "gcp_region" {
  default = "us-east1"
}

variable "gcp_zone" {
  default = "us-east1-b"
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
