#!/bin/bash

FILES=".gitconfig .zshrc .p10k.zsh .vimrc .oh-my-zsh .vim_runtime"

for FILE in $FILES
do
    if [ -e "/home/pi/$FILE" ]
    then
        echo "$FILE exists"
    else
        ln -s "/home/pi/.dotfiles/$FILE" "/home/pi/$FILE"
        echo "Linked $FILE to home directory"
    fi
done
