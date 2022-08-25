### Debian Dependencies
```
sudo apt-get update; sudo apt-get install -y make build-essential software-properties-common \
  libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev llvm \
  libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev \
  git bash ssh sudo wget curl
```


### Bootstrapping
This will clone the repo, pull submodules, and setup aliases.
```
curl -Lks https://raw.githubusercontent.com/hmngwy/fish/master/.outpost/bootstrap.sh | /usr/bin/bash
```

### Installing Binaries
Setup scripts are found in `.config/setup`, they are not platform agnostic, yet.

### Usage
The files are simply managed like a bare git repo. `dot` is aliased to `git --git-dir=$HOME/.cfg/ --work-tree=$HOME`.

```
dot add .config/...
dot commit -m ...
dot push
```

### Desktop Setup Hints
dwm
wezterm
fish
brave-browser
