### Arch Packages
```
pacman -S - < .outpost/packages.list
```


### Bootstrapping
This will clone the repo, pull submodules, and setup aliases.
```
curl -Lks https://raw.githubusercontent.com/hmngwy/fish/master/.outpost/bootstrap.sh | /usr/bin/bash
```

### Installing Binaries
Setup scripts are found in `.config/setup`, they are not platform agnostic, yet.

TODO: use AUR

### Usage
The files are simply managed like a bare git repo. `dot` is aliased to `git --git-dir=$HOME/.cfg/ --work-tree=$HOME`.

```
dot add .config/...
dot commit -m ...
dot push
```

### GUI 
dwm
dmenu
slock
wezterm
