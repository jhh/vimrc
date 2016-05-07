#!/bin/bash

VIMRC_DIR=`dirname $(greadlink -f $0)`

function warn {
    echo "$1" >&2
}

function die {
    warn "$1"
    exit 1
}

function install_vimrc {
    [ -e "$HOME/.vim" ] && die "~/.vim directory already exists."
    [ -e "$HOME/.vimrc" ] && die "~/.vimrc already exists."

    cd $HOME
    echo "Installing from $VIMRC_DIR..."
    ln -s $VIMRC_DIR/vimrc .vimrc
    ln -s $VIMRC_DIR/vim .vim
}

install_vimrc
