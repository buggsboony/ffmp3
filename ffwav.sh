#!/bin/bash
filename="$1"
pathname=$(dirname "$1")
basename=$(basename "$1")
extension="${filename##*.}"
name_no_ext="${basename%.*}"

#ffmpeg -i input.flac -ab 196k -ac 2 -ar 48000 output.mp3

#escape quotes and special characters
name_no_ext_esc=$(printf '%q' "$name_no_ext")


echo "name no ext="
echo "shortname=$name_no_ext"
echo "filename=$filename"


#stat "$pathname/file'name.m4a"
#stat "$pathname/$name_no_ext.m4a"


#works but for test purpose:
#vlc -I dummy   "$filename"  ':sout=#transcode{acodec=mpga,ab=192}:std{dst="file'\''nameout.mp3",access=file}' vlc://quit
#works!  for vlcmp3 file\'name.m4a
#vlc -I dummy   "$filename"  ":sout=#transcode{acodec=mpga,ab=192}:std{dst=\"$name_no_ext.mp3\",access=file}" vlc://quit

#should work
# Conversion en ogg : 2021-05-31 17:33:50
ffmpeg -i "$filename" "$name_no_ext.wav"
#####ffmpeg -i audio.wav  -acodec libvorbis audio.ogg
#### ffmpeg -i song.mp3 -acodec pcm_u8 -ar 22050 song.wav  #Export to wav pour 22.05 KHz
#### ffmpeg -i song.mp3 song.wav  #Export let ffmpg choose

#echo  ':sout=#transcode{acodec=mpga,ab=192}:std{dst="file'\''nameout.mp3",access=file}'
#echo "escaped=$name_no_ext_esc"

#vlc -I dummy "$filename" ":sout=#transcode{acodec=mpga,ab=192}:std{dst=""$pathname/$name_no_ext"".mp3"",access=file}"  vlc://quit


#vlc -I dummy "$filename" ":sout=#transcode{acodec=flac,ab=192}:std{dst=""$pathname/$name_no_ext"".mp3"",access=file}"  vlc://quit
