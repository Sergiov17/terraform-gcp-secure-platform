variable "project_id" {
  description = "Google Cloud project ID. Supply this locally; never commit real credentials."
  type        = string
}

variable "project_name" {
  description = "Short identifier used in resource names."
  type        = string
  default     = "secure-platform"
}

variable "environment" {
  description = "Environment name used in resource names and labels."
  type        = string
  default     = "dev"
}

variable "region" {
  description = "Region for the private subnet."
  type        = string
  default     = "us-central1"
}

variable "network_cidr" {
  description = "IPv4 range assigned to the regional subnet."
  type        = string
  default     = "10.60.1.0/24"
}

variable "enable_flow_logs" {
  description = "Enable VPC Flow Logs. This can create Cloud Logging charges."
  type        = bool
  default     = false
}
