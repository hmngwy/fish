### Pulling Dotfiles
```
sudo apt install curl git software-properties-common
curl -Lks https://git.io/JGZ3D | /usr/bin/bash
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
