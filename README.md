# gke-terraform
create gke cluster with terraform 


## 📌 Introduction


in this projet we will create a gke cluster and deploy nginx pod inside this cluster 


## 🚀 Features


## ☁️ GKE Deployment with Terraform


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

### 🔗 6. deploy nginx pod

in the file nginx-deployment.yaml there is a template file to deploy nginx pod inside this cluster, to deploy it:

```
kubectl create -f nginx-deployment.yaml
kubectl get pods
kubectl get svc
```

a service will be created with type load balancer it allow to check your deployment 
