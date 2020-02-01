#!/bin/bash

# We need to wait until the backend is ready before starting the frontend.
# Also silence the output as this will flood the stdout with curl errors while the
# backend starts up
until curl --silent --output /dev/null http://backend:8082; do
    sleep 10;
done

npm install && npm start