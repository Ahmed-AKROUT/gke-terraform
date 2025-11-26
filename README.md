## ☁️ GKE Deployment with Terraform


## 📌 Introduction

In this project, we will create a GKE cluster and deploy an NGINX pod inside the cluster.

### 🔐 1. Connect to Google Cloud
Using the **Google Cloud SDK**, log in with your Google Cloud account:
```
gcloud auth application-default login
```

### 📂 2. Navigate to the Terraform Project
```
cd gke-terraform
```

### 🛠️ 3. Update Variables
If needed, update values inside:
```
variables.tf
```

### 🚀 4. Initialize & Deploy Terraform
```
terraform init
terraform plan
terraform apply
```

Your **GKE cluster is now being created**.

### 🔗 5. Connect to the GKE Cluster
Once the cluster is created, run:
```
gcloud container clusters get-credentials <CLUSTER_NAME> --region <REGION> --project <PROJECT_ID>
`````

### 📦 6. Deploy the NGINX Pod

The file `nginx-deployment.yaml` contains a template to deploy an NGINX pod inside the cluster. To deploy it:

```
kubectl create -f nginx-deployment.yaml
kubectl get pods
kubectl get svc
```

A `LoadBalancer` service will be created, allowing you to access your deployment externally.
