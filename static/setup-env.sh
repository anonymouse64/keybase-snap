#!/bin/bash -e

if [ -f "$SNAP_USER_DATA/.config/keybase/keybase.env" ]; then
  source "$SNAP_USER_DATA/.config/keybase/keybase.env"
  export $(grep -v '^#' "$SNAP_USER_DATA/.config/keybase/keybase.env" | xargs)
fi
exec "$@" 
