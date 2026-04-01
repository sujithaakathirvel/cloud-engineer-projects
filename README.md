# AWS Cloud Engineer Portfolio

Practical cloud engineering projects focused on reliability, security, and infrastructure automation.

---

## Environment

- OS: Amazon Linux 2023  
- Access: AWS Systems Manager (SSM Session Manager)  
- Infrastructure as Code: Terraform  
- Container Runtime: Docker  

---

## AWS Services Used

- Amazon EC2  
- Amazon VPC  
- AWS IAM  
- AWS Systems Manager (SSM)  
- Amazon CloudWatch  
- Amazon SNS  
- Amazon S3  
- Amazon DynamoDB  
- Amazon ECS (Fargate)  
- Elastic Load Balancer (ALB)  

---

## Projects

### 1. Secure VPC Architecture
→ `01-vpc-secure-architecture`  
Designed a VPC with public/private subnets, NAT Gateway, and EC2 deployed in a private subnet with no SSH access.

---

### 2. Linux Incident Simulation (EC2)
→ `02-linux-incident-simulation`  
Designed and executed failure simulations (nginx, CPU, disk) and implemented structured troubleshooting workflows.

---

### 3. Monitoring & Alerting System
→ `03-monitoring-alerting-system`  
Implemented monitoring using CloudWatch and alerting via SNS with real-time failure detection.

---

### 4. Terraform Remote State
→ `04-terraform-remote-state`  
Configured remote state management using S3 and DynamoDB with state locking.

---

### 5. ECS Fargate Deployment (Terraform)
→ `05-ecs-fargate-deployment`  
Deployed a containerized application using ECS Fargate with ALB, private networking, and logging.

---

## Focus Areas

- Cloud architecture design  
- Linux troubleshooting and incident handling  
- Infrastructure as Code (Terraform)  
- Monitoring and observability  
- Container-based deployments  

---

## Notes

- Each project is implemented independently with its own documentation.  
- Focus is on practical, production-style workflows rather than tutorials.  
- Emphasis on security best practices (private subnets, IAM roles, no public SSH access).  