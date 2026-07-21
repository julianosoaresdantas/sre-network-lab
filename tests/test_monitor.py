import pytest
from unittest.mock import patch
from src.monitor import get_latency

@patch("os.popen")
def test_get_latency_success(mock_popen):
    mock_popen.return_value.read.return_value = "time=15.2 ms"
    assert get_latency("8.8.8.8") == 15.2

@patch("os.popen")
def test_get_latency_failure(mock_popen):
    mock_popen.return_value.read.return_value = "Request timeout"
    assert get_latency("8.8.8.8") == 999.0
