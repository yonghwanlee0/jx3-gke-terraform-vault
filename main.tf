module "jx" {
  source = "github.com/jenkins-x/terraform-google-jx"
  gcp_project = "spring-asset-336120"
  jx2 = false
}

output "connect" {
  description = "Connect to cluster"
  value       = "${module.jx.connect}"
}

output "next_install" {
  description = "Follow instructions to enable Jenkins X install via GitOps"
  value       = "https://jenkins-x.io/docs/v3/guides/operator"
}
