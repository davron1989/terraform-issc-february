output "ARN" {
  value = module.my-cluster.cluster_arn
}

output "ID" {
  value = module.my-cluster.cluster_id
}

output "sec_group" {
  value = module.my-cluster.cluster_security_group_id
}

output "Region" {
  value = var.region
}

output "Name" {
  value = var.cluster_name
}

