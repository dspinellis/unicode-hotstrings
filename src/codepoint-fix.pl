#!/usr/bin/env perl
#
# Canonicalize and fix the Unicode character codepoint references in the
# comments of the specified file
#

use open qw(:std :utf8);


BEGIN {
	binmode(STDOUT);
	# Add BOM, required by AHK
	print "\xEF\xBB\xBF";
	binmode(STDOUT, ":utf8");
}

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
