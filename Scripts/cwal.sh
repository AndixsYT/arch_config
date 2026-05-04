inotifywait -m -e close_write ~/.cache/skwd-wall/wallpaper/current.jpg | while read; do
  sleep 0.1
  cat .cache/skwd-wall/last-wallpaper.json | grep -oP '"path":"\K[^"]+' | xargs cwal --img
done
