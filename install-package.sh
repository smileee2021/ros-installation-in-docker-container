#!/usr/bin/env zsh

# install necessary package
apt update
apt install zsh git

# install zsh with zim
curl -fsSL https://raw.githubusercontent.com/zimfw/install/master/install.zsh | zsh
sed -i 's/asciiship/eriner/g' ~/.zimrc
sed -i 's/set -e//g' /ros_entrypoint.sh
sed -i 's/setup.bash/setup.sh/g' /ros_entrypoint.sh

echo '┌────────────────────────────────────────┐\n│                                        │\n│ Please type the following instruction: │\n│                                        │\n│\e[0;36m zimfw install\e[0m                          │\n│ \e[0;36msource /ros_entrypoint.sh\e[0m              │\n│ \e[0;36mzsh\e[0m                                    │\n│                                        │\n└────────────────────────────────────────┘'
zsh
