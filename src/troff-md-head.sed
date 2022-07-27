#!/usr/bin/env sed -nf
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

