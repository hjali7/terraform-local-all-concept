variable "container_name" {
  description = "Name of the RabbitMQ container"
  type        = string
}

variable "image_name" {
  description = "Docker image for RabbitMQ"
  type        = string
}

variable "container_port" {
  description = "Internal port of RabbitMQ"
  type        = number
}

variable "management_port" {
  description = "Port for RabbitMQ Management UI"
  type        = number
}

variable "rabbitmq_user" {
  description = "Username for RabbitMQ"
  type        = string
}

variable "rabbitmq_password" {
  description = "Password for RabbitMQ"
  type        = string
}
