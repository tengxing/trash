#!/bin/bash
cp ~/.bashrc ~/.bashrc.bak
mkdir ~/.trash
echo "alias rm='sh /${PWD#*/}/trash.sh'">>~/.bashrc
source ~/.bashrc
echo "rm保护伞安装完毕!"
exit
