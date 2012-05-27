#!/usr/bin/env bash

if [ "`echo $0 | cut -c1`" = "/" ]; then
    ZSHD_PATH=`dirname $0`
else
    ZSHD_PATH=$(dirname `pwd`/`echo $0 | cut -c3-`)
fi

if [ -L ~/.zshrc ]; then
    unlink ~/.zshrc
fi

if [ -L ~/.zshd ]; then
    unlink ~/.zshd
fi

ln -s ${ZSHD_PATH}/zshrc ${HOME}/.zshrc
ln -s ${ZSHD_PATH} ${HOME}/.zsh.d
