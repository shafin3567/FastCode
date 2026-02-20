#!/bin/bash

# Create data directory in /tmp (writable in free tier)
mkdir -p /tmp/fastcode-data

# Set environment variables for lightweight mode
export DATA_DIR=/tmp/fastcode-data
export EMBEDDING_MODEL=all-MiniLM-L6-v2  # Smaller, faster model
export USE_CACHE=false  # Disable caching to save memory

# Start the web app with memory optimization
python web_app.py --host 0.0.0.0 --port $PORT --data-dir /tmp/fastcode-data
