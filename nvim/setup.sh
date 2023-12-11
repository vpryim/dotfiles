#!/bin/bash

git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
cp ./init.lua ~/.config/nvim
cp -R ./lua ~/.config/nvim/lua
