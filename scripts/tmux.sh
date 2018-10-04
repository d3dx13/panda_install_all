#!/usr/bin/env bash
sudo apt update
sudo apt install -y git
sudo apt install -y automake
sudo apt install -y build-essential
sudo apt install -y pkg-config
sudo apt install -y libevent-dev
sudo apt install -y libncurses5-dev
rm -fr /tmp/tmux
git clone https://github.com/tmux/tmux.git /tmp/tmux
cd /tmp/tmux
sh autogen.sh
./configure && make
sudo make install
cd -
rm -fr /tmp/tmux
cd 
echo "
if [[ -z \$TMUX && -n \$SSH_TTY ]]; then
    me=$(whoami)
    real_tmux=$(command -v tmux)

    if [ -z \$real_tmux ]; then
        echo \"No tmux installed.\"
    fi

    export TERM=\"xterm-256color\"

    if \$real_tmux has-session -t \$me 2>/dev/null; then
        \$real_tmux attach-session -t \$me
    else
        if [[ -n \$SSH_TTY ]]; then
            (tmux new-session -d -s \$me && tmux attach-session -t \$me)
        fi
    fi
fi" >> ~/.bashrc
echo "
if [[ -z \$TMUX && -n \$SSH_TTY ]]; then
    me=$(whoami)
    real_tmux=$(command -v tmux)

    if [ -z \$real_tmux ]; then
        echo \"No tmux installed.\"
    fi

    export TERM=\"xterm-256color\"

    if \$real_tmux has-session -t \$me 2>/dev/null; then
        \$real_tmux attach-session -t \$me
    else
        if [[ -n \$SSH_TTY ]]; then
            (tmux new-session -d -s \$me && tmux attach-session -t \$me)
        fi
    fi
fi" >> ~/.zshrc
