resource "digitalocean_vpc" "main" {
  name        = var.vpc_name
  region      = var.vpc_region
  description = var.vpc_desc
}