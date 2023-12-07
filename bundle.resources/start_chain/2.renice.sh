#!/bin/bash -eufx

printf "Setting niceness to '-20'\n"

nice \
    -n -20 \
    {PWD}/3.sudo.sh
