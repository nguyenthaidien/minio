FROM minio/minio:latest

# Optional: Set permissions or copy custom binaries/scripts
# RUN chmod -R 777 /usr/bin
# COPY ./minio /usr/bin/minio
# COPY dockerscripts/docker-entrypoint.sh /usr/bin/docker-entrypoint.sh

# Define volume for persistent storage
VOLUME ["/data"]

# Default command to run MinIO server
CMD ["server", "/data", "--console-address", ":9001"]
