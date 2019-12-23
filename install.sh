#!/bin/bash

CHECK_MARK="\033[0;32m\xE2\x9C\x94\033[0m"

# Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install
brew install tmux httpie

# Tmux
export OPERATION="Installing tmux"
echo -n $OPERATION
cp tmux/.tmux{.conf,.layout,.style} ~/
echo -e "\\r$OPERATION ${CHECK_MARK}"

# Install oh-my-zsh
export OPERATION="Installing oh-my-zsh"
echo -n $OPERATION
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cp zshrc/.zshrc ~/
echo -e "\\r$OPERATION ${CHECK_MARK}"
