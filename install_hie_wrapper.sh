#! /bin/bash

code --install-extension alanz.vscode-hie-server 

sudo apt install -y libicu-dev libtinfo-dev libgmp-dev

cd /tmp

git clone https://github.com/haskell/haskell-ide-engine --recurse-submodules
cd haskell-ide-engine

stack install.hs hie-8.6.5

