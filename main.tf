resource "digitalocean_project" "main" {
  name        = "My Project"
  description = "My project description"
  environment = "development"
}