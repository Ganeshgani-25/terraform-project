# AWS Infrastructure Deployment with Terraform

This project contains a Terraform configuration designed to deploy infrastructure on AWS for a company with two distinct environments: **production** and **development**. The configuration is flexible enough to deploy different resources based on the specified environment, using variables, conditional logic, and modules.

## Project Overview

The Terraform setup includes:
- **Production Environment**: Larger EC2 instance and two S3 buckets (one main bucket, one for backups).
- **Development Environment**: Smaller EC2 instance and one main S3 bucket.

By utilizing variables and conditional logic, the Terraform configuration can be easily adapted to deploy both environments.

## Features

- **Flexible Infrastructure**: Easily switch between production and development environments by setting variables.
- **Modular Design**: Modules are used for creating EC2 instances and S3 buckets, allowing for reusable and manageable infrastructure code.
- **Conditional Logic**: Automatically adjusts EC2 instance types and the number of S3 buckets based on the environment.

## Task Breakdown

### Variables
This configuration includes the following input variables:
- `environment`: Specifies the environment (production or development).
- `instance_type`: Defines the EC2 instance type based on the environment.
- `bucket_count`: Determines the number of S3 buckets to create (conditionally set based on the environment).

### Conditions
Conditional logic is used for:
- Selecting the EC2 instance type depending on the environment.
- Creating the correct number of S3 buckets (1 bucket for development, 2 buckets for production).

### Modules
The project is organized with the following modules:
- **EC2 Module**: Deploys an EC2 instance with flexible options for instance type, tags, and key pair.
- **S3 Module**: Manages the creation of S3 buckets, handling the number of buckets based on the input variables.

## Usage

1. **Set Up Variables**: Customize the variables in `terraform.tfvars` or directly within the command line to specify the environment and any other configurations.
2. **Initialize Terraform**: Run `terraform init` to set up the necessary providers and modules.
3. **Plan the Deployment**: Use `terraform plan` to view the resources that will be created based on the environment settings.
4. **Apply the Configuration**: Run `terraform apply` to deploy the infrastructure on AWS.

```bash
# Example command to deploy for the production environment
terraform apply -var-file="terraformProd.tfvars"

# Example command to deploy for the development environment
terraform apply -var-file="terraformDev.tfvars"
