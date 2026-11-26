variable "project_id" {
  description = "Google Cloud project ID used by network resources."
  type        = string
}

variable "project_name" {
  description = "Short identifier used in resource names."
  type        = string
}

variable "environment" {
  description = "Environment name used in resource names and labels."
  type        = string
}

variable "region" {
  description = "Region for the private subnet."
  type        = string
}

variable "network_cidr" {
  description = "IPv4 range assigned to the regional subnet."
  type        = string
}

variable "enable_flow_logs" {
  description = "Enable VPC Flow Logs. This can create Cloud Logging charges."
  type        = bool
}
