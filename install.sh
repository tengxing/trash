cp ~/.bashrc ~/.bashrc.bak
mkdir ~/.trash
cp trash.sh ~/.trash
echo "alias rm='sh ~/.trash/trash.sh'">>~/.bashrc
source ~/.bashrc
echo "rm保护伞安装完毕!"
