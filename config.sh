#!/bin/bash

_OAFS_KEY_FILE=

_FILE=key
if [[ -f "$_FILE" ]]; then
    _OAFS_KEY_FILE=$(<$_FILE)
fi

export OAFS_KEY=${OAFS_KEY:-${_OAFS_KEY_FILE}}