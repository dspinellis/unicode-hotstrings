# Unicode Hotstrings
This repository contains
[GitHub Markdown](https://www.spinellis.gr/sw/unicode-hotstrings/emojis.html) and
troff-inspired
[extended typography](https://www.spinellis.gr/sw/unicode-hotstrings/troff.html)
hotstrings for the
[AutoHotkey](https://www.autohotkey.com/) program,
through which one can enter thousands of useful Unicode characters.

## Installation
* Install the `emojis.ahk` and `troff.ahk` in the location where you keep
  your AutoHotkey files.
* Add to your main AutoHotkey file, the following lines.
```ahk
#include troff.ahk
#include emojis.ahk
```
* Reload the AutoHotkey script (e.g. by right-clicking on its icon and
  selecting the corresponding menu entry).

## Operation
* Type «&#92;[xx» to get the character with the mnemonic _xx_,
  e.g. «&#92;[->» to get →.
* Type «&#92;[??» to open a
  [web page](https://www.spinellis.gr/sw/unicode-hotstrings/troff.html)
  with all available extended character escapes.
* Type «&#92;:xyz» followed by a non-word character,
  to get the emoji named _xyz_, e.g. «&#92;:+1» to get 👍.
* Type «&#92;:?» to open a
  [web page](https://www.spinellis.gr/sw/unicode-hotstrings/emojis.html)
  with all available emoji escapes.

## Common emojis
Here are the mnemonics for the [ten most used emojis](https://home.unicode.org/emoji/emoji-frequency/).

* heart → ❤
* +1 → 👍
* blush → 😊
* heart\_eyes → 😍
* joy → 😂
* kissing\_heart → 😘
* pray → 🙏
* rofl → 🤣
* smiling\_face\_with\_three\_hearts → 🥰
* sob → 😭

## See also
* [Unicode input](https://en.wikipedia.org/wiki/Unicode_input)
* [GNU roff special character and glyph repertoire](https://man7.org/linux/man-pages/man7/groff_char.7.html)
