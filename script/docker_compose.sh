#!/bin/bash

# get current directory
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
echo "CURRENT_DIR=$CURRENT_DIR"
TOOL_TOP_DIR=$(cd ${CURRENT_DIR}/../.. && pwd)
echo "TOOL_TOP_DIR=$TOOL_TOP_DIR"


# UID, GID
export MY_UID=$(id -u)
export MY_GID=$(id -g)

cd $TOOL_TOP_DIR

# Create a list of scripts
scripts=()

# Add install scripts
for i in {0..14}
do
    scripts+=("install_${i}.sh")
done

# Add other script
scripts+=("healthcheck.sh")
scripts+=("entrypoint.sh")
scripts+=("install.sh")

# Touch each script
for script in "${scripts[@]}"; do
    echo "touch $script"
    touch "$script"
    chmod +x "$script"
done


cd $CURRENT_DIR/../docker
docker-compose down && docker-compose up --build
