resource "helm_release" "sq_helm" {
  name       = "sonarqube"
  repository = "https://SonarSource.github.io/helm-chart-sonarqube"
  chart      = "sonarqube"
  version    = "7.0.0"

  values = [
    "${file("./helm/values.yaml")}"
  ]
}