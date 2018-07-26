# These are the cluster | network | kubernetes information we get after successful apply
# We can start to use the deployed k8s cluster with these values

output network {
  value = "${google_compute_subnetwork.default.network}"
}

output subnetwork_name {
  value = "${google_compute_subnetwork.default.name}"
}

output cluster_name {
  value = "${google_container_cluster.default.name}"
}

output cluster_region {
  value = "${var.gcp_region}"
}

output cluster_zone {
  value = "${google_container_cluster.default.zone}"
}

output "load_balancer_ip" {
  value = "${google_compute_address.default.address}"
}
