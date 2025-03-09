#!/bin/bash

# x-codeのインストール
xcode-select --install

# Homebrew のインストール
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install --cask \
    rancher \
    alacritty \
    font-hackgen-nerd

brew install \
    zsh-completions \
    zsh-autosuggestions \
    tmux \
    neovim \
    starship \
    lazygit \
    # nodenv \
    volta \
    deno

# Dockerの入力補完
mkdir -p ~/.docker/completions
docker completions zsh > ~/.docker/completions/_docker
cat <<"EOF" >> ~/.zshrc
FPATH="${HOME}/.docker/completions:${FPATH}"
# autoload -Uz compinit
# compinit
EOF
