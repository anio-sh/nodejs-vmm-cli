#!/bin/bash -eufx

printf "Executing qemu as '{RUN_AS}'\n"

sudo \
    -u {RUN_AS} \
    {PWD}/4.qemu.sh
