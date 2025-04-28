output "prometheus_container_id" {
  description = "ID of the Prometheus container"
  value       = docker_container.prometheus_container.id
}

output "grafana_container_id" {
  description = "ID of the Grafana container"
  value       = docker_container.grafana_container.id
}