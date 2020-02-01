#!/bin/bash

# Setup Frontend
################

cd frontend

if [ ! -d "website-frontend" ]
then
    git clone https://github.com/codesupport/website-frontend.git
else
    cd website-frontend
    git pull
    cd ..
fi

cd ..

# Setup Backend
################

cd backend

if [ ! -d "website-backend" ]
then
    git clone https://github.com/codesupport/website-backend.git
else
    cd website-backend
    git pull
    cd ..
fi

cd ..

# Start docker containers
#########################

docker-compose up