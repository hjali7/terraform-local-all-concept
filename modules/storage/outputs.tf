output "storage_container_id" {
  description = "ID of the created MinIO storage container"
  value       = docker_container.storage_container.id
}
