variable "container_name" {
  description = "Name of the MinIO container"
  type        = string
}

variable "image_name" {
  description = "Docker image for MinIO"
  type        = string
}

variable "container_port" {
  description = "Port to expose from the MinIO container"
  type        = number
}

variable "access_key" {
  description = "MinIO access key"
  type        = string
}

variable "secret_key" {
  description = "MinIO secret key"
  type        = string
}