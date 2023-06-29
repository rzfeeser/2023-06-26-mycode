/* main.tf */

resource "docker_image" "gosvr" {
  # the name of our go image
  name         = var.image_name  // define this
  keep_locally = true            // keep image after "destroy"
}

resource "docker_container" "gosvr" {
  image = docker_image.gosvr.image_id
  name = var.container_name      // define this
  ports {
    internal = 9876
    external = 2224
  }
}

