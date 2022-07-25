# Convert a hexadecimal string into its character code point
def hex_to_char:
    ("0123456789abcdef" | split("") | with_entries({key:.value, value:.key}))
      as $hex_map |

    # Pad hex number to even number of nibles
    def pad: if (. | length) % 2 == 1 then "0" + . else . end;

    # Convert a single hex digit into its decimal value
    def decode_nibble: $hex_map[ascii_downcase];

    # Convert two hex digits into their decimal value
    def decode_byte: (.[0:1]|decode_nibble * 16) + (.[1:2]|decode_nibble);

    # Split hex number into byte pairs
    def byte_pairs: range(0; length; 2) as $i | .[$i:$i+2];

    # Assemble array of decimal byte values into a single integer
    def assemble: reduce .[] as $item (0; . * 256 + $item);

    [[pad | byte_pairs | decode_byte ] | assemble] | implode;

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
  "#Hotstring EndChars :"
] +
[
. |
# Convert map into key-value pairs
to_entries |
# Remove non-Unicode entries
.[] | select(.value | contains("/unicode/")) |
# Assemble emoiji names and their values into AutoHotkey hotstrings
(":?*O:\\`:" + .key + "::" + (.value | url_to_unicode | hex_array_to_string ))
] |
join("\n")
