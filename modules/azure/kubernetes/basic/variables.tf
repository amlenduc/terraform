variable "env_tags" {
  type        = "map"
  description = "Tags for the resources"
}

variable "env_details" {
  type = "map"
  description = "Name of Environment"
}

variable "k8s" {
  type = "map"
}

variable "resource_group" {
  type = "map"
}