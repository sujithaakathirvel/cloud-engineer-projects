# Production Incident Simulation & Troubleshooting on EC2

## Overview

Simulated and resolved real-world Linux system incidents on Amazon EC2 using a **structured, production-style troubleshooting approach**.

This project focuses on developing a repeatable, methodical approach to incident handling, similar to real-world DevOps and cloud engineering environments.  
Focused on **root cause analysis over temporary fixes**, aligning with production incident response practices.

---

## Environment

- OS: Linux (Ubuntu / WSL)  
- Platform: Amazon EC2  

---

## Incident Scenarios

- Nginx service stopped unexpectedly  
- Nginx process manually terminated  
- High CPU usage simulation  
- Disk usage spike  

---

## Tools Used

- `systemctl` — service management  
- `journalctl` — log analysis  
- `htop` — CPU and memory monitoring  
- `ss -tulnp` — port inspection  
- `curl` — service validation  
- `df -h` — disk usage  
- `du -sh` — directory size analysis  

---

## Troubleshooting Workflow

1. Validate service availability using `curl`  
2. Check service status using `systemctl`  
3. Analyze logs using `journalctl`  
4. Monitor system resources using `htop`  
5. Inspect network ports using `ss`  
6. Investigate disk usage using `df` and `du`  

---

## Root Cause Approach

- Identified whether failures were caused by **service crashes, resource exhaustion, or configuration issues**  
- Used logs and system metrics to trace issues back to their source  
- Applied targeted fixes instead of restarting blindly  

---

## Incident Deep Dive: Nginx Service Failure

**Issue:**  
Application became unavailable (connection refused / no response)

**Investigation Steps:**
- Checked service availability:  
  `curl http://localhost` → failed  
- Checked service status:  
  `systemctl status nginx` → service inactive  
- Reviewed logs:  
  `journalctl -u nginx` → identified crash/termination  

**Root Cause:**  
Nginx process was manually terminated  

**Resolution:**  
- Restarted service:  
  `systemctl restart nginx`  
- Verified recovery using `curl`  

**Prevention:**  
- Implement monitoring alerts (CloudWatch)  
- Configure automatic service restarts  
- Use load balancer health checks  

---

## Production Considerations

- Incidents should be detected via monitoring systems (e.g., CloudWatch alerts)  
- Logs should be centralized for faster debugging  
- Services should automatically restart on failure  
- Health checks should be implemented at load balancer level  
- Systems should be designed to minimize downtime and recover quickly  

---

## AWS Context

- Simulation performed on Amazon EC2 instances  
- Similar failures can be monitored using CloudWatch metrics and alarms  
- Application Load Balancer (ALB) health checks can detect service failures automatically  
- Integrates with cloud-native monitoring and alerting systems  

---

## Key Engineering Insight

- Restarting a service resolves symptoms, but **log analysis and root cause identification prevent recurrence**  
- Effective troubleshooting requires **systematic validation, not assumptions**  

---

## Key Outcomes

- Designed and applied a **systematic incident response workflow**  
- Improved ability to diagnose issues using logs and system metrics  
- Reduced reliance on trial-and-error debugging  
- Gained confidence in handling real-world Linux failures  

---

## Skills Demonstrated

- Linux system troubleshooting in production-like scenarios  
- Root cause analysis using logs and system metrics  
- Incident response workflow design  
- Performance monitoring and debugging under resource constraints  
- Understanding of failure scenarios in distributed systems  


---

## Future Improvements

- Automate health checks and alerts using CloudWatch  
- Simulate multi-instance and distributed failures  
- Integrate with centralized logging systems (e.g., ELK stack)  
