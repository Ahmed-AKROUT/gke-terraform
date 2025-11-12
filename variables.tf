variable "project_id" {
  type        = string
  description = "ID du projet GCP"
}

variable "zone" {
  type    = string
  default = "europe-west1-b"
}

variable "region" {
  type    = string
  default = "europe-west1"
}

variable "cluster_name" {
  type    = string
  default = "demo-gke"
}

variable "node_count" {
  type    = number
  default = 2
}

variable "node_machine_type" {
  type    = string
  default = "e2-medium"
}
