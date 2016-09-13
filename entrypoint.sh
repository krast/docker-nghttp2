#!/bin/sh

set -e

# Launch nghttp2
echo "Starting nghttp2..."
nghttpx -n 8 --tls-proto-list TLSv1.2 -s \
    -f *,3000 --no-ocsp -b squid,3128 \
    /key /cer
