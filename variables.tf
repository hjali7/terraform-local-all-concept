variable "db_user" {
  description = "Username for the database"
  type        = string
}

variable "db_password" {
  description = "Password for the database"
  type        = string
}

variable "db_name" {
  description = "Name of the database"
  type        = string
}

variable "minio_access_key" {
  description = "Access Key for MinIO"
  type        = string
}

variable "minio_secret_key" {
  description = "Secret Key for MinIO"
  type        = string
}

variable "rabbitmq_user" {
  description = "Default RabbitMQ username"
  type        = string
}

variable "rabbitmq_password" {
  description = "Default RabbitMQ password"
  type        = string
}
