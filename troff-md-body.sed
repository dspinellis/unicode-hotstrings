#!/usr/bin/env sed -nf

# Explanation comment
/^; u/ {
  s/; //
  s/ /: /
  s/u\(....\)/U+\L\1/

  # Save to hold space for later use
  h
  n
}

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
  n
}

# Heading
s/^; \(#.*\)/\n#\1\n/p
