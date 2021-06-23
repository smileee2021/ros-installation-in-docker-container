#!/usr/bin/env bash

# install necessary package
apt update
apt install curl zsh

# install zsh with zim
curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
sed -i 's/asciiship/eriner/g' ~/.zimrc
zimfw install

# exit
echo 'Please exec container terminal with zsh again, and then type the following instruction:\n\n\e[0;36msource /opt/ros/foxy/setup.bash\nsource ros_entrypoint.sh\e[0m'
exit
