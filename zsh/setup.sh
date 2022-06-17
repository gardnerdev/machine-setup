#!/bin/bash

sudo apt-get install zsh -y
echo "Installing oh-my-zsh"
curl -Lo install.sh https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh
echo "Installing plugins"
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
ln -sf "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
echo "Making zsh the default shell"
'if [ "$SHELL" != "/usr/bin/zsh" ] then export SHELL="/usr/bin/zsh" exec /usr/bin/zsh fi' >> ~/.bashrc
source ~/.bashrc
echo "Copying zsh setup"
cp ./.zshrc ~/
source ~/.zshrc