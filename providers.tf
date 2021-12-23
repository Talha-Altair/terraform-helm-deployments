provider "helm" {
  kubernetes {
    config_path = var.KUBECONFIG_PATH
  }
}