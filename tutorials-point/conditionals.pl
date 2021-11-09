#!usr/bin/perl

# Perl Conditionals and Loops

# if statement
$a = 10;
# check the boolean condition using if statement
if( $a < 20 ) {
   # if condition is true then print the following
   printf "a is less than 20\n";
}
print "value of a is : $a\n";

$a = "";
# check the boolean condition using if statement
if( $a ) {
   # if condition is true then print the following
   printf "a has a true value\n";
}
print "value of a is : $a\n";

# if..else statement
$a = 100;
# check the boolean condition using if statement
if( $a < 20 ) {
   # if condition is true then print the following
   printf "a is less than 20\n";
} else { 
   # if condition is false then print the following
   printf "a is greater than 20\n";
}
print "value of a is : $a\n";

$a = "";
# check the boolean condition using if statement
if( $a ) {
   # if condition is true then print the following
   printf "a has a true value\n";
} else {
   # if condition is false then print the following
   printf "a has a false value\n";
}
print "value of a is : $a\n";

# if..elsif..else statement
$a = 100;
# check the boolean condition using if statement
if( $a  ==  20 ) {
   # if condition is true then print the following
   printf "a has a value which is 20\n";
} elsif( $a ==  30 ) {
   # if condition is true then print the following
   printf "a has a value which is 30\n";
} else {
   # if none of the above conditions is true
   printf "a has a value which is $a\n";
}

# unless statement
$a = 20;
# check the boolean condition using unless statement
unless( $a < 20 ) {
   # if condition is false then print the following
   printf "a is not less than 20\n";
}
print "value of a is : $a\n";

$a = "";
# check the boolean condition using unless statement
unless ( $a ) {
   # if condition is false then print the following
   printf "a has a false value\n";
}
print "value of a is : $a\n";

# unless..else statement
$a = 100;
# check the boolean condition using unless statement
unless( $a == 20 ) {
   # if condition is false then print the following
   printf "given condition is false\n";
} else { 
   # if condition is true then print the following
   printf "given condition is true\n";
}
print "value of a is : $a\n";

$a = "";
# check the boolean condition using unless statement
unless( $a ) {
   # if condition is false then print the following
   printf "a has a false value\n";
} else {
   # if condition is true then print the following
   printf "a has a true value\n";
}
print "value of a is : $a\n";

# unless..elsif..else statement
$a = 20;
# check the boolean condition using if statement
unless( $a  ==  30 ) {
   # if condition is false then print the following
   printf "a has a value which is not 20\n";
} elsif( $a ==  30 ) {
   # if condition is true then print the following
   printf "a has a value which is 30\n";
} else {
   # if none of the above conditions is met
   printf "a has a value which is $a\n";
}

# switch statement
# must call use Switch before using
# Switch uses Filter::Util::Call and Text::Balanced so these modules must be installed
# else clause is optional (same as default in other languages)
# case blocks with an untargeted next transfers control to statement immediately after
# case block (usually another case block)
# not every case needs a next. A switch with no next calls will not fall through
# any subsequent cases once a match is found.A

# switch with no nexts
use Switch;

$var = 10;
@array = (10, 20, 30);
%hash = ('key1' => 10, 'key2' => 20);

switch($var) {
   case 10           { print "number 100\n" }
   case "a"          { print "string a" }
   case [1..10,42]   { print "number in list" }
   case (\@array)    { print "number in list" }
   case (\%hash)     { print "entry in hash" }
   else              { print "previous case not true" }
}
# outputs number 100

# switch with next on first case
use Switch;

$var = 10;
@array = (10, 20, 30);
%hash = ('key1' => 10, 'key2' => 20);

switch($var) {
   case 10           { print "number 100\n"; next; }
   case "a"          { print "string a" }
   case [1..10,42]   { print "number in list" }
   case (\@array)    { print "number in list" }
   case (\%hash)     { print "entry in hash" }
   else              { print "previous case not true" }
}
# outputs number 100\n and number in list

# conditional operator ?
# Exp1 ? Exp2 : Exp3
# evaluates Exp1. if true, evaluates Exp2 and Exp2 becomes entire expression.
# if false, evaluates Exp3 and Exp3 becomes entire expression.
$name = "Ali";
$age = 10;

$status = ($age > 60 )? "A senior citizen" : "Not a senior citizen";

print "$name is  - $status\n";
# prints Ali is - Not a senior citizen
