#!/usr/bin/env bash
wget http://vpn.net/installers/logmein-hamachi_2.1.0.198-1_amd64.deb
sudo dpkg -i logmein-hamachi_2.1.0.198-1_amd64.deb
rm -r logmein-hamachi_2.1.0.198-1_amd64*
sudo hamachi
sudo hamachi logon
sudo hamachi do-join AIRA.life AIRA
sudo hamachi list
