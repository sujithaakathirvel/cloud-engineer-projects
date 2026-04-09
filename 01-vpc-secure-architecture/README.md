# Secure VPC Architecture (AWS)

## Overview

Designed and implemented a **secure, production-style VPC architecture** on AWS with private compute resources, no direct internet exposure, and centralized administrative access via AWS Systems Manager (SSM).

Administrative access is handled via SSM Session Manager, eliminating the need for SSH. Outbound internet connectivity is enabled through a NAT Gateway while keeping the instance isolated from direct internet exposure.

---

## Architecture

![secure-vpc](https://github.com/user-attachments/assets/ed391257-0cf4-4fbf-a56f-a6aaaa47ac6c)

---

## Architecture Decisions

- **Private Subnet for EC2**  
  Used to isolate compute resources and prevent direct internet exposure  

- **SSM over SSH**  
  Eliminates the need for open ports and reduces attack surface  

- **NAT Gateway**  
  Allows secure outbound internet access without exposing the instance  

---

## Operational Flow

- EC2 instance is deployed in a private subnet with no public IP  
- Administrative access is handled via SSM using an attached IAM role  
- Outbound traffic is routed through the NAT Gateway → Internet Gateway  
- Enables updates and package installation without exposing the instance to inbound internet traffic  

---

## Security Considerations

- EC2 instance deployed in a **private subnet**  
- **No public IP address** assigned  
- **SSH access disabled** (port 22 not exposed)  
- Access managed via **AWS Systems Manager (SSM)**  
- **No inbound traffic allowed** in security groups  
- Controlled outbound access through **NAT Gateway**  

These controls reduce the attack surface and follow least-privilege principles.

---

## Key Outcomes

- Eliminated public access to compute resources  
- Reduced attack surface by removing SSH access  
- Enabled secure administrative access via SSM  
- Maintained outbound connectivity for updates and patches  

---

## Skills Demonstrated

- Designed secure VPC architecture (public + private subnets)  
- Configured routing using Internet Gateway and NAT Gateway  
- Implemented secure access using IAM roles and SSM  
- Applied infrastructure security best practices  
- Deployed and validated a Linux-based EC2 instance  

---

## Future Improvements

- Infrastructure automation using Terraform  
- Add Application Load Balancer (ALB)  
- Implement Auto Scaling  
- Add monitoring and logging with CloudWatch  
