output "network_self_link" {
  description = "Self link of the custom-mode VPC."
  value       = google_compute_network.this.self_link
}

output "private_subnet_self_link" {
  description = "Self link of the regional private subnet."
  value       = google_compute_subnetwork.private.self_link
}
