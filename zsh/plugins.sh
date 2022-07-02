ZSH_CUSTOM=~/.oh-my-zsh/custom
AUTO_SUG_DIR=~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
SYNTAX_DIR=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
SPACESHIP_DIR="$ZSH_CUSTOM/themes/spaceship-prompt"
FZF_DIR="~/.fzf"
VIRTUAL_DIR="$ZSH_CUSTOM/plugins/autoswitch_virtualenv"
ZGEN_DIR="${HOME}/.zgen"

echo "Installing plugins"
git -C $AUTO_SUG_DIR https://github.com/zsh-users/zsh-autosuggestions pull || git clone $AUTO_SUG_DIR  && \
git -C $SYNTAX_DIR https://github.com/zsh-users/zsh-syntax-highlighting.git  pull || git clone $SYNTAX_DIR && \
git -C $SPACESHIP_DIR https://github.com/spaceship-prompt/spaceship-prompt.git pull || git clone  $SPACESHIP_DIR --depth=1 && \
ln -sf "${SPACESHIP_DIR}/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme" && \
git -C $FZF_DIR --depth 1 https://github.com/junegunn/fzf.git pull || git clone $FZF_DIR && \
${FZF_DIR}/install && \
git -C $VIRTUAL_DIR https://github.com/MichaelAquilina/zsh-autoswitch-virtualenv.git pull || git clone $VIRTUAL_DIR && \
git -C &ZGEN_DIR https://github.com/tarjoilija/zgen.git pull || git clone $ZGEN_DIR
