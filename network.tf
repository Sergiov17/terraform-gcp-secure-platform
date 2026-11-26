locals {
  network_name = "${var.project_name}-${var.environment}"
}

resource "google_compute_network" "this" {
  name                    = local.network_name
  auto_create_subnetworks = false
  routing_mode            = "GLOBAL"
  description             = "Custom-mode VPC managed by Terraform."
}

resource "google_compute_subnetwork" "private" {
  name                     = "${local.network_name}-private"
  region                   = var.region
  network                  = google_compute_network.this.id
  ip_cidr_range            = var.network_cidr
  private_ip_google_access = true

  dynamic "log_config" {
    for_each = var.enable_flow_logs ? [true] : []

    content {
      aggregation_interval = "INTERVAL_5_SEC"
      flow_sampling        = 0.5
      metadata             = "INCLUDE_ALL_METADATA"
    }
  }
}
