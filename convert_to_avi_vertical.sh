#!/usr/bin/env bash

file="$1"
ffmpeg -i "$file" -y -f avi -vcodec mjpeg -vb 480000 -r 13 -s 128x160 -vf hflip -acodec pcm_s16le -ab 128k -ar 22050 -ac 2 -vol 256 "${file/mp4/avi}"
