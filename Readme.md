# 🚀 Scalable Web App with Terraform + AWS

This project deploys a scalable web application using AWS services and Terraform, featuring:
- Custom VPC
- EC2 instances with Auto Scaling Group
- Application Load Balancer
- Public subnets and security groups

## 🔧 Tech Stack

- Terraform
- AWS (EC2, VPC, ALB, ASG)
- Terraform Cloud (optional)

## 🏗️ Architecture

![diagram](diagram.png)

## 📁 Structure

- `/modules` – Reusable modules for VPC, EC2, ALB
- `main.tf` – Entry point for infrastructure

## 🚀 How to Use

```bash
terraform init
terraform plan
terraform apply
