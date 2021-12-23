# Terraform Module to Provision a GKE Cluster with istio enabled

- [Terraform Module to Provision a GKE Cluster with istio enabled](#terraform-module-to-provision-a-gke-cluster-with-istio-enabled)
  - [pre-requisites](#pre-requisites)
  - [Variables to include](#variables-to-include)
    - [region](#region)
    - [creds_file_path](#creds_file_path)
    - [project_id](#project_id)
    - [cluster_name](#cluster_name)
    - [machine_type](#machine_type)
    - [gke_num_nodes](#gke_num_nodes)
    - [node_locations](#node_locations)
  - [Sample terraform.tfvars file](#sample-terraformtfvars-file)
  - [Running](#running)

## pre-requisites

- Gcloud credentials json file
- Terraform
- Helm

## Variables to include

### region

Region in which the GKE cluster will be provisioned

### creds_file_path

path to creds.json files for gcloud service account, feel free to update provider as per your requirment

### project_id

ID of Gcloud Project

### cluster_name

User Defined Name given to the Cluster

### machine_type

Machine Type to be used for the Node Pool

### gke_num_nodes

Number of Nodes in the Node Pool

### node_locations

a list of zones within the region to provsion nodes

## Sample terraform.tfvars file

```
creds_file_path = "./creds.json"

project_id = "altair-330820"

region = "us-east1"

cluster_name = "altair-gke"

machine_type = "e2-medium"

num_of_nodes_per_location = 1

node_locations = ["us-east1-b", "us-east1-c"]
```

## Running

- Ensure all prerequisites are fulfilled
- create a file named ```terraform.tfvars```
- Fill the tfvars file as specified [here](#sample-terraformtfvars-file)
- Run these Commands

```
terraform init

terrform validate

terraform apply
```
- Have a look at all the resources that terraform shows in the apply command and type 'yes' to deploy the given cluster

- Verify cluster creation and istio configuration either through the gcloud console or CLI