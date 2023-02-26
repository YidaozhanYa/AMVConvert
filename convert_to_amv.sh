#!/usr/bin/env bash

file="$1"
ffmpeg -i "$file" -y -f avi -vcodec amv -vb 480000 -r 13 -s 128x160 -vf transpose=3 -acodec adpcm_ima_amv -ar 22050 -ac 1 "${file/mp4/amv}"
