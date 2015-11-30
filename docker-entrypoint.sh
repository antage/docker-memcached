#!/bin/sh
set -e

if [ "$1" = 'memcached' ]; then
    echo "Starting Memcached in foreground."
    exec gosu nobody:nogroup /usr/bin/memcached -m ${MEMCACHE_SIZE:-64} -l 0.0.0.0 -p 11211
fi

exec "$@"
