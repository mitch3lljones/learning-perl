#!usr/bin/perl

# Equity operators

# lt operator, returns true if left argument is stringwise less than right argument
$a = 'abc';
$b = 'xyz';
$c = $a lt $b;
print "Value of c: $c\n"; # will display TRUE

# gt operator, returns true if left argument is stringwise greater than right argument
$a = 'abc';
$b = 'xyz';
$c = $a gt $b;
print "Value of c: $c\n"; # will display FALSE

# le operator, returns true if left argument is stringwise less than or equal to right argument
$a = 'abc';
$b = 'xyz';
$c = $a le $b;
print "Value of c: $c\n"; # will display TRUE

# ge operator, returns true if left argument is stringwise greater than or equal to right argument
$a = 'abc';
$b = 'xyz';
$c = $a ge $b;
print "Value of c: $c\n"; # will display FALSE

# eq operator, returns true if left argument is stringwise equal to right argument
$a = 'abc';
$b = 'xyz';
$c = $a eq $b;
print "Value of c: $c\n"; # will display FALSE

# ne operator, returns true if left argument is stringwise not equal to right argument
$a = 'abc';
$b = 'xyz';
$c = $a ne $b;
print "Value of c: $c\n"; # will display TRUE

# cmp operator, returns -1, 0, or 1 depending on whether the left argument is stringwise less than, equal to, or greater than the right argument
$a = 'abc';
$b = 'xyz';
$c = $a cmp $b;
print "Value of c: $c\n"; # will display -1

$c = $b cmp $a;
print "Value of c: $c\n"; # will display 1
