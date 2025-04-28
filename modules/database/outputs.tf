output "database_container_id" {
  description = "The ID of the database container"
  value       = docker_container.db_container.id
}