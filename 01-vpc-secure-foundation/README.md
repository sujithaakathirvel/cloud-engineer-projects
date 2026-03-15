**Overview**

This Project demonstrates how to design and deploy a secure AWS networking architecture using Amazon VPC. 

An EC2 instance is deployed in a private subnet without a public IP address, following cloud security best practices. Administrative access is provided using AWS Systems Manager Session Manager instead of exposing SSH to the internet.

Outbound internet access for updates is enabled through a NAT Gateway while the instance remains isolated from direct internet exposure.

**Architecture**

**Operational Flow**

Administrative access to the EC2 instance is provided through AWS Systems Manager Session Manager using an attached IAM role.

Outbound internet traffic from the private instance is routed through the NAT Gateway and Internet Gateway, allowing package installation and updates while preventing inbound internet access.

**Security Considerations**

This Architecture follows several AWS security best practices: 

- EC2 instance deployed in a **private subnet**
- **No public IP address** assigned to the instance
- **SSH access disabled** (port 22 not exposed)
- Secure administrative access using **AWS Systems Manager Session Manager**
- **Minimal security group rules** with no inbound traffic allowed
- Controlled outbound internet access through the **NAT Gateway**

These measures significantly reduce the infrastructure attack surface.








