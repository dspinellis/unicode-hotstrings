#!/usr/bin/env sed -nf

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
  s/^:[^:]*:\(\\\[..[^:]*\)::\(.*\)/\n### \2 \1\n/

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
