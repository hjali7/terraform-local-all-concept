terraform {
  required_providers {
    docker = {
      source = "kreuzwerker/docker"
    }
  }
}

resource "docker_image" "prometheus_image" {
  name = var.prometheus_image_name
}

resource "docker_container" "prometheus_container" {
  name  = var.prometheus_container_name
  image = docker_image.prometheus_image.name

  ports {
    internal = 9090
    external = var.prometheus_port
  }
}

resource "docker_image" "grafana_image" {
  name = var.grafana_image_name
}

resource "docker_container" "grafana_container" {
  name  = var.grafana_container_name
  image = docker_image.grafana_image.name

  ports {
    internal = 3000
    external = var.grafana_port
  }
}