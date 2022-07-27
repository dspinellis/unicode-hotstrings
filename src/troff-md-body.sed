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

# Explanation comment
/^; u/ {
  s/; //
  s/ /: /

  # Convert Unicode number to lowercase
  s/u\(....\)/U+\L\1/

  # Improve footnotes
  s/ +$/¹/
  s/ -$/²/

  # Save to hold space for later use
  h
}

# Skip non-hotstring entries
/??/d
/\\\[$/d

# Hotstring rule
/^:/ {

  # Convert it to title
  s/^:[^:]*:\(\\\[..[^:]*\)::\(.*\)/\n### To get «\2» type «\1»\n/

  # Escape backslashes
  s/\\/\&#92;/g

  # Print heading
  p

  # Retrieve and print explanation
  x
  p
}

# Heading
s/^; \(#.*\)/\n#\1\n/p

$a\
\
## Footnotes\
\
¹ The glyph name appears in the AT&T troff user's manual, CSTR #54\
(1992 revision). <br />\
² The glyph name is not part of the groff-supported special characters.
