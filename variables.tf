variable "project_id" {
  type        = string
  description = "project_id"
}

variable "region" {
  type        = string
  description = "region"
}

variable "creds_file_path" {
  type        = string
  description = "creds_file_path"
}

variable "cluster_name" {
  type        = string
  description = "cluster_name"
}

variable "num_of_nodes_per_location" {
  description = "num_of_nodes_per_location"
}

variable "machine_type" {
  type        = string
  description = "machine_type"
}

variable "node_locations" {
  type        = list(any)
  description = "node_locations"
}
