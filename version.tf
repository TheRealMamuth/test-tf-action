terraform {
  # Provider-specific settings
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.5.0"
    }
  }

  cloud { 
    organization = "action_piotrkoska" 
    workspaces { 
      name = "action_piotrkoska" 
    } 
  }
  # Terraform version
  # required_version = ">= 0.14.9"
}