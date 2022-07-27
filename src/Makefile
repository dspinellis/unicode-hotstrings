#
#  AutoHotkey hotstrings for Unicode
#  Copyright (C) 2022  Diomidis Spinellis

#  This program is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.

#  This program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.

#  You should have received a copy of the GNU General Public License
#  along with this program.  If not, see <https://www.gnu.org/licenses/>.
#

WEBDIR=$(HOME)/pubs/web/home/sw/unicode-hotstrings
TARGETS=../emojis.ahk $(WEBDIR)/troff.html $(WEBDIR)/emojis.html \
	$(WEBDIR)/pandoc.css

all: $(TARGETS) # Help: Build AutoHotkey files and documentation

../emojis.ahk: emojis.js json-to-ahk.jq
	printf '\xEF\xBB\xBF' >$@
	jq  -r -f json-to-ahk.jq  <emojis.js >>$@

emojis.js:
	curl -o $@ https://api.github.com/emojis

verify: # Help: Verify the there are no duplicate definitions in troff.ahk
	@echo Looking for duplicate two-letter hotstrings
	! sed -n 's/`//g;s/.*\\\[\(..\):.*/\1/p' troff.ahk  | sort | uniq -d | grep .

codepoint-fix: # Help: Fix the Unicode codepoint numbers listed in troff.ahk
	perl -i codepoint-fix.pl ../troff.ahk

troff.md: ../troff.ahk troff-md-body.sed troff-md-head.sed
	sed -nf troff-md-head.sed ../troff.ahk >$@
	sed -nf troff-md-body.sed ../troff.ahk >>$@

$(WEBDIR)/troff.html: troff.md
	pandoc --from markdown --metadata pagetitle="Troff hotstrings" --css=pandoc.css -s $? -o - >$@

$(WEBDIR)/emojis.html: emojis.html
	cp $? $@

$(WEBDIR)/pandoc.css: pandoc.css
	cp $? $@

help: # Help: Show this help message
	@echo 'The following make targets are available.'
	@sed -n 's/^\([^:]*:\).*# [H]elp: \(.*\)/"%-20s %s\\n" "\1" "\2"/p' Makefile | xargs -n 3 printf | sort
