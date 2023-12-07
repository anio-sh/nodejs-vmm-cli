#!/bin/bash -eufx

printf "Starting QEMU\n"

qemu-system-x86_64 \
    -enable-kvm \
\
    -m 8192 \
    -smp 2 \
\
    -nic none \
\
    -vnc unix:{CONTROL_DIR}/vnc.sock \
    -qmp unix:{CONTROL_DIR}/qmp.sock,server=on,wait=off \
    -monitor unix:{CONTROL_DIR}/monitor.sock,server,nowait \
    -serial unix:{CONTROL_DIR}/serial.sock,server,nowait \
\
    -nic none \
\
    -daemonize \
\
{ADDITIONAL_QEMU_ARGS}

printf "Successfully started QEMU\n"
