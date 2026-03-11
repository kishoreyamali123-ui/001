#🇳‌🇮‌🇰‌🇭‌🇮‌🇱‌
# Add your details here and then deploy by clicking on HEROKU Deploy button
import os
from os import environ

API_ID = int(environ.get("API_ID", "34002235"))
API_HASH = environ.get("API_HASH", "a20787c224809296fa50dcc3e9824b3f")
BOT_TOKEN = environ.get("BOT_TOKEN", "8761360533:AAFjCgainHoHL_mW_4xnjGPmfXBC4tU0y9k")
OWNER = int(environ.get("OWNER", "8429501123"))
CREDIT = environ.get("CREDIT", "𓍯𝙎𝙪𝙟𝙖𝙡⚝")
AUTH_USER = os.environ.get('AUTH_USERS', '5680454765').split(',')
AUTH_USERS = [int(user_id) for user_id in AUTH_USER]
if int(OWNER) not in AUTH_USERS:
    AUTH_USERS.append(int(OWNER))
  
#WEBHOOK = True  # Don't change this
#PORT = int(os.environ.get("PORT", 8080))  # Default to 8000 if not set



