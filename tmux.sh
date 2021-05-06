#!/bin/bash

echo "source-file $PWD/tmux/.tmux.conf" > ~/.tmux.conf
echo "Config copied"


# powerline - https://gist.github.com/DukeNgn/9312a65e1535b3b1bffd9fed2c892079#configure-fonts
export powerline_dir=$(mktemp -d -t powerline)
git clone https://github.com/powerline/fonts.git $powerline_dir
./$powerline_dir/install.sh

echo "Powerline installed copied"
echo "test with: printf '%b\n' '\ue0b0\ue0b1\ue0b2\ue0b3'"