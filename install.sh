#!/bin/bash

echo "Installing into $HOME:"

PWD=`pwd`
FILES="bashrc gitconfig vimrc vim oh-my-zsh zshrc screenrc Xdefaults Xresources fonts.conf xsessionrc"

for i in $FILES
do
    echo $i
    rm -rf $HOME/.$i
    ln -s $PWD/$i $HOME/.$i
done

echo "awesome"
rm -rf $HOME/.config/awesome
ln -s $PWD/awesome $HOME/.config/awesome

echo "Konsole Solarized Dark"
cp $PWD/lib/konsole-colors-solarized/Solarized\ Dark.colorscheme $HOME/.kde/share/apps/konsole/SolarizedDark.colorscheme
