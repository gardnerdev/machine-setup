#!/bin/bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> /home/users/chojnar1/.profile
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"