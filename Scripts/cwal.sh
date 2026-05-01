inotifywait -m -e close_write ~/.cache/skwd-wall/wallpaper/current.jpg | while read; do
  cat .cache/skwd-wall/last-wallpaper.json | grep -oP '"path":"\K[^"]+' | xargs cwal --img
done
