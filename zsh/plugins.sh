#!/bin/bash

ZSH_CUSTOM=~/.oh-my-zsh/custom
AUTO_SUG_DIR=~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
SYNTAX_DIR=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
SPACESHIP_DIR="$ZSH_CUSTOM/themes/spaceship-prompt"
FZF_DIR="${HOME}/.fzf"
VIRTUAL_DIR="$ZSH_CUSTOM/plugins/autoswitch_virtualenv"
ZGEN_DIR="${HOME}/.zgen"
NVM_DIR="~/.oh-my-zsh/custom/plugins/zsh-nvm"

echo "Installing plugins"
git -C $AUTO_SUG_DIR pull || git clone https://github.com/zsh-users/zsh-autosuggestions $AUTO_SUG_DIR  && \
git -C $NVM_DIR pull || git clone https://github.com/lukechilds/zsh-nvm $NVM_DIR  && \
git -C $SYNTAX_DIR pull || git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $SYNTAX_DIR && \
git -C $SPACESHIP_DIR pull || git clone https://github.com/spaceship-prompt/spaceship-prompt.git $SPACESHIP_DIR --depth=1 && \
ln -sf "${SPACESHIP_DIR}/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme" && \
git -C $FZF_DIR pull || git clone https://github.com/junegunn/fzf.git $FZF_DIR --depth=1 && \
${FZF_DIR}/install && \
git -C $VIRTUAL_DIR pull || git clone https://github.com/MichaelAquilina/zsh-autoswitch-virtualenv.git $VIRTUAL_DIR && \
git -C $ZGEN_DIR pull || git clone https://github.com/tarjoilija/zgen.git $ZGEN_DIR && \

echo "Copying zsh setup"
cp .zshrc ~/
