import os
from dotenv import load_dotenv
from notifier import send_telegram_alert

load_dotenv()

# VALIDATE CONFIGURATION
token = os.getenv("8989535850:AAFvFtkOshrFQkY450kKIkLxBWqB0HpPjSg")
chat_id = os.getenv("7193967281")

if token and chat_id:
    print("Configuration found. Sending test alert...")
    send_telegram_alert("Lab integration test: Resilience System operational.")
else:
    print("Configuration missing. Check your .env file.")
