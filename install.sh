#!/usr/bin/env bash

if [ "`echo $0 | cut -c1`" = "/" ]; then
    ZSHD_PATH=`dirname $0`
else
    ZSHD_PATH=$(dirname `pwd`/`echo $0 | cut -c3-`)
fi

if [ -L $HOME/.zshrc ]; then
    unlink $HOME/.zshrc
fi

if [ -L $HOME/.zsh.d ]; then
    unlink $HOME/.zsh.d
fi

ln -s ${ZSHD_PATH}/zshrc ${HOME}/.zshrc
ln -s ${ZSHD_PATH} ${HOME}/.zsh.d

if [ -f /usr/local/share/zsh/site-functions/_git ]; then
    echo "you may need to unlink git functions from site-functions."
fi
