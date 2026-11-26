output "network_self_link" {
  description = "Self link of the custom-mode VPC."
  value       = module.network.network_self_link
}

output "private_subnet_self_link" {
  description = "Self link of the regional private subnet."
  value       = module.network.private_subnet_self_link
}
