#!/bin/bash

CHECK_MARK="\033[0;32m\xE2\x9C\x94\033[0m"

brew install
brew install tmux httpie git

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
echo "oh my zsh installed"

