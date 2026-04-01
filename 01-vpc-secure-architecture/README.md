# Secure VPC Architecture (AWS)

## Overview

Designed and deployed a secure AWS VPC architecture with an EC2 instance in a private subnet, following cloud security best practices.

Administrative access is provided using AWS Systems Manager (SSM) Session Manager, eliminating the need for SSH access. Outbound internet connectivity is enabled via a NAT Gateway while keeping the instance isolated from direct internet exposure.

---

## Architecture

![secure-vpc](https://github.com/user-attachments/assets/ed391257-0cf4-4fbf-a56f-a6aaaa47ac6c)

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
