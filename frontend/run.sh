#!/bin/bash

# Uncomment this to make the frontend wait until the backend has started.
# Also silence the output as this will flood the stdout with curl errors while the
# backend starts up
# until curl --silent --output /dev/null http://backend:8080; do
#     sleep 10;
# done

npm install && npm start