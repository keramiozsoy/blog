#!/bin/bash

# 1. Create venv if it doesn't exist
if [ ! -d "venv" ]; then
    echo "Creating virtual environment..."
    python3 -m venv venv
fi

# 2. Activate venv and install requirements
source venv/bin/activate
echo "Installing/Updating requirements..."
pip install -q -r requirements.txt

# 3. Start local server with live reload
echo "------------------------------------------------"
echo "Starting MkDocs Local Server..."
echo "Your site will be available at: http://127.0.0.1:8000"
echo "Press Ctrl+C to stop the server."
echo "------------------------------------------------"
mkdocs serve
