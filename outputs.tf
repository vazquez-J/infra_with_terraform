# Output name and Ip Addr
output "Ip Address" {
  value = "${module.container.ip}"
}

output "container_name" {
  value = "${module.container.container_name}"
}

