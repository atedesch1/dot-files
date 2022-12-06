#!/usr/bin/env bash

instances=$(pgrep "$1")

if [[ ! $instances ]]; then
    $1 &
fi

exit 0