provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}
resource "helm_release" "bi-exam" {
  name = "bt-exam"
  repository = "s3://bt-exam/stable/bt-exam/"
  chart      = "example"
  namespace  = "default"
}