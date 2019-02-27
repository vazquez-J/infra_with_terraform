# Start the Container
resource "docker_container" "container_id" {
  name = "${var.name}"
  image = "${var.image}"
  ports {
    internal = "${var.inter_port}"
    external = "${var.exter_port}"
  }
}
