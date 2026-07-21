import os
import re

def get_latency(host="8.8.8.8"):
    try:
        response = os.popen(f"ping -c 1 {host}").read()
        match = re.search(r"time=([\d\.]+)", response)
        return float(match.group(1)) if match else 999.0
    except Exception:
        return 999.0
