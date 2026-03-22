# Monitoring & Observability with CloudWatch and SNS

## Overview

Designed and implemented a monitoring and alerting system on AWS to track system performance and receive notifications when issues occur.

## Services Used

- Amazon EC2  
- Amazon CloudWatch  
- Amazon SNS  

## What Was Implemented

- Installed and configured CloudWatch Agent on EC2  
- Collected system metrics (CPU, memory, disk)  
- Created CloudWatch alarm for CPU utilization  
- Configured SNS for email notifications  
- Built a CloudWatch dashboard for visualization  
- Simulated high CPU usage to trigger alerts  

## Alert Flow

EC2 → CloudWatch → Alarm → SNS → Email

## Screenshots

### Metrics
![metrics](screenshots/01-metrics.png)

### Alarm Triggered
![alarm](screenshots/02-alarm-triggered.png)

### Email Alert
![email](screenshots/03-email-alert.png)

### Dashboard
![dashboard](screenshots/04-dashboard.png)

### Python Log Analysis
![python](screenshots/05-python-output.png)

## Log Analysis (Python)

A simple Python script was created to analyze system logs:

- Reads `/var/log/syslog`  
- Counts error occurrences  
- Outputs summary  

## Key Learnings

- Monitoring vs Observability  
- CloudWatch metrics and alarms  
- SNS-based alerting  
- Importance of proactive monitoring  

## Future Improvements

- Add memory and disk alarms  
- Integrate logs into CloudWatch Logs  
- Automate setup using Terraform  