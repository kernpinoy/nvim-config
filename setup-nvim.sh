#!/bin/sh

# clone the packer.nvim repo to install
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Open nvim to install plugins
nvim +PackerSync
