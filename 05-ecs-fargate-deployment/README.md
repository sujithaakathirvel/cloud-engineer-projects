#  Containerized Application on AWS (ECS Fargate + Terraform)

## Overview

Designed, deployed, and operated a **containerized application on AWS** using ECS Fargate and Terraform.

The system follows modern cloud architecture principles with **load balancing, private networking, centralized logging, and built-in self-healing**, ensuring scalability, high availability, and reliability.

Designed as a stateless, horizontally scalable architecture.  
Designed to reflect real-world production systems used in modern cloud-native applications.

---

## Architecture


![Architecture](screenshots/architecture.png)

---

## Architecture Flow

User → ALB (Public Subnet)  
      → ECS Fargate Tasks (Private Subnet)  
      → Container (Flask App)  
      → CloudWatch Logs  

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

## Architecture Decisions

- **Fargate over EC2**  
  Eliminates server management and enables serverless container orchestration  

- **Private Subnets for ECS Tasks**  
  Enhances security by preventing direct internet exposure  

- **Application Load Balancer**  
  Distributes incoming traffic and performs health checks  

- **CloudWatch Logs**  
  Provides centralized logging for debugging and observability  

- **ECR for Image Storage**  
  Secure and scalable container image registry  

---

## Implementation

- Built and containerized a Python Flask application  
- Pushed Docker image to Amazon ECR  
- Provisioned infrastructure using Terraform  
- Configured ALB, target group, and listener  
- Deployed ECS service in private subnets  
- Enabled CloudWatch logging for containers  
- Configured health checks using `/health` endpoint  

---

## Self-Healing & Resilience

- Simulated failure by manually stopping a running ECS task  
- ECS service automatically launched a replacement task  
- ALB health checks ensured traffic was routed only to healthy containers  

This demonstrates **automatic recovery, high availability, and fault tolerance in a production environment**.

---

## Security Considerations

- Only ALB exposes public HTTP traffic  
- ECS tasks run in private subnets with no direct internet access  
- Security groups restrict traffic flow between ALB and ECS  
- IAM roles used for ECS task execution (no hardcoded credentials)  

---

## CI/CD Consideration

This architecture is designed to integrate with CI/CD pipelines:

- Docker images can be automatically built and pushed to ECR  
- ECS services can be updated via automated deployments  
- Enables zero-downtime deployments using rolling updates  

---

## Observability Consideration

- CloudWatch Logs used for debugging and monitoring container behavior  
- Metrics can be extended with CloudWatch alarms for proactive alerting  

---

## Key Engineering Insight

- Container orchestration platforms like ECS ensure **service availability through automated recovery**  
- Health checks and load balancing are critical for maintaining uptime  
- Serverless containers (Fargate) reduce operational overhead while maintaining scalability  

---

## Trade-offs & Considerations

- Fargate simplifies operations but has higher cost compared to EC2  
- ALB adds slight latency but enables better traffic distribution and health checks  
- Stateless design improves scalability but requires external state management (e.g., databases)  

---

## Project Structure

05-ecs-fargate-deployment/
|
|-- app/
|-- terraform/
`-- screenshots/

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

## Key Outcomes

- Designed, deployed, and operated a production-grade containerized application  
- Implemented secure networking with public ALB and private compute layer  
- Achieved high availability through ECS self-healing mechanisms  
- Enabled centralized logging for observability  
- Automated infrastructure provisioning using Terraform  

---

## Skills Demonstrated

- Containerization using Docker  
- ECS Fargate deployment and orchestration  
- Load balancing and health checks (ALB)  
- Infrastructure as Code (Terraform)  
- Observability with CloudWatch Logs  
- Designing scalable and fault-tolerant systems  

---

## Future Improvements

- Implement CI/CD pipeline for automated deployments  
- Add auto-scaling policies based on CPU/memory  
- Integrate monitoring and alerting (CloudWatch Alarms + SNS)  
- Add HTTPS using ACM and secure ALB configuration  