#!/bin/bash
cwd=`pwd`
ln -s $cwd/.gitconfig $HOME/.gitconfig
ln -s $cwd/.bashrc $HOME/.bashrc
ln -s $cwd/.bash_profile $HOME/.bash_profile
ln -s $cwd/.alias $HOME/.alias
ln -s $cwd/.screenrc $HOME/.screenrc
ln -s $cwd/.vimrc $HOME/.vimrc

mkdir $HOME/bin
cp $cwd/bin/svn-color.py $HOME/bin

mkdir $HOME/packages
cd $HOME/packages
git clone https://github.com/chrisallenlane/cheat.git
cd cheat
python setup.py install
