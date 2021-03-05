#!/bin/bash

########
# Concat all *.mp4 videos in output/pieces/* folder
# Write merged video to ./merged.mp4
########

# create "concat-list.txt" file with the list of all videos to concat,
# in the format suitable for ffmpeg "concat" command
for filename in "output/pieces/*"; do
  echo "file $filename" >> concat-list.txt
done

# concatenate the video using ffmpeg and the "concat-list.txt" created above
ffmpeg -y -f concat -i concat-list.txt "output/merged.mp4"

# output the concatenated videos list
echo "Concatenated videos list:"
cat concat-list.txt
# remove the concat-list.txt, as it's not needed anymore
rm concat-list.txt

echo "Merged video is available at output/merged.mp4"
