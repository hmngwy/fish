### Pulling Dotfiles
```
curl -Lks https://raw.githubusercontent.com/hmngwy/fish/master/.config/setup.sh | /usr/bin/bash
```

### Installing Binaries
Setup scripts are found in `.config/setup`

### Usage
The files are simply managed like a bar git repo. `dot` is aliased to `git --git-dir=$HOME/.cfg/ --work-tree=$HOME`.


```
dot add .config/...
dot commit -m ...
dot push
```
