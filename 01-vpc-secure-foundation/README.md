**Overview Section**
     
     This project demonstrates how to design and deploy a secure AWS networking architecture using Amazon VPC.
    
     An EC2 instance is deployed in a private subnet without a public IP address, following cloud security best practices. 
    
     Administrative access is provided using AWS Systems Manager Session Manager instead of exposing SSH to the internet.
    
     Outbound internet access for updates is enabled through a NAT Gateway while the instance remains isolated from direct internet exposure.

**Architecture**