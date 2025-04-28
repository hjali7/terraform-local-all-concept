terraform {
  required_version = ">= 1.0.0"
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
    }
  }
}

resource "docker_image" "app_image" {
  name = var.image_name
}

resource "docker_container" "app_container" {
  name = var.container_name
  image = docker_image.app_image.name
  ports {
    internal = var.container_port
    external = var.container_port
  }
}