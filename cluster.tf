data "google_container_engine_versions" "default" {
  zone = "${var.gcp_zone}"
}

resource "google_container_cluster" "default" {
  name               = "${var.cluster_name}"
  zone               = "${var.gcp_zone}"
  initial_node_count = "${var.initial_node_count}"
  min_master_version = "${data.google_container_engine_versions.default.latest_node_version}"
  network            = "${google_compute_network.default.name}"
  subnetwork         = "${google_compute_subnetwork.default.name}"

  master_auth {
    username = "${var.gke_username}"
    password = "${var.gke_password}"
  }
}
