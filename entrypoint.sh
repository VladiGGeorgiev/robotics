#!/bin/bash

set -e

# Setup ros autocomplete inside containers
source /opt/ros/humble/setup.bash

echo "Provided arguments: $@"

exec $@