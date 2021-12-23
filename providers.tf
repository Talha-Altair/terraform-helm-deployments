provider "helm" {
  kubernetes {
    host                   = "https://${module.gke-cluster.cluster_endpoint}"
    token                  = data.google_client_config.default.access_token
    cluster_ca_certificate = base64decode(module.gke-cluster.ca_cert)
  }
}