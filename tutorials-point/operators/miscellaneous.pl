#!usr/bin/perl

# Miscellaneous operators

# . (binary dot operator), concatenates two strings
$a = "abc";
$b = "xyz";
$c = $a.$b;
print "Value of c: $c\n"; # will display "abcxyz"

# x (repetition operator), returns a string with value of left operand repeated number of tiems specified by right operand
$a = ('-' x 3);
print "Value of a: $a\n"; # will display '---'

# .. (range operator), returns a list of values counted by ones from left value to right value
@a = (2..5);
print "Value of a: @a\n"; # will display 2,3,4,5

# ++ (auto increment operator), increases integer value by 1
$a = 10;
$a = $a++;
print "Value of a: $a\n"; # will display 11

# -- (auto decrement operator), decreases integer value by 1
$a = 10;
$a = $a--;
print "Value of a: $a\n"; # will display 9

# -> (arrow operator), mostly used to dereference a method or variable from an object or class name
# $obj->$a will acces $a from $obj
