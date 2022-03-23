#!/bin/bash -e

source "$SNAP_USER_DATA/.config/keybase/keybase.env"
export $(grep -v '^#' "$SNAP_USER_DATA/.config/keybase/keybase.env" | xargs)

exec "$@" 