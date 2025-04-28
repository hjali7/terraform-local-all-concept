terraform {
  required_version = ">= 1.0.0"
  required_providers {
    docker = {
        source = "kreuzwerker/docker"
    }
  }
}

resource "docker_image" "queue_image" {
  name = var.image_name
}

resource "docker_container" "queue_container" {
  name = var.container_name
  image = docker_image.queue_image.latest
  env = [
    "RABBITMQ_DEFAULT_USER=${var.rabbitmq_user}",
    "RABBITMQ_DEFAULT_PASS=${var.rabbitmq_password}"
  ]
  ports {
    internal = var.container_port
    external = var.container_port
  }

  ports {
    internal = var.management_port
    external = var.management_port
  }
}