#!/bin/bash

# Export all environment variables explicitly
export PYTHON_VERSION=3.12.0
export DATA_DIR=/tmp/fastcode-data
export EMBEDDING_MODEL=all-MiniLM-L6-v2
export USE_CACHE=false

# OpenRouter configuration
export OPENAI_API_KEY=$OPENAI_API_KEY
export BASE_URL=https://openrouter.ai/api/v1
export MODEL=google/gemini-2.5-flash-preview

# Create data directory in /tmp (writable in free tier)
mkdir -p /tmp/fastcode-data

# Start the web app
python web_app.py --host 0.0.0.0 --port $PORT --data-dir /tmp/fastcode-data
