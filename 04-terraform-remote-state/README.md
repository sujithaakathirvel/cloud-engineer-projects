# Terraform Remote State Management (S3 + DynamoDB)

## Overview

Designed and implemented a **Terraform remote state management setup** using Amazon S3 for state storage and DynamoDB for state locking.

The setup provides centralized state management and prevents concurrent Terraform operations from modifying infrastructure at the same time.

---

## Problem Statement

Local Terraform state can create problems when infrastructure is managed collaboratively, including:

- State conflicts between engineers
- Risk of state corruption
- Lack of centralized state management

This project addresses these issues using a remote backend with state locking.

---

## Architecture

- Terraform CLI interacts with the remote backend
- Terraform state is stored in an S3 bucket
- S3 versioning and encryption are enabled
- DynamoDB is used for state locking
- Terraform provisions AWS resources including EC2 and security groups

---

## Architecture Decisions

- **S3 for Remote State Storage**  
  Provides centralized and durable state storage with versioning.

- **DynamoDB for State Locking**  
  Prevents concurrent Terraform operations from modifying the same state.

- **Terraform as Infrastructure as Code**  
  Enables repeatable and version-controlled infrastructure provisioning.

---

## Tech Stack

- Terraform
- Amazon S3
- Amazon DynamoDB
- Amazon EC2

---

## Implementation

- Configured an S3 bucket for remote Terraform state
- Enabled S3 versioning and server-side encryption
- Configured the Terraform remote backend
- Implemented state locking using DynamoDB
- Provisioned EC2 and security group resources using Terraform
- Tested the Terraform lifecycle using `init → plan → apply → destroy`

---

## Workflow

1. Created the S3 bucket and DynamoDB table
2. Configured the Terraform remote backend
3. Migrated Terraform state to the remote backend
4. Provisioned infrastructure using Terraform
5. Tested state locking with concurrent operations

---

## Failure Scenario: State Locking

A concurrent Terraform operation was simulated while another operation held the state lock.

The second operation was prevented from modifying the infrastructure until the existing lock was released.

**Key insight:** State locking helps prevent conflicting infrastructure changes and protects Terraform state consistency.

---

## Security Considerations

- S3 bucket configured with versioning and server-side encryption
- Public access blocked on the S3 bucket
- IAM permissions used to control access to backend resources
- State locking used to prevent concurrent modifications

---

## CI/CD Consideration

The remote backend provides a foundation for integrating Terraform with CI/CD pipelines, allowing infrastructure changes to use a shared and consistent state.

---

## Project Structure

```text
04-terraform-remote-state/
├── main.tf
├── provider.tf
├── backend.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
├── .gitignore
└── screenshots/
```

---
## Screenshots

### S3 State File

![S3 State File](https://github.com/sujithaakathirvel/cloud-engineer-projects/blob/main/04-terraform-remote-state/screenshots/02-s3-state-file.png)

### EC2 Instance Running

![EC2 Instance Running](https://github.com/sujithaakathirvel/cloud-engineer-projects/blob/main/04-terraform-remote-state/screenshots/05-ec2-instance-running.png)

### State Lock Error

![State Lock Error](https://github.com/sujithaakathirvel/cloud-engineer-projects/blob/main/04-terraform-remote-state/screenshots/06-state-lock-error.png)

---

## Key Outcomes

Implemented remote Terraform state management using S3
Configured state locking with DynamoDB
Practised safe infrastructure provisioning with Terraform
Demonstrated handling of concurrent Terraform operations
Applied security controls to protect Terraform state

---

## Skills Demonstrated

Infrastructure as Code with Terraform
Remote state and backend configuration
State locking and concurrency control
AWS resource provisioning
Secure infrastructure configuration

---

## Future Improvements

Integrate Terraform with a CI/CD pipeline
Explore Terraform Cloud or HCP Terraform
Implement more granular IAM permissions for backend access
