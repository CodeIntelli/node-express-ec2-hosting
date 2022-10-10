#!/bin/bash

# Download Node And NPM
sudo apt install -y curl 
curl -o- https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
. ~/.profile

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

. ~/.nvm/nvm.sh
nvm install node


# Create Our Working Directory if its dosen't Exist
DIR="/home/ec2-user/express-app"
if[-d "$DIR"]; then
    echo "${DIR} exists"
else
    echo "Creating ${DIR} directory"
    mkdir ${DIR} 
fi