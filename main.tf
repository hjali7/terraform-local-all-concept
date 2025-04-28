module "app" {
  source = "./modules/app"
  container_name = "my_app_container"
  image_name = "nginx:latest"
  container_port = 80
}

module "database" {
  source = "./modules/database"
  container_name = "my_db_container"
  image_name = "postgres:13"
  container_port = 5432
  db_uesr = var.db_user
  db_password = var.db_password
  db_name = var.db_name
}


module "storage" {
  source = "./modules/storage"
  container_name = "my_storage_container"
  image_name = "minio/minio"
  container_port = 9000
}

module "queue" {
  source = "./modules/queue"
  container_name = "my_queue_container"
  image_name = "rabbitmq:3-management"
  container_port = 5672 
}

