sh cut.sh
sh merge.sh
vlc output/merged.mp4 || echo "Failed to run VLC. Install it, or use another media player in render.sh to automatically play the video"
