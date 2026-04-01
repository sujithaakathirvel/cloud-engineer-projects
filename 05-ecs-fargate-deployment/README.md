# ECS Fargate Deployment (Terraform)

## Overview

Deployed a containerized Python (Flask) application on AWS using ECS Fargate and Terraform.

The architecture follows a production-style setup with an Application Load Balancer, private networking, centralized logging, and built-in self-healing.

---

## Architecture

![Architecture](screenshots/architecture.png)

---

## Tech Stack

- Amazon ECS (Fargate)  
- Application Load Balancer (ALB)  
- Amazon ECR  
- Amazon CloudWatch Logs  
- Terraform  
- Docker  
- Python (Flask)  

---

## Architecture Design

- Public ALB for external traffic  
- ECS tasks running in private subnets  
- Container images stored in ECR  
- Centralized logging via CloudWatch  
- Health checks configured using `/health` endpoint  

---

## Project Structure

```
05-ecs-fargate-deployment/
│
├── app/
├── terraform/
└── screenshots/
```

---

## Implementation

- Built and containerized a Flask application  
- Pushed Docker image to ECR  
- Provisioned infrastructure using Terraform  
- Configured ALB, target group, and listener  
- Deployed ECS service in private subnets  
- Enabled CloudWatch logging for containers  
- Configured health checks and service scaling behavior  

---

## Self-Healing

Simulated a failure by manually stopping a running ECS task.

ECS automatically launched a replacement task, demonstrating service resilience and high availability.

---

## Screenshots

### ECS Service Running
![ECS Service](screenshots/ecs-service-overview.png)

### Target Group Health
![ALB Target Group](screenshots/alb-target-group-healthy.png)

### CloudWatch Logs
![CloudWatch Logs](screenshots/cloudwatch-app-logs.png)

### Self-Healing (Task Restart)
![Self Healing](screenshots/ecs-self-healing.png)

---

## Key Learnings

- Container lifecycle (build → push → deploy)  
- ECS Fargate architecture and task orchestration  
- Load balancing with ALB  
- Observability using CloudWatch Logs  
- Infrastructure as Code using Terraform  
- Designing resilient and fault-tolerant systems  

---

## Outcome

Built a production-style container deployment with secure networking, load balancing, logging, and automatic recovery from failures.
