# Download the latest Ghost image
module "image" {
  source = "./image"
  image = "${lookup(var.image, var.env)}"
}

# Start the Container
module "container" {
  source = "./container"
  image = "${module.image.image_out}"
  name = "${var.container_name}"
  inter_port = "${var.inter_port}"
  exter_port = "${var.exter_port}"
}
