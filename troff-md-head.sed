#!/usr/bin/env sed -nf

1i\
# Unicode Hotstrings\
Available troff-like [AutoHotkey](https://www.autohotkey.com/) escapes.\
You can find more information on the\
[Unicode hotstring project's GitHub page](https://github.com/dspinellis/unicode-hotstrings).\
\
## Contents\


# Heading
/^; # / {
	# Isolate title
	s/^; # \(.*\)/\1/

	# Save to hold space
	h

	# Convert to -separated lowercase
	s/ /-/g
	s/.*/\L&/

	# Make it relative link target
	s/^/](#/
	s/$/)/

	# Append to hold space
	H

	# Retrieve hold space
	x

	# Make title a linked list element
	s/^/* [/
	s/\n//

	# Print
	p
}

$a\
\
## Miscellaneous\
\
### To open a help page type «&#92;[??»\
\
### To get «&#92;[» type «&#92;[&#92;[»\

