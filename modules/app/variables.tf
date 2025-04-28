variable "container_name"  {
  description = "Name of the container to be created"
  type        = string
}

variable "image_name" {
  description = "Name of the image to be used for the container"
  type        = string
}

variable "container_port" {
  description = "Port on which the container will listen"
  type        = number
}

