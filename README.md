# notify_discord  
Simple shell script to send notifications to Discord.

## Dependencies

This script requires the following:

- [`bash`](https://www.gnu.org/software/bash/)
- [`curl`](https://curl.se/)
- [`jq`](https://jqlang.org/)

Make sure these are installed and accessible in your system's PATH.

## Configuration
Replace the URL in ```notify_discord.sh``` with your Discord webhook URL.
```sh
WEBHOOK_URL="https://discord.com/api/webhooks/your_webhook_id/your_webhook_token"
```

## Usage
```sh
some_command && ./notify_discord.sh "Your message here"
