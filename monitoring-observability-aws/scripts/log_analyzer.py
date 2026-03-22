with open("/var/log/syslog", "r") as f:
    logs = f.readlines()

errors = [line for line in logs if "error" in line.lower()]

print("Total errors:", len(errors))
