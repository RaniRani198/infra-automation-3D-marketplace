# 🏗️ Infrastructure Automation – 3D Construction Marketplace

This project showcases a real-world simulation of automating the infrastructure for a **3D Construction Equipment Marketplace**, deployed on **AWS** using **Terraform**, **Kubernetes**, **Jenkins**, **ArgoCD**, and fully observable with **Prometheus** and **Grafana**.



## 📌 Tech Stack

- **Cloud**: AWS (EC2, VPC, Subnets)
- **IaC**: Terraform
- **Container Orchestration**: Kubernetes (EKS-ready)
- **CI/CD**: Jenkins + ArgoCD (GitOps)
- **Monitoring**: Prometheus + Grafana
- **Security**: AWS IAM, Secrets
- **Scripting**: Bash

---

## 📁 Project Structure

infra-automation-3d-marketplace/
├── terraform/ # AWS infrastructure (VPC, EC2)
├── k8s/ # Kubernetes deployment & service
├── ci-cd/ # Jenkins pipeline & ArgoCD app
├── monitoring/ # Prometheus config & Grafana dashboard
├── scripts/ # Bash automation
├── architecture.png # System architecture diagram
└── README.md


---

## ⚙️ Features

- 🔁 Automated AWS provisioning (VPC, EC2) with Terraform
- 🐳 Dockerized microservices deployed via Kubernetes
- 🚀 Jenkins CI/CD pipeline with ArgoCD GitOps delivery
- 📊 Prometheus scraping + Grafana dashboards for live observability
- 🔐 Secrets & config decoupled from code
- 📦 Production-grade deployment with service exposure via LoadBalancer

---

## 📷 Architecture Diagram

![Architecture](architecture.png)

---

## ▶️ How to Deploy

```bash
# 1. Provision Infra
cd terraform
terraform init
terraform apply -auto-approve

# 2. Deploy App
kubectl apply -f k8s/deployment.yaml
kubectl apply -f k8s/service.yaml

# 3. Monitor
kubectl get svc marketplace-service  # Get LoadBalancer IP
