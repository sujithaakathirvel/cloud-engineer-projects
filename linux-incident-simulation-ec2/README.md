## Goal
Simulate system failures and troubleshoot them using Linux commands.

## Environment
Linux (WSL / Ubuntu)

## Scenarios
- nginx stopped  
- nginx process killed  
- high CPU usage  
- disk usage increase  

## Tools Used
- systemctl  
- journalctl  
- htop  
- ss -tulnp  
- curl  
- df -h  
- du -sh  

## Troubleshooting Flow
1. Check app (curl)  
2. Check service (systemctl)  
3. Check logs (journalctl)  
4. Check CPU (htop)  
5. Check ports (ss)  
6. Check disk (df)  

## Key Learnings
- service vs process  
- debugging using logs  
- CPU and disk monitoring  
- real-world troubleshooting mindset  