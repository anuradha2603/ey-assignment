# EY Assignment (By Anuradha)

## 📚 Repository Overview

Welcome to the **EY Assignment** repository. This repository contains all the code, configurations, and documentation to set up and deploy a scalable application on Google Kubernetes Engine (GKE) using **Terraform**, **Kubernetes**, and **Cloud Build**. The assignment includes setting up a 2-node GKE cluster, deploying a test application, configuring auto-scaling, and implementing a blue-green deployment strategy.

### 🚀 **Objective**

This project aims to demonstrate the following:

1. **Creating a GKE Cluster with Terraform**
   - Deploy a 2-node GKE cluster.
   - Deploy a test Nginx application on the cluster.
   - Configure auto-scaling to handle increasing traffic automatically.

2. **Deploying Applications on GKE using Cloud Build**
   - Automate application deployment to GKE with Cloud Build.
   - Implement a blue-green deployment strategy to reduce downtime and risks.

---

## 🔗 Repository Links

- **GitHub Repository:** [https://github.com/anuradha2603/ey-assignment](https://github.com/anuradha2603/ey-assignment)

---


## 🛠️ Prerequisites

Before running the project, make sure you have the following installed and set up:

- **Google Cloud CLI (`gcloud`)**
- **Terraform**
- **kubectl**
- **Cloud Build**
- A GCP Project with billing enabled and necessary IAM permissions.

---

## 📖 How to Get Started

### 1. Clone the Repository

```bash
git clone https://github.com/anuradha2603/ey-assignment.git
cd ey-assignment
```

### 2. Set Up GKE Cluster with Terraform
Navigate to the Terraform directory:

```bash
cd terraform/
```

Configure your terraform.tfvars file with your project details:

```bash
project_id   = "your-gcp-project-id"
region       = "us-central1"
cluster_name = "my-gke-cluster"
node_count   = 2
min_nodes    = 1
max_nodes    = 5
```

Initialize and apply the Terraform configuration:

```bash
terraform init
terraform plan
terraform apply -auto-approve
```

### 3. Deploy Test Application on GKE
Ensure your kubectl is configured to interact with the cluster.

Apply Kubernetes manifests:

```bash
kubectl apply -f kubernetes/deployment.yaml
kubectl apply -f kubernetes/service.yaml
```

Verify the deployment:

```bash
kubectl get pods
kubectl get service nginx-service
```

### 4. Configure Auto-Scaling
Use the Horizontal Pod Autoscaler by applying the hpa.yaml:

```bash
kubectl apply -f kubernetes/hpa.yaml
```

Monitor scaling events:
```bash
kubectl describe deployment nginx-deployment
kubectl get pods
```

### 5. Deploy Applications using Cloud Build
Use the cloudbuild.yaml for automated deployment:

```bash
gcloud builds submit --config=cloudbuild.yaml .
```

### 6. Blue-Green Deployment Strategy

Deploy the nginx-blue.yaml and nginx-green.yaml manifests:

```bash
kubectl apply -f kubernetes/nginx-blue.yaml
kubectl apply -f kubernetes/service.yaml
``` 

Verify active pods:
```bash
kubectl get pods
``` 

---
## 📝 Documentation
Checkout this [documentation](https://docs.google.com/document/d/1jROVw_gdjUjuARG3U6g5BMLg7quxUcql0QRED_1E0Ps/edit?tab=t.0#heading=h.iw10q0v2htyn) for detailed guides on:

1. Creating and managing GKE clusters
2. Terraform configurations
3. Kubernetes deployment best practices
4. Cloud Build pipeline automation
5. Blue-green deployment strategies for production environments

---
## 🧑‍💼 Author
- Anuradha
- Email: anuradha.paswan26@gmail.com
- GitHub: https://github.com/anuradha2603
