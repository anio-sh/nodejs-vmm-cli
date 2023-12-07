#!/bin/bash -eufx

{PWD}/1.taskset.sh \
	1> {LOGS_DIR}/stdout.log \
	2> {LOGS_DIR}/stderr.log
