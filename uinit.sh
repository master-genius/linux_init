#!/bin/bash

CVIMRC_PATH=~/.vim
VIMRC_PATH=/etc/vim
VIMRC=$VIMRC_PATH/vimrc
TMUX_CONF="~/.tmux.conf"

#SELF_DIR=$(dirname "$0")
#cd $SELF_DIR
cd $(dirname "$0")

echo "setting vim..."

if [ -d "$CVIMRC_PATH" ] ; then
    cp .vim/* -R "$CVIMRC_PATH"
else
    cp .vim -R ~
fi

cp .vimrc ~/

echo "setting tmux..."

if [ ! -f "$TMUX_CONF" ] ; then
    cp .tmux.conf ~/
fi


#create dir

echo "creating dir..."
cd ~
DIR_LIST="bin source www php py wgo tmp source/config_backup source/wcode"
for d in $DIR_LIST ; do
    if [ ! -d "$d" ] ; then
        mkdir "$d"
    fi
done

echo "[ok] create dir"
ls

cp bin/* -R ~/bin

echo "get software update..."
sudo apt update

echo "start to install software..."

#install dev tool
sudo apt install -y git vim tmux tilda guake

if [ ! -f "$VIMRC" ] ; then
    sudo cp vimrc $VIMRC_PATH
fi

#install lib
sudo apt install -y libreadline-dev libaio-dev redis-server

#install some software
sudo apt install -y sl cowsay htop di saidar iftop nethogs


