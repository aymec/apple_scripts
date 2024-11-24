for f in "$@"
do
	dirname=$(dirname "$f")
	filename=$(basename -- "$f")
	extension="${filename##*.}"
	filename="${filename%.*}"
	/opt/homebrew/bin/ffmpeg -loglevel warning -y -i $f -filter:v "scale='min(480,iw)':-2" -vcodec libx264 -crf 26 -preset faster -tune stillimage -an "$dirname/$filename-resized.$extension"
done
