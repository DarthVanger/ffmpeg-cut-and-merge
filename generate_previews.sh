preview_folder=output/preview
source_folder=source_video
preview_resolution="480:270"

mkdir -p "${preview_folder}"

file_to_convert="$1"

if [ -z "${file_to_convert}" ]; then

  for filename in "${source_folder}"/*; do
    echo "generating preview for ${filename}"
    ffmpeg -loglevel panic -y -i "${filename}" -vf scale="${preview_resolution}" "${preview_folder}/$(basename $filename)"
  done
else
  filename="${file_to_convert}"
  echo "generating preview for ${filename}"
  ffmpeg -loglevel panic -y -i "${filename}" -vf scale="${preview_resolution}" "${preview_folder}/$(basename $filename)"
fi
