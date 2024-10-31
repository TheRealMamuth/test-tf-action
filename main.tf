resource "digitalocean_project" "main" {
  name        = "My Project Piotr Koska"
  description = "My project description"
  environment = "development"
}

resource "digitaocean_vpc" "main" {
  name        = "my-vpc"
  region      = "fra1"
  description = "My VPC"
}

resource "digitalocean_droplet" "main" {
  name     = "my-droplet"
  image    = "ubuntu-20-04-x64"
  region   = "fra1"
  size     = "s-1vcpu-1gb"
  vpc_uuid = digitalocean_vpc.main.id
}