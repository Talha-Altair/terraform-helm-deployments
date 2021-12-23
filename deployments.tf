resource "helm_release" "deployment" {

  name  = "deployment-1"
  chart = "./deployment-chart"

  timeout          = 120
  cleanup_on_fail  = true
  force_update     = true
  namespace        = "test"
  create_namespace = true

}
