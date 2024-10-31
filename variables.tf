variable "api" {
  type        = string
  description = "value of DigitalOcean token"
  sensitive   = true
}

variable "region" {
  type        = string
  description = "value of DigitalOcean region"
  default     = "fra1"
}