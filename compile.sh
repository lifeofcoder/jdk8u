#! /bin/bash

make CONF=macosx-x86_64-normal-server-slowdebug clean
compiledb make WARNINGS_ARE_ERRORS="" CONF=macosx-x86_64-normal-server-slowdebug all
