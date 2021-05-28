#!/usr/bin/fish
asdf plugin add python
asdf install python latest
asdf global python latest
asdf reshim python

python -m pip install virtualfish
vf install 
