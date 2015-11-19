#!/bin/sh

BASEDIR=$( cd "$( dirname "$0" )" && pwd )

if [ ! -f ~/.ssh/id_rsa ];
then
  ssh-keygen -q -N "" -t rsa -f ~/.ssh/id_rsa
  cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys
  chmod 600 ~/.ssh/*
  echo $BASEDIR
  cp $BASEDIR/config ~/.ssh/
  echo -e "SSH Key Generated Successfully!"
fi