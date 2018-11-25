#!/bin/bash

ENCFS="/usr/local/bin/encfs"
ENCDIR="$HOME/Dropbox/Personal"
DECDIR="$HOME/Personal"

security find-generic-password -ga encfs 2>&1 >/dev/null | cut -d'"' -f2 | "$ENCFS" -S "$ENCDIR" "$DECDIR"