# MaxST's dotfiles
Dotfiles for the developer's happiness:
- zsh
- python, pyenv, poetry
- silversearcher-ag

## Profiles:

- `mac_os` - For MacOS (WIP)
- `linux` - For linux (WIP)

install:

```bash
git clone -b dotdrop --recurse-submodules https://github.com/mom1/dotfiles.git && cd dotfiles
pip3 install --user -r dotdrop/requirements.txt
```

```bash
# For system settings and install linux packages
sudo pip3 install -r dotdrop/requirements.txt
sudo ./dotdrop.sh install -p <profile_name> --cfg=config-root.yaml
```

```bash
# For user settings
./dotdrop.sh install -f -p <profile_name> --cfg=config-user.yaml
# For user settings with gui
INSTALL_GUI=1 ./dotdrop.sh install -f -p <profile_name> --cfg=config-user.yaml
```


### If error build python in mac os

`sudo rm -rf /Library/Developer/CommandLineTools`

`xcode-select --install`
