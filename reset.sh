#! /bin/bash
#   WARNING WARNING WANRING WARNING    #
# This script could delete old setting #
#    files such as ~/vimrc, ~/.vim     #
echo "Reset env bash config"
echo "This may delete old files"
echo -e "Do you want to continue, [y,n]?\c"

read yes

if [[ "$yes" != y ]]; then
	exit -1
fi

for init_script in $(ls ~/linux_config/init_scripts/); do
	bash ~/linux_config/init_scripts/$init_scripts
done
