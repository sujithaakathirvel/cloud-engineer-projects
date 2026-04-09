# Production Monitoring & Observability Pipeline on AWS

## Overview

Designed and implemented a **production-style monitoring and alerting system on AWS** to track system performance, detect anomalies, and respond to failures in real time.

The system collects metrics from EC2, evaluates thresholds using CloudWatch alarms, and sends notifications via SNS, enabling proactive incident detection.

**The system is designed to enable proactive monitoring rather than reactive debugging.**

---

## Services Used

- Amazon EC2  
- Amazon CloudWatch  
- Amazon SNS  

---

## Architecture Flow

EC2 → CloudWatch Metrics → Alarm → SNS → Email Notification

---

## Architecture Decisions

- Amazon CloudWatch was chosen for native integration with AWS services and real-time metric collection  
- Amazon SNS was used for alerting to enable immediate, event-driven notifications  
- EC2-based monitoring simulates real-world infrastructure environments  
- Python log analysis complements metrics with deeper system-level insights  

---

## Implementation

- Installed and configured CloudWatch Agent on EC2  
- Collected system-level metrics (CPU, memory, disk)  
- Created CloudWatch alarms based on CPU utilization thresholds  
- Configured SNS for real-time email notifications  
- Built CloudWatch dashboards for metric visualization  
- Simulated high CPU usage to validate alerting pipeline  

---

## Observability Design

- Metrics collected via CloudWatch Agent for system-level visibility  
- Dashboards provide real-time monitoring of CPU, memory, and disk usage  
- Alarms configured for proactive detection of anomalies  
- Logs used to support root cause analysis and debugging  
- Combines metrics and logs for a complete observability strategy  

---

## Incident Response Workflow

- CloudWatch detects threshold breach (e.g., high CPU)  
- Alarm transitions to ALARM state  
- SNS sends notification to engineer  
- Engineer investigates using metrics, logs, and system tools  

---

## Log Analysis (Python)

Developed a Python-based log analysis tool to support observability:

- Reads `/var/log/syslog`  
- Identifies and counts error occurrences  
- Outputs a summarized report for quick analysis  

---

## Security Considerations

- CloudWatch Agent configured using IAM roles (no hardcoded credentials)  
- SNS topics restricted to authorized subscribers  

---

## Key Outcomes

- Built a real-time monitoring and alerting pipeline  
- Enabled proactive detection of system anomalies  
- Reduced mean time to detection (MTTD) using automated alerts  
- Improved system visibility through dashboards and log analysis  

---

## Screenshots

### Metrics
![metrics](screenshots/metrics.png)

### Alarm Triggered
![alarm](screenshots/alarm-triggered.png)

### Email Alert
![email](screenshots/email-alert.png)

### Dashboard
![dashboard](screenshots/dashboard.png)

### Log Analysis Output
![python](screenshots/python-output.png)

---

## Skills Demonstrated

- Monitoring and observability design on AWS  
- CloudWatch metrics, alarms, and dashboards  
- SNS-based alerting systems  
- Log analysis and debugging using Python  
- Proactive incident detection and response  

---

## Future Improvements

- Add memory and disk-based alarms  
- Integrate logs into CloudWatch Logs  
- Automate infrastructure using Terraform  
- Implement anomaly detection for advanced alerting  

---