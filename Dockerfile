FROM vuln/testdocker
RUN apt-get update && \
    apt-get install -y wget curl && \
    rm -rf /var/lib/apt/lists/*
RUN random_string=$(tr -dc 'A-Za-z0-9' </dev/urandom | head -c 16); echo $random_string > out.file
CMD ["bash", "-c", "echo '🚨 Vulnerable + outdated packages installed' && sleep infinity"]
