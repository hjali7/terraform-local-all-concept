# Terraform Local Infrastructure (All Concepts)

[![Terraform Format and Validate](https://github.com/hjali7/terraform-local-all-concept/actions/workflows/terraform-plan.yml/badge.svg)](https://github.com/hjali7/terraform-local-all-concept/actions)

---

## 📖 توضیحات پروژه

این پروژه یک زیرساخت کامل روی محیط لوکال با استفاده از **Terraform** و **Docker** ایجاد می‌کند.  
هدف این پروژه پوشش دادن بیش از 80% مفاهیم Terraform به صورت ماژولار و رزومه‌ای بوده است.

---

## 📦 سرویس‌های پیاده‌سازی شده

- **App Service:** Nginx Webserver
- **Database Service:** PostgreSQL Database
- **Storage Service:** MinIO S3-compatible Storage
- **Queue Service:** RabbitMQ Message Broker
- **Monitoring Stack:** Prometheus + Grafana

---

## 🏗 ساختار پروژه

```bash
terraform-local-infra/
├── .github/workflows/
│   ├── terraform-plan.yml
├── modules/
│   ├── app/
│   ├── database/
│   ├── storage/
│   ├── queue/
│   └── monitoring/
├── envs/
│   ├── dev/
│   └── prod/
├── main.tf
├── variables.tf
├── outputs.tf
├── providers.tf
├── backend.tf
├── .gitignore
├── .dockerignore
├── .env.example
└── README.md
```

---

## 🚀 شروع سریع

### پیش‌نیازها:
- [Terraform](https://developer.hashicorp.com/terraform) >= 1.5
- [Docker](https://www.docker.com/products/docker-desktop) فعال

###  دستورات اصلی: 

```bash
# آماده سازی پروژه
terraform init

# مشاهده تغییرات (با مشخص کردن محیط dev)
terraform plan -var-file="envs/dev/terraform.tfvars"

# ایجاد منابع واقعی
terraform apply -var-file="envs/dev/terraform.tfvars"
```

---

## ⚙️ GitHub Actions CI/CD

- Check `Terraform Format`
- Run `Terraform Validate`
- (فعلا `terraform plan` روی GitHub اجرا نمی‌شود به دلیل عدم وجود Docker daemon در runner)

---

## 📋 لایسنس

این پروژه تحت [MIT License](LICENSE) منتشر شده است.

---

## ✍️ توسعه‌دهنده

- **hajali*  
- [GitHub Profile](https://github.com/hjali7)

---