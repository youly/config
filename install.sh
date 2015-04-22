#!/bin/bash
cwd=`pwd`

if [ ! -e $HOME/.gitconfig ];then
    ln -s $cwd/.gitconfig $HOME/.gitconfig
fi
if [ ! -e $HOME/.bashrc ];then
    ln -s $cwd/.bashrc $HOME/.bashrc
fi
if [ ! -e $HOME/.bash_profile ];then
    ln -s $cwd/.bash_profile $HOME/.bash_profile
fi
if [ ! -e $HOME/.alias ];then
    ln -s $cwd/.alias $HOME/.alias
fi
if [ ! -e $HOME/.screenrc ];then
    ln -s $cwd/.screenrc $HOME/.screenrc
fi
if [ ! -e $HOME/.vimrc ];then
    ln -s $cwd/.vimrc $HOME/.vimrc
fi


if [ ! -d $HOME/bin ]; then
    /bin/mkdir $HOME/bin
fi
if [ ! -e $HOME/bin/svn-color.py ]; then
    /bin/ln -s $cwd/svn-color.py $HOME/bin
fi

if [ ! -d $HOME/packages ]; then
    /bin/mkdir $HOME/packages
fi
cd $HOME/packages
if [ ! -d cheat ]; then
    git clone https://github.com/chrisallenlane/cheat.git
    cd cheat
    python setup.py install
else
    git pull
fi
