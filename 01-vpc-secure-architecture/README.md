# Secure VPC Architecture (AWS)

Designed and implemented a **secure, production-style VPC architecture** on AWS, using private networking and AWS Systems Manager (SSM) for administrative access without exposing the EC2 instance to the public internet.

---

## 🏗️ Architecture

![Secure VPC Architecture](screenshots/secure-vpc.jpg)

### Architecture Flow

Internet → Internet Gateway → Public Subnet → NAT Gateway → Private Subnet → EC2

Administrative access:
Engineer → AWS Systems Manager Session Manager → EC2

---

## 🛠️ AWS Services

- Amazon VPC
- Amazon EC2
- AWS IAM
- AWS Systems Manager (SSM)
- NAT Gateway
- Internet Gateway
- Security Groups

---

## 🔧 What I Built

- Created a VPC with public and private subnets across an AWS Availability Zone.
- Deployed an EC2 instance in a **private subnet with no public IP address**.
- Configured a NAT Gateway to provide controlled outbound internet access.
- Used AWS Systems Manager Session Manager instead of SSH for administrative access.
- Configured IAM permissions required for SSM connectivity.
- Configured security groups to prevent direct inbound internet access to the EC2 instance.
- Validated private connectivity, SSM access, and outbound internet access.

---

## 🔐 Security Design

- **Private EC2:** No direct public internet exposure.
- **SSM instead of SSH:** Administrative access without exposing port 22.
- **NAT Gateway:** Allows outbound internet connectivity while keeping EC2 private.
- **Security Groups:** Restrict inbound traffic to the private instance.
- **IAM:** Controls access to AWS resources using role-based permissions.

These controls reduce the attack surface and follow common AWS security practices.

---

## 💡 Key Engineering Decisions

### Private Subnet
EC2 was placed in a private subnet to prevent direct inbound internet access.

### SSM Session Manager
SSM was chosen over SSH to avoid managing SSH keys and exposing port 22.

### NAT Gateway
A NAT Gateway provides outbound internet connectivity for tasks such as package updates without making the EC2 instance publicly reachable.

---

## 📁 Project Structure

```text
01-vpc-secure-architecture/
├── screenshots/
└── README.md
```

---

## 🎯 Key Outcomes

- Designed a secure VPC with public and private networking.
- Deployed EC2 without a public IP address.
- Enabled administrative access through SSM Session Manager.
- Removed the requirement for inbound SSH access.
- Enabled controlled outbound internet connectivity through NAT Gateway.

---

## 🧠 Skills Demonstrated

- AWS VPC networking
- Public and private subnet design
- Route tables and internet routing
- NAT Gateway configuration
- EC2 deployment
- IAM roles and permissions
- AWS Systems Manager
- Security group configuration
- Cloud security best practices

---

## 🚀 Future Improvements

- Automate infrastructure using Terraform.
- Add an Application Load Balancer for application workloads.
- Implement Auto Scaling.
- Add CloudWatch monitoring and alerting.
