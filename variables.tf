variable "container_name" {
  description = "Name for container"
  default = "blog"
}
variable "image" {
  description = "image for container"
  default = "ghost:latest"
}
variable "inter_port"{
  description = "Internal port"
  default = "2368"
}
variable "exter_port"{
  description = "External port"
  default = "80"
}

