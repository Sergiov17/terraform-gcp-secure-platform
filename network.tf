module "network" {
  source           = "./modules/network"
  project_id       = var.project_id
  project_name     = var.project_name
  environment      = var.environment
  region           = var.region
  network_cidr     = var.network_cidr
  enable_flow_logs = var.enable_flow_logs
}
