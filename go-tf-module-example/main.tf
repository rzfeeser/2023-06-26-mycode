/* main.tf */

terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.22.0"
    }
  }
}

provider "docker" {}

module "go_websvr" {
  source = "./modules/simple_gosvr"

  // define how to use the module
  image_name = "dockergo:multistage"
  container_name = "go_service_with_module"
}

