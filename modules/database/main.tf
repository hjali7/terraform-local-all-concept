terraform {
  required_version = ">= 1.0.0"
  required_providers {
    docker = {
        source = "kreuzwerker/docker"
    }
  }
}

resource "docker_image" "db_image" {
  name = var.image_name
}


resource "docker_container" "db_container" {
  name = var.container_name
  image = docker_image.db_image.name

  env = [
    "POSTGRES_USER=${var.db_user}",
    "POSTGRES_PASSWORD=${var.db_password}",
    "POSTGRES_DB=${var.db_name}"
    ]
  ports {
    internal = var.container_port
    external = var.container_port
  }
}