#!/bin/bash

sudo chmod -R 777 /home/ubuntu/express-app

# Navigate into our working directory where we have all github files
cd /home/ubuntu/express-app

# add npm and node to path
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"


# Install Node Modules
npm install

# Start our node application in the background
node index.js > app.out.log > app.err.log < /dev/null & 