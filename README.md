# EC2 Infrastructure Provisioning with Terraform

## Overview

This project uses Terraform to provision an Amazon EC2 instance on AWS using Infrastructure as Code (IaC).

## Prerequisites

* AWS Account
* AWS CLI configured
* Terraform installed
* IAM user with appropriate permissions

## Files

* `ec2.tf` - Defines the AWS EC2 instance and related resources.
* `var.tf` - Contains input variable definitions.

## Usage

### Initialize Terraform

```bash
terraform init
```

### Validate Configuration

```bash
terraform validate
```

### Review Execution Plan

```bash
terraform plan
```

### Create Infrastructure

```bash
terraform apply
```

Type `yes` when prompted.

### Destroy Infrastructure

```bash
terraform destroy
```

Type `yes` when prompted.

## Terraform Workflow

```text
terraform init
      ↓
terraform validate
      ↓
terraform plan
      ↓
terraform apply
      ↓
Infrastructure Created
```

## Author

Swati Verma
DevOps Engineer
