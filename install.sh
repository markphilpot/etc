#!/bin/bash

echo "Installing into $HOME:"

PWD=`pwd`
FILES="bashrc gitconfig vimrc vim oh-my-zsh zshrc"

for i in $FILES
do
    echo $i
    rm -rf $HOME/.$i
    ln -s $PWD/$i $HOME/.$i
done
