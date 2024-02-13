#!/bin/bash
 
echo "remove symbolics links from usr bin"

#install stuff
what=ffmp3
what2=ffogg
what3=ffwav
extension=.sh

sudo rm /usr/bin/$what
sudo rm /usr/bin/$what2
sudo rm /usr/bin/$what3


echo "done."

