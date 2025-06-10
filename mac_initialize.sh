#!/bin/bash

# x-codeのインストール
xcode-select --install

# Homebrew のインストール
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo >> ${HOME}/.zprofile
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ${HOME}/.zprofile
eval "$(/opt/homebrew/bin/brew shellenv)"

brew tap moonrepo/proto https://github.com/moonrepo/proto

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
    proto

# proto
proto setup

# Dockerの入力補完
mkdir -p ~/.docker/completions
docker completion zsh > ~/.docker/completions/_docker
cat <<"EOF" >> ~/.zshrc
FPATH="${HOME}/.docker/completions:${FPATH}"
# autoload -Uz compinit
# compinit
EOF
