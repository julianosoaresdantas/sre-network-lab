from prometheus_client import start_http_server, Gauge
import time
import sys

print("DEBUG: Script started.") # <--- ADD THIS

try:
    LATENCY_GAUGE = Gauge('network_latency_ms', 'Current network latency in ms')
    print("DEBUG: Metric defined.") # <--- ADD THIS
    
    start_http_server(8000)
    print("DEBUG: Metrics server started on 8000.") # <--- ADD THIS
except Exception as e:
    print(f"DEBUG: Error occurred: {e}")
    sys.exit(1)
