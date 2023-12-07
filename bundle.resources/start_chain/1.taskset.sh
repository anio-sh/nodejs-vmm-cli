#!/bin/bash -eufx

printf "Setting CPU affinity to '{CPU_LIST}'\n"

taskset \
    --cpu-list {CPU_LIST} \
    {PWD}/2.renice.sh
