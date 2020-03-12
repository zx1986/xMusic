.PHONY: init
init: ## 安裝必備套件
	brew install youtube-dl libav

.PHONY: download
download: ## 下載 mp3
	youtube-dl --extract-audio --audio-format mp3 -o "%(title)s.%(ext)s" `cat playlists`
	youtube-dl --extract-audio --audio-format mp3 -o "%(title)s.%(ext)s" `cat singles`

# Absolutely awesome: http://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
.PHONY: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.DEFAULT_GOAL := help
