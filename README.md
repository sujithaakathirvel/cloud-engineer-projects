# Cloud Engineer Portfolio | AWS

Hands-on AWS projects focused on **cloud infrastructure, security, monitoring, troubleshooting, Terraform, and containerised deployments**.

---

## Overview

This portfolio contains a series of skill-building projects designed to strengthen practical cloud engineering skills across:

- Secure AWS networking and IAM
- Linux troubleshooting and incident response
- Monitoring and observability
- Infrastructure as Code with Terraform
- Containerised application deployment with ECS Fargate

Each project includes implementation details, architecture decisions, and supporting evidence.

---

## AWS Services & Tools

**AWS:** EC2, VPC, IAM, SSM, CloudWatch, SNS, S3, DynamoDB, ECS Fargate, ALB  
**Tools:** Terraform, Docker, Python, Linux

---

## Projects

### 1. Secure VPC Architecture

`01-vpc-secure-architecture`

Built a secure VPC with public and private subnets, NAT Gateway, and private EC2 access through SSM Session Manager without exposing SSH.

### 2. Linux Incident Simulation

`02-linux-incident-simulation`

Simulated Linux service and resource failures on EC2 and applied a structured troubleshooting and root-cause analysis workflow.

### 3. Monitoring & Observability Pipeline

`03-monitoring-alerting-system`

Built an AWS monitoring and alerting pipeline using CloudWatch and SNS, including dashboards, alarms, and automated email notifications.

### 4. Terraform Remote State Management

`04-terraform-remote-state`

Implemented Terraform remote state using S3 with versioning and encryption, alongside DynamoDB-based state locking for safe infrastructure changes.

### 5. ECS Fargate Deployment

`05-ecs-fargate-deployment`

Deployed a containerised Flask application using Terraform, ECS Fargate, ALB, ECR and CloudWatch Logs, including private networking and ECS task recovery.

---

## Skills Demonstrated

- AWS networking and security
- IAM and SSM-based administration
- Linux troubleshooting and incident response
- CloudWatch monitoring and SNS alerting
- Terraform Infrastructure as Code
- Docker containerisation
- ECS Fargate and ALB
- Cloud-native architecture and operational practices

---

## Engineering Approach

These projects were built as **hands-on learning exercises** to develop practical cloud engineering skills.

The focus was on understanding **how systems are designed, deployed, monitored, secured, and troubleshot**, rather than simply completing individual tutorials.

---

## Notes

- Each project is independently implemented and documented.
- Architecture diagrams and implementation evidence are included where relevant.
- The projects represent personal skill development and experimentation with AWS cloud engineering practices.
