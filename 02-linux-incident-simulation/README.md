# Linux Incident Simulation (EC2)

## Overview

Simulated real-world Linux system failures and applied a structured troubleshooting workflow to identify and resolve issues.

Focus was on building a repeatable debugging approach similar to production environments.

---

## Environment

- OS: Linux (WSL / Ubuntu)  
- Platform: Amazon EC2  

---

## Failure Scenarios

- nginx service stopped  
- nginx process manually terminated  
- high CPU usage simulation  
- disk usage spike  

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

1. Validate service availability (`curl`)  
2. Check service status (`systemctl`)  
3. Analyze logs (`journalctl`)  
4. Monitor system resources (`htop`)  
5. Inspect network ports (`ss`)  
6. Check disk usage (`df`, `du`)  

---

## Key Learnings

- Difference between services and processes  
- Importance of log-based debugging  
- Identifying performance bottlenecks (CPU, disk)  
- Structured approach to incident resolution  

---

## Outcome

Developed a repeatable troubleshooting workflow for diagnosing and resolving system-level issues in a Linux environment.

---

## What This Project Demonstrates

- Linux system troubleshooting  
- Debugging and root cause analysis  
- Incident handling workflow  
- Production-style problem-solving approach  