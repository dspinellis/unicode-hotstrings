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

troff.md: troff.ahk troff-md-body.sed troff-md-head.sed
	sed -nf troff-md-head.sed troff.ahk >$@
	sed -nf troff-md-body.sed troff.ahk >>$@

troff.html: troff.md
	pandoc --from markdown --metadata pagetitle="Troff hotstrings" --css=pandoc.css -s $? -o $@
