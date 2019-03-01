# Download the latest Ghost image
module "image" {
  source = "./image"
  image = "${lookup(var.image, var.env)}"
}

# Start the Container
module "container" {
  source = "./container"
  image = "${module.image.image_out}"
  name = "${lookup(var.container_name, var.env)}"
  inter_port = "${lookup(var.inter_port, var.env)}"
  exter_port = "${lookup(var.exter_port, var.env)}"
}
