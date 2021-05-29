### Pulling Dotfiles
```
sudo apt-get update; sudo apt-get install -y make build-essential libssl-dev zlib1g-dev \
  libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm \
  libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev \
  curl git software-properties-common

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
