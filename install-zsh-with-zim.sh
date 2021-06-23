#!/usr/bin/env zsh

# install necessary package
apt update
apt install zsh git

# install zsh with zim
curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
sed -i 's/asciiship/eriner/g' ~/.zimrc
sed -i 's/set -e//g' /ros_entrypoint.sh
sed -i 's/setup.bash/setup.sh/g' /ros_entrypoint.sh

echo 'Please type the following instruction:\n\n\e[0;36mzimfw install\nsource /ros_entrypoint.sh\e[0m'
zsh
