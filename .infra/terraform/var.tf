variable "project_name" {
  type        = string
  description = "GCP Project Name"
  default     = "cnd-handson"
}

variable "availability_zone" {
  type        = string
  description = "GCP Availability Zone"
  default     = "asia-northeast1-b"
}

variable "home_IP" {
  type        = string
  sensitive   = true
}