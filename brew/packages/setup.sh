#!/bin/bash



# brew packages
cmd=(
    brew install
    bat
    ctop
    derailed/k9s/k9s
    kubectl
    kind
    pre-commit
    spaceship
    spotify-tui
    fzf
)





# execute it
"${cmd[@]}"
source ~/.zshrc

set rtp+=/home/linuxbrew/.linuxbrew/opt/fzf >> .vimrc