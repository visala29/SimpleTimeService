# Task 2 - Terraform and Cloud: create the infrastructure to host your container.

## ✅ Prerequisites

Please ensure the following are installed on your local machine:

- [Terraform](https://developer.hashicorp.com/terraform/downloads)
- [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2.html)
- [VS Code](https://code.visualstudio.com/)
- Access to an AWS account with sufficient permissions
- Make sure your docker is running while doing this entire process

## 🔐 AWS Authentication

You must authenticate to AWS **before running Terraform**.

### Option 1: Using AWS CLI or using command prompt

aws configure

It will task the following details, give your access key and secret key
AWS Access Key ID: <your-access-key>
AWS Secret Access Key: <your-secret-key>
Default region name: us-east-1
Default output format: json

### Steps to Deploy
create a directory ex: app

mkdir app

cd app
# 1. Clone the Repository
git clone https://github.com/visala29/particle41.git 

cd particle41

checkout to terraform branch

open the files in vscpde editor and 

update your <your-dockerhub-username>/<your-image-name>/latest in terraform.tfvar file

ex: container_image = "visala29/my-app:latest"


# 2. Build the Docker Image

docker build -t <your-dockerhub-username>/<your-image-name> .
docker push <your-dockerhub-username>/<your-image-name>

# 3. creating infrastructure using Terraform

terraform init

terraform plan

terraform apply it will create all the resources.

use terraform destroy for deleting the resources.

