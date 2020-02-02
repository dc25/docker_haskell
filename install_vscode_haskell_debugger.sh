#! /bin/bash

stack install phoityne-vscode haskell-dap

# 2020-01-20 debugging does not work without ghcide extension.
EXTENSIONS='phoityne.phoityne-vscode DigitalAssetHoldingsLLC.ghcide'
for s in $EXTENSIONS; do
    code --install-extension $s
done


