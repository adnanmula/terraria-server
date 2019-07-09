#!/bin/sh

mono --server --gc=sgen -O=all TerrariaServer.exe -autocreate 2 -world /server/world/world.wld -configpath "/server/config" -worldpath "/server/world"
