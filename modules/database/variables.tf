variable "container_name" {
  description = "Name of the container"
  type        = string

}

variable "image_name" {
  description = "Name of the image to use for the container"
  type        = string
}

variable "container_port" {
  description = "Port on which the container will listen"
  type        = number
}


variable "db_user" {
  description = "Database username"
  type        = string
}


variable "db_password" {
  description = "Database password"
  type        = string
}

variable "db_name" {
  description = "Database name"
  type        = string
}