from unittest.mock import patch
from src.chaos import apply_network_delay

@patch("subprocess.run")
def test_apply_network_delay(mock_run):
    apply_network_delay(100, "enp3s0")
    # Verifica se o comando sudo tc foi chamado corretamente
    mock_run.assert_called_once()
    assert "tc" in str(mock_run.call_args)

