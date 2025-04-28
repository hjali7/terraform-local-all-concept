terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
    }
  }
}

resource "docker_image" "storage_image" {
  name = var.image_name
}

resource "docker_container" "storage_container" {
  name  = var.container_name
  image = docker_image.storage_image.latest

  env = [
    "MINIO_ACCESS_KEY=${var.access_key}",
    "MINIO_SECRET_KEY=${var.secret_key}"
  ]

  ports {
    internal = var.container_port
    external = var.container_port
  }

  command = ["server", "/data"]
}
