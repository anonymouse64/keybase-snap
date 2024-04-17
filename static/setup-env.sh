#!/bin/bash -e

# set XDG_RUNTIME_DIR but use current rather than the revision so that if it
# gets stored by keybase it will remain valid for all revisions
export XDG_RUNTIME_DIR=${SNAP_USER_DATA%/*}/current/.config
exec "$@" 
