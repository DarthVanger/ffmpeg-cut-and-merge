source ~/.bash_profile

sh cut.sh --preview
sh merge.sh
mv output/merged.mp4 output/video.mp4
vlc output/video.mp4
