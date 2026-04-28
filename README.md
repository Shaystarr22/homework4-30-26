# Terraform GCP Lab

## What this does
Provisions a GCP VPC network and writes a local text file using Terraform.

## How I did this

### 1. Set up the repo
Created a new GitHub repo and cloned it locally. Added a .gitignore to exclude
state files and the .terraform directory.

### 2. Provider config
Looked up the latest Google provider version on the Terraform registry and pinned
it with ~> 6.0. Also added the local provider for the text file resource.

### 3. VPC
Used the google_compute_network resource from the Terraform registry docs.
Set auto_create_subnetworks to false so subnets are controlled manually.

### 4. local_file resource
Used the local_file resource to write a plain text file with my favourite food.

### 5. Output
Added an output block in outputs.tf to print the VPC name after apply.

## How to run it
cd kenya
terraform init
terraform apply -var="project_id=YOUR_PROJECT_ID"

## Documentation used
- Terraform Google provider: https://registry.terraform.io/providers/hashicorp/google/latest/docs
- google_compute_network: https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_network
- local_file: https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file

## Issues encountered
- .terraform folder got committed by accident before .gitignore was created, had to wipe git history and start fresh
- main.tf and outputs.tf were accidentally created in root folder and had to be moved to kenya/

## Screenshot
[add screenshot of successful terraform apply here]
