#! /bin/bash
# sudo pacman -S sof-firmware vim libreoffice-fresh rofi

sudo pacman -S logiops
mv ~/.bashrc ~/.bashrc.old
mv ~/.vimrc ~/.vimrc.old
ln -s ~/my-env/.bashrc ~/.bashrc
ln -s ~/my-env/.vimrc ~/.vimrc
ln -s ~/my-env/logid.cfg /etc/logid.cfg
source ~/.bashrc
