#!/bin/bash

########
# Concat all *.mp4 videos in output/pieces/* folder
# Write merged video to ./merged.mp4
########

for filename in output/pieces/*.mp4; do
  echo "file $filename" >> concat-list.txt
done

ffmpeg -y -f concat -i concat-list.txt merged.mp4

echo "Concatenated videos list:"
cat concat-list.txt
rm concat-list.txt
