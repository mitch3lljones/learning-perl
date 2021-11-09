#!usr/bin/perl

# Quote-like operators

# q{} operator, encloses string within single quotes
$a = q{abcd}; # assigns 'abcd' to a

# qq{} operator, encloses a string within double quotes
$b = qq{abcd}; # assigns "abcd" to b

# qx{} operator, encloses a string within invert quotes
$c = qx{abcd} # assigns `abcd` to c
