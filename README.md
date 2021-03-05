# FFMpeg cut and merge
Some simple helper scripts / examples to cut/split a video into mulptiple pieces and merge those pieces into a single video.

## How to use
### Cut
`cut.sh` script contains code to cut the source video into pieces, e.g.
```
# cut the source video starting at 2 sec, into a piece with duration of 4 sec
ffmpeg -y -ss 00:00:02 -i "${source_folder}/example-video.mp4"  -t 4 "${output_folder}/01.mp4"
# cut the source video starting at 10 sec, into a piece with duration of 2 sec
ffmpeg -y -ss 00:00:10 -i "${source_folder}/example-video.mp4"  -t 2  "${output_folder}/02.mp4"
```
This script creates 2 pieces out of a source video, and saves them to the `output/pieces/` folder, with names `01.mp4` and `02.mp4`.

Edit this script to use your video (put your video into the `source_video/` folder, and change `example-video.mp4` to the name of your video file).

Change the time of cut start and piece duration for each piece.

To add a new piece, copy the existing line, changing the cut time and the output file name, like so:
```
# cut the source video starting at 1 min 12 sec, into a piece with duration of 48 sec, and save it as "03.mp4"
ffmpeg -y -ss 00:01:12 -i "${source_folder}/example-video.mp4"  -t 48  "${output_folder}/03.mp4"
```

Run the script:
```
sh cut.sh
```
### Merge
After you run `cut.sh` and it created a file for each piece in the `output/pieces/` folder, run
```
sh merge.sh
```
Merge script takes all the videos in `output/pieces/` folder and merges them together, in alphabetical order. So you'd name your pieces like `01.mp4`, `02.mp4`, etc, to have a proper order.

The merged video is created at `output/merged.mp4`.

### Render
`render.sh` script simply runs `cut.sh` and then `merge.sh`, and opens the resulting video using the `vlc` media player.
So, instead of manually running `cut.sh` and `merge.sh`, you can just run
```
sh render.sh
```
