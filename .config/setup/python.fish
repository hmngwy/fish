#!/usr/bin/fish
asdf plugin add python
asdf install python latest
asdf global python latest

python -m pip install virtualfish
asdf reshim python

vf install 
