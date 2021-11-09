#!usr/bin/perl

# Equality operators

# == (equal to)
$a = 5;
$b = 5;
$c = $a == $b;
print "Value of c: $c\n"; # will display TRUE

# != (not equal to)
$a = 5;
$b = 5;
$c = $a != $b;
print "Value of c: $c\n"; # will display FALSE

# <=>, checks if two operands are equal. If equal, returns 0.
# if left value is less than right value, returns -1.
# if left value is greater than right value, retusn 1.
$a = 6;
$b = 5;
$c = $a <=> $b;
print "Value of c: $c\n"; # will display 1

# > (greater than)
$a = 6;
$b = 5;
$c = $a > $b;
print "Value of c: $c\n"; # will display TRUE

# < (less than)
$a = 6;
$b = 5;
$c = $a < $b;
print "Value of c: $c\n"; # will display FALSE

# >= (greater than or equal to)
$a = 4;
$b = 5;
$c = $a >= $b;
print "Value of c: $c\n"; # will display FALSE

# <= (less than or equal to)
$a = 5;
$b = 5;
$c = $a <= $b;
print "Value of c: $c\n"; # will display TRUE
