#!/usr/bin/fish
mkdir -p ~/.config/fish/completions; and ln -s ~/.asdf/completions/asdf.fish ~/.config/fish/completions

asdf plugin add python 
asdf install python latest
asdf global python latest
python -m pip install virtualfish
asdf reshim python
vf install 

asdf plugin add nodejs
asdf install nodejs latest
asdf global nodejs latest
asdf reshim nodejs
