# Terraform Remote State with S3 & DynamoDB

## Overview

Implemented Terraform remote state management using AWS S3 (storage) and DynamoDB (locking) to simulate a real-world DevOps workflow.

---

## Architecture

* Terraform state stored in S3
* DynamoDB used for state locking
* EC2 instance provisioned using remote backend
* Security Group for SSH access

---

## Tech Stack

* Terraform
* AWS S3
* AWS DynamoDB
* AWS EC2

---

## What I Built

* Remote state in S3 (versioning + encryption enabled)
* State locking using DynamoDB
* EC2 instance with security group
* Full lifecycle: create → validate → destroy

---

## Project Structure

```
terraform-remote-state-project/
│
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

## Workflow

1. Bootstrap S3 + DynamoDB
2. Configure backend & migrate state
3. Provision EC2
4. Test state locking

---

## Screenshots

## S3 State File
![S3 state file](./screenshots/02-s3-state-file.png)

## EC2 Running
![EC2 running](./screenshots/05-ec2-instance-running.png)

## State Lock Error
![state lock error](./screenshots/06-state-lock-error.png)

---

## Security

* S3 versioning + encryption enabled
* Public access blocked
* DynamoDB locking prevents conflicts

---

## Key Takeaways

* Terraform remote state management
* State locking in team environments
* Handling IAM & real-world errors
* Debugging infrastructure issues

---

## Outcome

Built a production-style Terraform workflow with secure remote state and locking.
