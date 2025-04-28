output "container_id" {
  description = "ID of the Docker container for the app"
  value = docker_container.app_container.id
}