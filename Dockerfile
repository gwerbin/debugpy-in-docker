FROM $REDACTED

# Install basics
RUN /opt/venv/bin/python -m pip install -U pip
RUN /opt/venv/bin/pip install -U setuptools wheel

# Install runtime deps
COPY requirements.txt /app/requirements.txt
RUN /opt/venv/bin/pip install -r /app/requirements.txt

# Install dev deps
COPY requirements-dev.txt /app/requirements-dev.txt
RUN /opt/venv/bin/pip install -r /app/requirements-dev.txt

# Copy entrypoint script
COPY entrypoint.sh /app/entrypoint.sh

# Debugpy
EXPOSE 9001/tcp
# Service
EXPOSE 8001/tcp

CMD ["/app/entrypoint.sh"]
