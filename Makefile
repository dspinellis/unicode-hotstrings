emojis.ahk: emojis.js json-to-ahk.jq
	printf '\xEF\xBB\xBF' >$@
	jq  -r -f json-to-ahk.jq  <emojis.js >>$@

emojis.js:
	curl -o $@ https://api.github.com/emojis

verify:
	@echo Looking for duplicate two-letter hotstrings
	! sed -n 's/`//g;s/.*\\\[\(..\):.*/\1/p' troff.ahk  | sort | uniq -d | grep .

codepoint-fix:
	perl -i codepoint-fix.pl troff.ahk
