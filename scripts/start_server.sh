#!/bin/bash
set -e

APP_DIR="/home/ubuntu/SimpleDeployApp"
LOG_FILE="/home/ubuntu/server.log"

echo "Starting simple HTTP server..."
# Kill any existing server
sudo pkill -f "python3 -m http.server" || true

# Start a new one in background
cd "$APP_DIR"
sudo nohup python3 -m http.server 80 > "$LOG_FILE" 2>&1 &
echo "Server started successfully!"
