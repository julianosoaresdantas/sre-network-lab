import subprocess

def apply_network_delay(delay_ms=200, interface="enp3s0"):
    """Applies a netem delay to a specific network interface."""
    try:
        # Adds a delay to the specified interface
        # Note: We use sudo because it requires system-level network privileges
        cmd = f"sudo tc qdisc add dev {interface} root netem delay {delay_ms}ms"
        subprocess.run(cmd.split(), check=True)
        print(f"Chaos injected: {delay_ms}ms delay on {interface}.")
    except subprocess.CalledProcessError:
        print(f"Chaos failed: A qdisc might already exist on {interface}.")

def reset_network(interface="enp3s0"):
    """Removes all traffic control rules from the interface."""
    try:
        subprocess.run(["sudo", "tc", "qdisc", "del", "dev", interface, "root"], check=True)
        print(f"Network stabilized on {interface}.")
    except subprocess.CalledProcessError:
        print(f"No qdisc found to remove on {interface}.")

def apply_complex_chaos(interface, delay="100ms", loss="10%", rate="1mbit"):
    """Injects high-fidelity network chaos."""
    cmd = f"sudo tc qdisc add dev {interface} root netem delay {delay} loss {loss} rate {rate}"
    subprocess.run(cmd.split(), check=True)
    print(f"Chaos injected: Delay={delay}, Loss={loss}, Rate={rate}")
