#!/bin/bash
if [ -d "$HOME/.initdev" ]; then
	exit 1;
else
	mkdir $HOME/.initdev;
	cp ./initdev $HOME/.initdev/;
	cp -r ./sources $HOME/.initdev/sources;
	cp -r ./gitignores $HOME/.initdev/gitignores;
	cp -r ./licenses $HOME/.initdev/licenses;
	cp -r ./bin $HOME/.initdev/bin;
	cp -r ./makefiles $HOME/.initdev/makefiles;
	exit 0;
        fi
