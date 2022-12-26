#!/bin/bash

ln_file() {
    ln -s $pt_dotfiles/$1 $1
    if [ $? -ne 0 ]; then
        echo "Move old $1"
        cp $1 $1_old
        ln -sf $pt_dotfiles/$1 $1
    fi
}

pt_dotfiles=$(dirname $(realpath $0))
cd $HOME

ln_file .bashrc
