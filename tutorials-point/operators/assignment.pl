#!usr/bin/perl

# Assignment operator

# = (simple assignment operator), assigns right side of operator to left side of operator
$a = 10;
$b = 5;
$c = $a + $b;
print "Value of c: $c\n"; # will display 15

# += (add AND assignment operator), adds right operand to left operand and assigns to left operand
$a = 13;
$b = 3;
$b += $a;
print "Value of b: $b\n"; # will display 16

# -= (subtract AND assignment operator), subtracts right operand to left operand and assigns to left operand
$a = 2;
$b = 5;
$b -= $a;
print "Value of b: $b\n"; # will display 3

# *= (multiply AND assignment operator), multiplies right operand with left operand and assigns to left operand
$a = 2;
$b = 5;
$b *= $a;
print "Value of b: $b\n"; # will display 10

# /= (divide AND assignment operator), divides left operand by right operand and assigns to left operand
$a = 2;
$b = 6;
$b /= $a;
print "Value of b: $b\n"; # will display 3

# %= (modulus AND assignment operator), takes modulus of left operand by right operand and assigns to left operand
$a = 2;
$b = 5;
$b %= $a;
print "Value of b: $b\n"; # will display 1

# **= (exponent AND assignment operator), computes power of left operand to right operand and assigns to left operand
$a = 2;
$b = 5;
$b **= $a;
print "Value of b: $b\n"; # will display 25
