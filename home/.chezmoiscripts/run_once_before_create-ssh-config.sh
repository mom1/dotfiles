#!/bin/bash
# Create initial SSH config if it doesn't exist
# lazyssh will manage this file afterwards

if [ ! -f "$HOME/.ssh/config" ]; then
    mkdir -p "$HOME/.ssh"
    chmod 700 "$HOME/.ssh"
    
    cat > "$HOME/.ssh/config" << 'EOF'
# Added by OrbStack: 'orb' SSH host for Linux machines
# This only works if it's at the top of ssh_config (before any Host blocks).
Include ~/.orbstack/ssh/config

Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_rsa

Host github.com
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_rsa_git_hub
EOF
    chmod 600 "$HOME/.ssh/config"
    echo "Created initial ~/.ssh/config"
else
    echo "~/.ssh/config already exists, skipping"
fi
