resource "helm_release" "deployment" {

  name  = "istio-base"
  chart = "./istio-base-charts/base"

  timeout         = 120
  cleanup_on_fail = true
  force_update    = true
  namespace       = "istio-system"
  create_namespace = true


  depends_on = [module.gke-cluster, kubernetes_namespace.istio_system]
  
}
