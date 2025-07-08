#!/bin/bash

# Usage: some_command && ./notify_discord.sh "Your message here"

# Set your Discord webhook URL here
WEBHOOK_URL="https://discord.com/api/webhooks/your_webhook_id/your_webhook_token"

# Use passed argument as the message
MESSAGE="${1:-Process has completed successfully.}"

# Format JSON payload
PAYLOAD=$(jq -n --arg content "$MESSAGE" '{content: $content}')

# Send POST request to Discord
curl -s -H "Content-Type: application/json" \
     -X POST \
     -d "$PAYLOAD" \
     "$WEBHOOK_URL"
