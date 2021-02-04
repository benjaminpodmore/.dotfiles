#!/bin/bash

FILES=".gitconfig .zshrc .p10k.zsh .vimrc .oh-my-zsh .vim_runtime"

for FILE in $FILES
do
    if [ -e "/home/benjamin/$FILE" ]
    then
        echo "$FILE exists"
    else
        ln -s "/home/benjamin/.dotfiles/$FILE" "/home/benjamin/$FILE"
        echo "Linked $FILE to home directory"
    fi
done
