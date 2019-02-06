#!/bin/bash
# Replace ancient automake files
autoreconf -fiv &&
# Configure
./configure --prefix=/usr \
            --disable-static &&
# Build
make -j $SHED_NUM_JOBS &&
# Install
make DESTDIR="$SHED_FAKE_ROOT" install
