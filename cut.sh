#!/bin/bash

########
# Cut videos into pieces.
# -ss is start time of cut
# -t is duration of output
########

output_folder="output/pieces"

rm -rf output/pieces/*

case "$1" in
   --preview) source_folder="output/preview" ;;
           *) source_folder="source_video" ;;
     esac

echo "Cutting files from '${source_folder}'"

# watching street
ffmpeg -y -ss 00:00:02 -i "${source_folder}/01-watching-street.mp4"  -t 4 "${output_folder}/01.mp4"
ffmpeg -y -ss 00:00:00 -i "${source_folder}/02-street.mp4"  -t 4  "${output_folder}/02.mp4"

# robot
ffmpeg -y -ss 00:00:02 -i "${source_folder}/10-robot.mp4"  -t 20 "${output_folder}/05.mp4"

# watching street again
ffmpeg -y -ss 00:00:02 -i "${source_folder}/04-watching-street.mp4"  -t 4 "${output_folder}/06.mp4"
ffmpeg -y -ss 00:00:00 -i "${source_folder}/03-street.mp4"  -t 4  "${output_folder}/07.mp4"

# ninja: mirrors
ffmpeg -y -ss 00:00:03 -i "${source_folder}/30-mirrors.mp4"  -t 2  "${output_folder}/20.mp4"
ffmpeg -y -ss 00:00:03 -i "${source_folder}/21-mirrors.mp4"  -t 2  "${output_folder}/21.mp4"

# ninja: fight
ffmpeg -y -ss 00:00:13 -i "${source_folder}/ninja-fight.mp4"  -t 21.5  "${output_folder}/30.mp4"

# dance
ffmpeg -y -ss 00:00:04 -i "${source_folder}/50-dance.mp4"  -t 40  "${output_folder}/50.mp4"

# chorus dance

# you wanna fight man?

# chorus-without-music
