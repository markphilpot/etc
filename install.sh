#!/bin/bash

echo "Installing into $HOME:"

PWD=`pwd`
FILES="bashrc gitconfig fonts.conf tmux.conf tmux-osx.conf ctags editorconfig zlogin zlogout zpreztorc zprofile zshenv zshrc zprezto"

for i in $FILES
do
    echo $i
    rm -rf $HOME/.$i
    ln -s $PWD/$i $HOME/.$i
done

rm $HOME/.vimrc
ln -s $PWD/vim/vimrc $HOME/.vimrc
rm -rf $HOME/.vim
ln -s $PWD/vim/vim $HOME/.vim

#echo "awesome"
#rm -rf $HOME/.config/awesome
#ln -s $PWD/awesome $HOME/.config/awesome

#echo "Konsole Solarized Dark"
#cp $PWD/lib/konsole-colors-solarized/Solarized\ Dark.colorscheme $HOME/.kde/share/apps/konsole/SolarizedDark.colorscheme
