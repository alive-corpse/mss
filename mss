#!/bin/bash
cd `dirname "$0"`

# Name of the container (as specified in docker-compose.yaml)
CONTAINER_NAME="mss"

# Check if the container is running
if ! docker ps --format '{{.Names}}' | grep -q "^${CONTAINER_NAME}$"; then
    echo "Container ${CONTAINER_NAME} is not running. Starting it now..."
    docker-compose up -d
fi

# Run the command inside the container
# Pass all arguments ($@) to /usr/local/bin/mss
docker exec -it "${CONTAINER_NAME}" /usr/local/bin/mss "$@"
