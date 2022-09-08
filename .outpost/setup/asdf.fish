#!/usr/bin/fish
cd $HOME/.asdf/; git checkout "(git describe --abbrev=0 --tags)"
mkdir -p $HOME/.config/fish/completions; and ln -s $HOME/.asdf/completions/asdf.fish $HOME/.config/fish/completions

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
