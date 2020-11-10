#!/bin/bash

if [ -n "$1" ]; then
  echo "[*] Package to install is: $1"
else
  echo "Not supplied."
  exit
fi

echo "[*] Processing..."
ansible web -b -m apt -a "name=$1 state=present"

