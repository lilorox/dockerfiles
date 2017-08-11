#!/bin/sh

MORE_OPTS=
if [ $ALLOW_DELETE -eq 1 ]
then
    MORE_OPTS="--removable /shared"
fi

exec su-exec $UID:$GID browsepy 0.0.0.0 5000 --directory /shared $MORE_OPTS
