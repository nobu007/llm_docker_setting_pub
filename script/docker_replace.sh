#!/bin/bash

# get current directory
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
echo "CURRENT_DIR=$CURRENT_DIR"
TOOL_TOP_DIR=$(cd ${CURRENT_DIR}/../.. && pwd)
echo "TOOL_TOP_DIR=$TOOL_TOP_DIR"

cd $TOOL_TOP_DIR
# copy all files to docker
docker cp . app-xrdp:/app
# docker cp ui app-xrdp:/app
# docker cp .env app-xrdp:/app/.env
# docker cp healthcheck.sh app-xrdp:/app/healthcheck.sh
