#!/bin/sh
set -e

# Prepend "stout" if the first argument is not an executable
if ! type -- "$1" &> /dev/null; then
	set -- stout "$@"
fi

exec "$@"
