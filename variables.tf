variable "KUBECONFIG_PATH" {
  type        = string
  description = "Path to Kube Config file"
}

variable "namespace" {
  type = string
  description = "namespace to deploy to"
}