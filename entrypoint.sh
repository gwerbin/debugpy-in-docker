#!/bin/sh

cd /app/runtime
/opt/venv/bin/python -m debugpy --listen 0.0.0.0:9001 -m uvicorn --reload --host 0.0.0.0 --port 8001 service:app
