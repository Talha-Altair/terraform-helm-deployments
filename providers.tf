provider "google" {

  project     = var.project_id
  region      = var.region
  credentials = file(var.creds_file_path)

}

data "google_client_config" "default" {}

provider "helm" {
  kubernetes {
    host                   = "https://${module.gke-cluster.cluster_endpoint}"
    token                  = data.google_client_config.default.access_token
    cluster_ca_certificate = base64decode(module.gke-cluster.ca_cert)
  }
}
provider "kubernetes" {
  host                   = "https://${module.gke-cluster.cluster_endpoint}"
  token                  = data.google_client_config.default.access_token
  cluster_ca_certificate = base64decode(module.gke-cluster.ca_cert)
}
