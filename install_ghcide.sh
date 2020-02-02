#! /bin/bash

code --install-extension DigitalAssetHoldingsLLC.ghcide

cd /tmp
git clone https://github.com/digital-asset/ghcide.git
cd ghcide
stack install 
