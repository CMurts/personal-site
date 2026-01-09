#!/bin/bash
# Simple script to start a local server and open the site
# Usage: ./start-server.sh

cd "$(dirname "$0")"

# Check if Python 3 is available
if command -v python3 &> /dev/null; then
    echo "Starting server with Python..."
    python3 server.py
# Check if Python is available
elif command -v python &> /dev/null; then
    echo "Starting server with Python..."
    python server.py
# Fallback to opening file directly
else
    echo "Python not found. Opening file directly..."
    open index.html
fi
