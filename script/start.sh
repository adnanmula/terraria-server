#!/bin/sh

mono --server --gc=sgen -O=all TerrariaServer.exe -world /server/world/01.wld -configpath "/server/config" -worldpath "/server/world"
