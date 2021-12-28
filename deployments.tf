# resource "helm_release" "admin" {

#   name  = "admin"
#   chart = "charts/admin"

#   timeout          = 120
#   cleanup_on_fail  = true
#   force_update     = true
#   namespace        = var.namespace
#   create_namespace = true

# }

# resource "helm_release" "ais" {

#   name  = "ais"
#   chart = "charts/ais"

#   timeout          = 120
#   cleanup_on_fail  = true
#   force_update     = true
#   namespace        = var.namespace
#   create_namespace = true

# }

# Unncomment Above code to deploy the specific helm charts accodingly


resource "helm_release" "ccms" {

  name  = "ccms"
  chart = "charts/ccms"

  timeout          = 120
  cleanup_on_fail  = true
  force_update     = true
  namespace        = var.namespace
  create_namespace = true

}
