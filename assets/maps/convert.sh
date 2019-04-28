#!/bin/bash

for f in *.tmx
do
	tiled --export-map ${f} ${f%.tmx}.lua
done
