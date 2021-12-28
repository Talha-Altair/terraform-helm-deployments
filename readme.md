# Terraform Module to Deploy a Helm Chart to a Kubernetes Cluster

- [Terraform Module to Deploy a Helm Chart to a Kubernetes Cluster](#terraform-module-to-deploy-a-helm-chart-to-a-kubernetes-cluster)
  - [pre-requisites](#pre-requisites)
  - [Variables to include](#variables-to-include)
    - [KUBECONFIG_PATH](#kubeconfig_path)
    - [namespace](#namespace)
  - [Sample terraform.tfvars file](#sample-terraformtfvars-file)
  - [Running](#running)

## pre-requisites

- kubeconfig with access to the required cluster
- Terraform
- Helm

## Variables to include

### KUBECONFIG_PATH

Path to Kube Config file

### namespace

NameSpace in which the helm deployment will be deployed to

## Sample terraform.tfvars file

```
KUBECONFIG_PATH = "~/.kube/config"

namespace = "default"
```

## Running

- Ensure all prerequisites are fulfilled
- create a file named ```terraform.tfvars``` (ENV FILE)
- Fill the tfvars file as specified [here](#sample-terraformtfvars-file)
- Run these Commands

```
terraform init

terrform validate

terraform apply
```
- Have a look at all the resources that terraform shows in the apply command and type 'yes' to deploy the given cluster

- Verify deployment through a kubernetes dashboard or kubectl