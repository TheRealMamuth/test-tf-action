variable "droplets_ids" {
  type = list(string)
}

variable "inbound_rules" {
  type = set(object({
    protocol   = string
    port_range = string
    source_addresses = list(string)
  }))
  default = []
}

variable "outbound_rules" {
  type = set(object({
    protocol   = string
    port_range = string
    destination_addresses = list(string)
  }))
  default = []
}
