resource "digitalocean_droplet" "main" {
  name     = "my-droplet"
  image    = "ubuntu-20-04-x64"
  region   = var.region
  size     = "s-1vcpu-1gb"
  vpc_uuid = var.vpc_id
}
