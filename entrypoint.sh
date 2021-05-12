#!/bin/sh

cd /app/runtime
/opt/venv/bin/python -m debugpy --listen 0.0.0.0:9001 -m hypercorn --reload --bind 0.0.0.0:8001 service:app
