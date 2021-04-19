#!/usr/bin/bash
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
mkdir -p $HOME/.local/share/nvm
nvm install lts
nvm use lts
npm install -g fixjson standard
