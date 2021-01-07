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
```

```bash
# For system settings
sudo ./dotdrop.sh install -p <profile_name> --cfg=config-root.yaml
```

```bash
# For user settings
./dotdrop.sh install -p <profile_name> --cfg=config-user.yaml
```
