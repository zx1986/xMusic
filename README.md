https://askubuntu.com/questions/564567/how-to-download-playlist-from-youtube-dl

```
youtube-dl --extract-audio --audio-format mp3 -o "%(title)s.%(ext)s" <url to playlist>
```
