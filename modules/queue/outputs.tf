output "queue_container_id" {
  description = "ID of the created RabbitMQ container"
  value = docker_container.queue_container.id
}