#!/usr/bin/env perl
#
# Canonicalize and fix the Unicode character codepoint references in the
# comments of the specified file
#

use open qw(:std :utf8);
binmode(STDOUT, ":utf8");
while(<>) {
	if (/^; (u[^ ]+) +(.*)/) {
		$u = $1;
		$rest = $2;
		$rest =~ s/^ *\(.*\) *//;
	} elsif (/^:[^:]*:\\\[((\`?..)|(\[[^]]+\]))::(.)/) {
		$u2 = sprintf("u%04X", ord($4));
		print "; $u2     $rest\n$_";
	} else {
		print;
	}
}
