# Incident Simulation & Troubleshooting on EC2

## 🔍 Overview

Simulated and resolved common Linux system incidents on Amazon EC2 using a **structured troubleshooting and root cause analysis workflow**.

The project focuses on identifying the underlying cause of failures rather than relying on trial-and-error fixes.

---

## 🖥️ Environment

- **Platform:** Amazon EC2
- **OS:** Linux (Ubuntu)
- **Access:** AWS Systems Manager (SSM)

---

## 🚨 Incident Scenarios

- Nginx service stopped unexpectedly
- Nginx process manually terminated
- High CPU usage simulation
- Disk usage spike

---

## 🛠️ Tools Used

- `systemctl` — service management
- `journalctl` — log analysis
- `htop` — CPU and memory monitoring
- `ss -tulnp` — network port inspection
- `curl` — service availability testing
- `df -h` — filesystem usage
- `du -sh` — directory size analysis

---

## 🔧 Troubleshooting Workflow

1. Validate service availability using `curl`
2. Check service status using `systemctl`
3. Analyse service logs using `journalctl`
4. Monitor CPU and memory usage using `htop`
5. Inspect network ports using `ss`
6. Investigate disk usage using `df` and `du`
7. Apply the appropriate fix and validate recovery

---

## 🧠 Root Cause Analysis

The troubleshooting process focused on determining whether an incident was caused by:

- Service or process failure
- Resource exhaustion
- Configuration issues
- Disk or filesystem constraints

Logs, system metrics, and service status were used to identify the cause before applying a targeted fix.

---

## 🔎 Incident Deep Dive: Nginx Service Failure

**Issue:**  
The Nginx application became unavailable and `curl` returned no response.

**Investigation:**

- `curl http://localhost` → request failed
- `systemctl status nginx` → service inactive
- `journalctl -u nginx` → confirmed process termination

**Root Cause:**  
The Nginx process had been manually terminated as part of the failure simulation.

**Resolution:**

- Restarted Nginx using `systemctl restart nginx`
- Verified service recovery using `curl`

**Production Considerations:**

- Monitor service health using CloudWatch
- Configure automatic service recovery where appropriate
- Use load balancer health checks for production workloads

---

## ☁️ AWS Context

The incidents were simulated on Amazon EC2 to practise troubleshooting in a cloud-hosted Linux environment.

In a production environment, similar failures could be detected and investigated using:

- CloudWatch metrics and alarms
- Centralised application and system logs
- Load balancer health checks
- Automated service recovery mechanisms

---

## 💡 Key Engineering Insight

A service restart may restore availability, but **understanding why the failure occurred is essential for preventing repeated incidents**.

The project reinforced a systematic approach:

**Detect → Investigate → Identify Root Cause → Resolve → Validate**

---

## 🎯 Key Outcomes

- Applied a structured Linux incident response workflow
- Diagnosed service and resource-related failures
- Used logs and system tools for root cause analysis
- Practised validating system recovery after remediation
- Strengthened practical Linux and AWS troubleshooting skills

---

## 🧠 Skills Demonstrated

- Linux system administration
- EC2 troubleshooting
- Incident response
- Root cause analysis
- Service and process management
- Linux resource monitoring
- Log analysis
- AWS operational practices

---

## 🚀 Future Improvements

- Automate health checks and alerts using CloudWatch
- Configure automatic service recovery
- Simulate multi-instance failure scenarios
- Integrate centralised logging
