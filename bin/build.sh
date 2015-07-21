#!/bin/bash

set -e
set -u
set -x

export PATH=/usr/lib/ccache:$PATH
cmake /src "$@"
make
ctest
