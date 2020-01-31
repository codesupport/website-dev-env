#!/bin/bash

# Setup Frontend
################

cd frontend

if [ ! -d "website-frontend" ]
then
    git clone https://github.com/codesupport/website-frontend.git
else
    git pull
fi

cd ..

# Setup Backend
################

cd backend

if [ ! -d "website-backend" ]
then
    git clone https://github.com/codesupport/website-backend.git
else
    git pull
fi

# Start docker containers
#########################

docker-compose up