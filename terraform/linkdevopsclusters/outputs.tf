output "aws_region" {
  value = var.aws_region
}

output "cluster_full_name" {
  value = "${var.clusters_name_prefix}-${terraform.workspace}"
}

output "cluster_version" {
  value = var.cluster_version
}

output "cluster_api" {
  value = module.linkdevopsclusters.cluster_api
}

output "cluster_tag" {
  value = module.linkdevopsclusters.cluster_tag
}

output "worker_iam_role_arn" {
  value = module.linkdevopsclusters.worker_iam_role_arn
}

output "authconfig" {
  value = module.linkdevopsclusters.authconfig
}