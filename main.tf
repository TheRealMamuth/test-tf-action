resource "digitalocean_project" "main" {
  name        = "My Project Piotr Koska"
  description = "My project description"
  environment = "development"
}

resource "digitalocean_vpc" "main" {
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

module "vpc" {
  source = "./vpc_module"

  vpc_name   = "my-vpc-module"
  vpc_region = var.region
  vpc_desc   = "My VPC Module"
}

module "vm" {
  source = "./module/vm"

  region = var.region
  vpc_id = module.vpc.vpc_id
}

module "firewall" {
  source = "./modules/firewall"

  droplets_ids = [module.vm.droplet_id]
}