variable "vpc_id" {
  type        = string
  description = "value of DigitalOcean VPC ID"
}

variable "region" {
  type        = string
  description = "value of DigitalOcean region"
  default     = "fra1"
}
