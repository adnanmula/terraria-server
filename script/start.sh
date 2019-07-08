#!/bin/sh

cd ../tshock/tshock_4.3.26

mono --server --gc=sgen -O=all TerrariaServer.exe -world 01.wld -autocreate 2 -configpath "/tshock/config"
