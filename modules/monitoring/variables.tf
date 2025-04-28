variable "prometheus_container_name" {
  description = "Name of the Prometheus container"
  type        = string
}

variable "grafana_container_name" {
  description = "Name of the Grafana container"
  type        = string
}

variable "prometheus_image_name" {
  description = "Docker image for Prometheus"
  type        = string
}

variable "grafana_image_name" {
  description = "Docker image for Grafana"
  type        = string
}

variable "prometheus_port" {
  description = "Port to expose Prometheus"
  type        = number
}

variable "grafana_port" {
  description = "Port to expose Grafana"
  type        = number
}
