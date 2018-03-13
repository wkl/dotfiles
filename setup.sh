#!/usr/bin/env bash
set -x
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# tmux
ln -s $DIR/tmux.conf ~/.tmux.conf

# ssh
ln -s $DIR/sshrc ~/.ssh/rc

# alias
# for bash currently
cat <<EOF >> ~/.bash_profile
if [ -f $DIR/myshell ]; then
	. $DIR/myshell
fi
EOF
