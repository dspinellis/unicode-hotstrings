emojis.ahk: emojis.js json-to-ahk.jq
	printf '\xEF\xBB\xBF' >$@
	jq  -r -f json-to-ahk.jq  <emojis.js >>$@

emojis.js:
	curl -o $@ https://api.github.com/emojis
