#!/bin/bash

if ["$DEV_CONTAINER" = "true"]; then
    echo "Connecting to dev container"
    tail -f /dev/null
else
    echo "Other branch"
fi