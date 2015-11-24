#!/bin/sh
set -e

if [ "$1" = 'memcached' ]; then
    echo "Starting Memcached in foreground."
    exec /usr/bin/memcached -u memcache -m ${MEMCACHE_SIZE:-64} -l 0.0.0.0 -p 11211
fi

exec "$@"
