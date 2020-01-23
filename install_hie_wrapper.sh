#! /bin/bash

sudo apt install libicu-dev libtinfo-dev libgmp-dev

mkdir -p ~/tmp
cd ~/tmp

git clone https://github.com/haskell/haskell-ide-engine --recurse-submodules
cd haskell-ide-engine

stack install.hs hie-8.6.5

