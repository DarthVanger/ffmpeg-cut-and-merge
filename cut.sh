#!/bin/bash

########
# Cut videos into pieces.
# -ss is start time of cut
# -t is duration of output
# -i is the path to source video
# Resulting videos are saved to output/pieces/ folder.
########

# remove pieces/ dir with files from the previous run, if any
rm -rf output/pieces
# create output/pieces directory again, for the new pieces
mkdir -p output/pieces

# cut the source video starting at 2 sec, into a piece with duration of 4 sec
ffmpeg -y -ss 00:00:02 -i "source_video/example-video.mp4"  -t 4 "output/pieces/01.mp4"
# cut the source video starting at 10 sec, into a piece with duration of 2 sec
ffmpeg -y -ss 00:00:10 -i "source_video/example-video.mp4"  -t 2  "output/pieces/02.mp4"
# To add a new piece, just copy the line above, changing the cut time and the output file name to "03.mp4"
