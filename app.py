from prometheus_client import Gauge, start_http_server
import time

# DEFINING THE METRIC
LATENCY_GAUGE = Gauge('network_latency_ms', 'Current network latency in ms')

def start_metrics_server(port=8000):
    # BIND TO 0.0.0.0 TO ALLOW EXTERNAL DOCKER CONNECTIONS
    start_http_server(port, addr='0.0.0.0') 
    print(f"Metrics server started on 0.0.0.0:{port}.")
if __name__ == '__main__':
    # STARTING THE SERVER
    start_metrics_server(8000)
    
    print("Metrics server is running. Press Ctrl+C to stop.")
    while True:
        # SIMULATING METRIC UPDATE
        LATENCY_GAUGE.set(45) 
        time.sleep(10)

