#!/usr/bin/env bash
sudo apt install openssh-server -y
sudo systemctl enable sshd
sudo systemctl restart ssh
