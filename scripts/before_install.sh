#!/bin/bash

# Download Node And NPM
sudo apt install -y curl 
curl -o- https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
. ~/.nvm/nvm.sh
nvm install node
# . ~/.profile


# Create Our Working Directory if its dosen't Exist
DIR="/home/ubuntu//express-app"
if [ -d "$DIR"]; then
    echo "${DIR} exists"
else
    echo "Creating ${DIR} directory"
    mkdir ${DIR} 
fi