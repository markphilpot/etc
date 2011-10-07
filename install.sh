#!/bin/bash

echo "Installing into $HOME:"

PWD=`pwd`
FILES="bashrc gitconfig"

for i in $FILES
do
    echo $i
    rm $HOME/.$i
    ln -s $PWD/$i $HOME/.$i
done
