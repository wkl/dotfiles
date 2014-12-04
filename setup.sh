#!/usr/bin/env bash
set -x
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# tmux
ln -s $DIR/tmux.conf ~/.tmux.conf

# alias
# for bash currently
cat <<EOF >> ~/.bashrc
if [ -f $DIR/myshell ]; then
	. $DIR/myshell
fi
EOF
