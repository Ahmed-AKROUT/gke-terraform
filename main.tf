resource "google_compute_network" "vpc" {
  name                    = "gke-prod-vpc"
  auto_create_subnetworks = false
}

resource "google_compute_subnetwork" "subnet" {
  name          = "gke-prod-subnet"
  ip_cidr_range = "10.0.0.0/24"
  region        = var.region
  network       = google_compute_network.vpc.id
}



resource "google_container_cluster" "gke_cluster" {
  name     = var.cluster_name
  location = var.zone
  
  network            = google_compute_network.vpc.name
  subnetwork         = google_compute_subnetwork.subnet.name

  remove_default_node_pool = true
  initial_node_count       = 1
  deletion_protection = false
}

resource "google_container_node_pool" "gke_nodes" {
  name       = "node-pool"
  location   = var.zone
  cluster    = google_container_cluster.gke_cluster.name

  node_count = var.node_count

  node_config {
    disk_type    = "pd-standard"
    disk_size_gb = 20
    machine_type = var.node_machine_type
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform",
    ]
  }
}
