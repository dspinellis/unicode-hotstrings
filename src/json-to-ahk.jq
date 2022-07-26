# Convert a hexadecimal string into its character code point
def hex_to_char:
    ("0123456789abcdef" | split("") | with_entries({key:.value, value:.key}))
      as $hex_map |

    # Convert a single hex digit into its decimal value
    def hex_to_dec: $hex_map[ascii_downcase];

    # Assemble array of decimal byte values into a single integer
    def assemble: reduce .[] as $item (0; . * 16 + $item);

    [[split("") | .[] | hex_to_dec] | assemble] | implode;

# Convert an array of hexadecimal code point number strings into the string
# they represent
def hex_array_to_string: .[] |= hex_to_char | join("");

# Convert GitHub URL into an array of Unicode hex values
# Example:
# https://github.githubassets.com/images/icons/emoji/unicode/1f1e6-1f1f1.png?v8
# becomes ["1f1e6", "1f1f1"]
def url_to_unicode:
    ltrimstr("https://github.githubassets.com/images/icons/emoji/unicode/") |
    rtrimstr(".png?v8") |
    split("-");

[
  "; File auto-generated from https://api.github.com/emojis via json-to-ahk.jq",
  "",
  ":?*:\\`:?::",
  "  Run \"https://www.spinellis.gr/sw/unicode-hotstrings/emojis.html\"",
  ""
] +
[
  . |
  # Convert map into key-value pairs
  to_entries |
  # Remove non-Unicode entries
  .[] | select(.value | contains("/unicode/")) |
  # Assemble emoiji names and their values into AutoHotkey hotstrings
  (":O:\\`:" + .key + "::" + (.value | url_to_unicode | hex_array_to_string ))
] |
join("\n")
