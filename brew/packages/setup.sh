#!/bin/bash



# brew packages
cmd=(
    brew install
    gcc
    bat
    ctop
    derailed/k9s/k9s
    kubectl
    kind
    pre-commit
    spaceship
    spotify-tui
    fzf
    dive
    goodwithtech/r/dockle
    jesseduffield/lazydocker/lazydocker
    lazygit
)   

# execute it
"${cmd[@]}"

set rtp+=/home/linuxbrew/.linuxbrew/opt/fzf >> .vimrc
