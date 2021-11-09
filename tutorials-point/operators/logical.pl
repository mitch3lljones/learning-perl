#!usr/bin/perl

# Logical operators
$a = 1;
$a = 0;

# and (logical AND operator), if both operands are true, then returns true
$c = $a and $b;
print "Value of c: $c\n"; # will display false

# && (C-style logical AND operator), copies a bit to the result if it exists in both operand
$c = $a && $b;
print "Value of c: $c\n"; # will display false

# or (logical OR operator), if any two operands are non-zero, then returns true
$c = $a or $b;
print "Value of c: $c\n"; # will display true

# || (C-sytle logical OR operator), copies a bit to the result if it exists in either operand
$c = $a || $b;
print "Value of c: $c\n"; # will display true

# not (logical NOT operator), reverses logical state of operand (if true, then makes it false)
$c = not($a and $b);
print "Value of c: $c\n"; # will display true
