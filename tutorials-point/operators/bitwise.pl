#!usr/bin/perl

# Bitwise operators
$a = 42; # binary value of 0010 1010
$b = 13; # binary value of 0000 1101

# & (binary AND operator), copies bit to result if it exists in both operands
$c = $a & $b;
print "Value of c: $c\n"; # will display 8, (binary value of 1000)

# | (binary OR operator), copies bit to result if it exists in either operand
$c = $a | $b;
print "Value of c: $c\n"; # will display 47, (binary value of 0010 1111)

# ^ (binary XOR operator), copies bit to result if it exists in one operand but not both
$c = $a ^ $b;
print "Value of c: $c\n"; # will display 39, (binary value of 0010 0111)

# ~ (binary ones complement operator), is unary in perl, in effect flip bits
$c = ~$a;
print "Value of c: $c\n"; # will display 213, (binary value of 1101 0101)

# << (binary left shift operator), left operand value is moved left by number of bits in right operand
$c = $a << 2;
print "Value of c: $c\n"; # will display 168, (binary value of 1010 1000)

# >> (binary right shift operator), left operand value is moved right by number of bits in right operand
$c = $a >> 2;
print "Value of c: $c\n"; # will display 10.5, (binary value of 1010.1)
