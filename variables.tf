variable "env" {
  description = "env: dev or prod"
}
variable "container_name" {
  description = "Name for container"
  type = "map"
  default = {
    dev = "dev_blog"
    prod = "prod_blog" 
  }
}
variable "image" {
  description = "image for container"
  type = "map"
  default = {
    dev = "ghost:latest"
    prod = "ghost:alpine"
  }
}
variable "inter_port"{
  description = "Internal port"
  type = "map"
  default = {
    dev = "2368"
    prod = "2368"
  }
}
variable "exter_port"{
  description = "External port"
  type = "map" 
  default =  { 
    dev = "80"
    prod = "8080"
  }
}

