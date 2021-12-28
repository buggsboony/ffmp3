#!/bin/bash

#install stuff
what=ffmp3
what2=ffogg
what3=ffwav
extension=.sh
#peut être extension vide

echo "Rendre exécutable..."
chmod +x $what$extension
echo "lien symbolique vers usr bin"
sudo ln -s "$PWD/$what$extension" /usr/bin/$what
sudo ln -s "$PWD/$what2$extension" /usr/bin/$what2
sudo ln -s "$PWD/$what3$extension" /usr/bin/$what3

