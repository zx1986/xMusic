init:
	brew install youtube-dl libav

download:
	cat youtube | xargs -I youtube-dl --extract-audio --audio-format mp3 -o "%(title)s.%(ext)s"
