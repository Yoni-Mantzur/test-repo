FROM vuln/testdocker
RUN apt-get update && \
    apt-get install -y wget curl && \
    rm -rf /var/lib/apt/lists/*
CMD ["bash", "-c", "echo '🚨 Vulnerable + outdated packages installed' && sleep infinity"]
