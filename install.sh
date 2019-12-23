#!/bin/bash

CHECK_MARK="\033[0;32m\xE2\x9C\x94\033[0m"


# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew install
brew install tmux httpie


export OPERATION="Installing tmux"
echo -n $OPERATION
cp tmux/.tmux{.conf,.layout,.style} ~/
echo -e "\\r$OPERATION ${CHECK_MARK}"
