#!/bin/bash

########
# Cut video ./video.mp4 into multiple pieces.
# Each line creates a piece in ./output/pieces/{piece-name}.mp4.

# Piece start is the time passed as -ss arg.
# Piece duration is in seconds, passed as -t arg.
#
# To add a new piece, copy a line and change name of the output file.
########

ffmpeg -ss 00:04:45 -i video.mp4  -t 10 pieces/1.mp4
ffmpeg -ss 00:05:07 -i video.mp4  -t 6 pieces/2.mp4
