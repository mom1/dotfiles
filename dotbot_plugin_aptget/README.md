[dotbot_repo]: https://github.com/anishathalye/dotbot


# Dotbot ```apt-get``` Plugin

Plugin for [Dotbot][dotbot_repo], that adds ```aptget``` directive, which allows you to install and upgrade packages using ```apt-get``` from known sources or from configurable PPA.

## Installation

1. Simply add this repo as a submodule of your dotfiles repository:
```
git submodule add https://github.com/dein0s/dotbot_plugin_aptget.git
```

2. Pass this folder (or directly aptget.py file) path with corresponding flag to your [Dotbot][dotbot_repo] script:
  - ```-p /path/to/file/aptget.py```

  or

 - ```--plugin-dir /pato/to/plugin/folder```


 **WARNING!**

 [Dotbot][dotbot_repo] (or install script) needs to be executed with root permissions (as sudo) in order to install/upgrade packages. It is strongly recommended to place ```aptget``` tasks in a separate config!

## Supported task variants
```yaml
- aptget: package_name
```
```yaml
- aptget: [package_name_one, package_name_two, package_name_three]
```
```yaml
- aptget:
    package_name:
        ppa_source: ppa:package/source
        upgrade: true
    package_name_two: ppa:package/source
    package_name_onemore:
        ppa_source: ppa:package/source
```

## Usage

### Example config
```yaml
- aptget:
    tilix:
        ppa_source: ppa:webupd8team/terminix
        upgrade: true
    atom: ppa:webupd8team/atom
    htop:
```

### Execution
```bash
"~/.dotfiles/bin/dotbot" -d "~/.dotfiles" -c "~/.dotfiles/packages.yaml" -p "~/.dotfiles/plugins/aptget.py"
```

### Output
![cli_out](http://i.imgur.com/7ytqeol.png)
