#!/usr/bin/env bash
set -euo pipefail

git clone https://github.com/tfutils/tfenv.git ~/.tfenv
sudo ln -s ~/.tfenv/bin/* /usr/local/bin

tfenv install
tfenv use
