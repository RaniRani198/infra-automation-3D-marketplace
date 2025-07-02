#!/bin/bash
echo "Starting Terraform apply..."
cd terraform
terraform init
terraform apply -auto-approve

echo "Deploying application to Kubernetes..."
kubectl apply -f ../k8s/deployment.yaml

echo "Done."