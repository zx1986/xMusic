init:
	brew install youtube-dl libav

download:
	youtube-dl --extract-audio --audio-format mp3 -o "%(title)s.%(ext)s" `cat playlists`
	youtube-dl --extract-audio --audio-format mp3 -o "%(title)s.%(ext)s" `cat singles`
