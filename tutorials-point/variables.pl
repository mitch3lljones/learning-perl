#!usr/bin/perl

=begin comment
String behaviors with single and double quotes

The scalar data type is used ('$' before identifier)
=cut

# Case of interpolation
$str = "Welcome to \ntutorialspoint.com!";
print "$str\n";

# Case of non-interpolation
$str = 'Welcome to \ntutorialspoint.com!';
print "$str\n";

# Only 'w' will become uppercase ('\u' is used)
$str = "\uwelcome to tutorialspoint.com!";
print "$str\n";

# whole line will become uppercase ('\U' is used)
$str = "\UWelcome to tutorialspoint.com!";
print "$str\n";

# a portion of the line will become uppercase ('\U' followed by '\E')
$str = "Welcome to \Ututorialspoint\E.com!";
print "$str\n";

# add backslashes to non alpha-numeric chars including spaces ('\Q' is used)
$str = "\QWelcome to tutorialspoint's family";
print "$str\n";

=begin comment
Creating variables
=cut

# Scalar variables, use '$'

$age = 25;		# integer
$name = "John Paul";	# string
$salary = 1445.50;	# floating point

print "\nScalar Variables\n\n";
print "Age = $age\n";
print "Name = $name\n";
print "Salary = $salary\n";

# Array Variables, use '@'

@ages = (25, 30, 40);
@names = ("John Paul", "Lisa", "Kumar");

print "\nArray Variables\n\n";
print "\$ages[0] = $ages[0]\n";
print "\$ages[1] = $ages[1]\n";
print "\$ages[2] = $ages[2]\n";
print "\$names[0] = $names[0]\n";
print "\$names[1] = $names[1]\n";
print "\$names[2] = $names[2]\n";

# Hash Variables, use '%'

%data = ('John Paul', 45, 'Lisa', 30, 'Kumar', 40);

print "\$data{'John Paul} = $data{'John Paul'}\n";
print "\$data{'Lisa'} = $data{'Lisa'}\n";
print "\$data{'Kumar'} = $data{'Kumar'}\n";

# Variable context

@names = ('John Paul', 'Lisa', 'Kumar');

@copy = @names;
$size = @names;

print "Given names are: @copy\n";
print "Number of names are: $size\n";

# Numeric scalars

$integer = 200;
$negative = -300;
$floating = 200.340;
$bigfloat = -1.2E-23;

# 377 octal, same as 255 decimal
$octal = 0377;

# FF hex, also 255 decimal
$hexa = 0xff;

print "integer = $integer\n";
print "negative = $negative\n";
print "floating = $floating\n";
print "bigfloat = $bigfloat\n";
print "octal = $octal\n";
print "hexa = $hexa\n";

# String scalars

$var = "This is string scalar!";
$quote = 'I m inside single quote - $var';
$double = "This is inside single quote - $var";

$escape = "This example of escape -\tHello, World!";

print "var = $var\n";
print "quote = $quote\n";
print "double = $double\n";
print "escape = $escape\n";

# Scalar operations

$str = "hello" . "world";       # Concatenates strings.
$num = 5 + 10;                  # adds two numbers.
$mul = 4 * 5;                   # multiplies two numbers.
$mix = $str . $num;             # concatenates string and number.

print "str = $str\n";
print "num = $num\n";
print "mul = $mul\n";
print "mix = $mix\n";

# Multiline strings

$string = 'This is
a multiline
string';

print "$string\n";

print <<EOF; # here document syntax
This is
a multiline
string
EOF

# V-strings
# parsed as a string starting with 'v' seperated by '.' with each value being the character code

$smile  = v9786;
$foo    = v102.111.111;
$martin = v77.97.114.116.105.110;

print "smile = $smile\n";
print "foo = $foo\n";
print "martin = $martin\n";

# Special literals
# __FILE__ represents the current filename
# __LINE__ represents the current line number
# __PACKAGE__ represents the package name at that point in the program

print "File name ". __FILE__ . "\n";
print "Line Number " . __LINE__ ."\n";
print "Package " . __PACKAGE__ ."\n";

# they can not be interpolated
print "__FILE__ __LINE__ __PACKAGE__\n";

# Arrays

# Array creation
@array = (1, 2, 'Hello');
@array = qw/This is an array/; # returns a list of strings seperated by delimiter (white space)

@days = qw/Monday
Tuesday
Wednesday
Thursday
Friday
Saturday
Sunday/; # using qw to popluate an array shwoing it can be done on different lines

# can also be done with each value individaully rather than qw
# $array[0] = 'Monday';
# ...
# $array[6] = 'Sunday';

# Accessing array elements

@days = qw/Mon Tue Wed Thu Fri Sat Sun/;

print "$days[0]\n";
print "$days[1]\n";
print "$days[2]\n";
print "$days[6]\n";
print "$days[-1]\n";
print "$days[-7]\n";

# Sequential number arrays
# double dot '..' is the range operator

@var_10 = (1..10);
@var_20 = (10..20);
@var_abc = (a..z);

print "@var_10\n";   # Prints number from 1 to 10
print "@var_20\n";   # Prints number from 10 to 20
print "@var_abc\n";  # Prints number from a to z

# Array size
# convert array to scalar
# value will always be physical size of array, not the number of valid elements

@array = (1,2,3);
print "Size: ", scalar @array, "\n"; 

@array = (1,2,3);
$array[50] = 4;

$size = @array;
$max_index = $#array;

# only 4 elements in array, but is 51 elements long (indeces 0-50) and has a high index of 50
print "Size:  $size\n";
print "Max Index: $max_index\n";

# Adding and Removing array elements
# push/pop adds/removes one element from end of array
# unshift/shift adds/removes one element from beginning of array

# create a simple array
@coins = ("Quarter","Dime","Nickel");
print "1. \@coins  = @coins\n";

# add one element at the end of the array
push(@coins, "Penny");
print "2. \@coins  = @coins\n";

# add one element at the beginning of the array
unshift(@coins, "Dollar");
print "3. \@coins  = @coins\n";

# remove one element from the last of the array.
pop(@coins);
print "4. \@coins  = @coins\n";

# remove one element from the beginning of the array.
shift(@coins);
print "5. \@coins  = @coins\n";

# Slicing array elements
@days = qw/Mon Tue Wed Thur Fri Sat Sun/;

@weekdays = @days[3,4,5];

print "@weekdays\n";

@weekdays = @days[3..5];

print "@weekdays\n";

# Replacing array elements
@nums = (1..20);
print "Before - @nums\n";

# splice takes an array, and at the specified offset,
# with the specified length, adds the values in the 
# last item list at the specified offset
splice(@nums, 5, 5, 21..25);

print "After - @nums\n";

# define strings for split
$var_strings = "Rain-Drops-On-Roses-And-Whiskers-On-Kittens";
$var_names = "Larry,David,Roger,Ken,Michael,Tom";

@strings = split('-', $var_strings);
@names = split(',', $var_names);

print "$strings[3]\n" # will print Roses
print "$names[4]\n" # will print Michael

# Transform arrays to strings
$var_strings = "Rain-Drops-On-Roses-And-Whiskers-On-Kittens";
$var_names = "Larry,David,Roger,Ken,Michael,Tom";

@strings = split('-', $var_strings);
@names = split(',', $var_names);

$string1 = join('-', @strings);
$string2 = join(',', @names);

print "$string1\n";
print "$string2\n";

# Sort arrays
# sort function will sort each element by ASCII numeric standards
@foods = qw(pizza steak chicken burgers);
print "Before - @foods\n";

@foods = sort(@foods);
print "After - @foods\n";

# $[ special variable
# scalar containing first index of array
@foods = qw(pizza steak chicken burgers);
print "Before - @foods\n";

# reset first index of all arrays to 1 instead of 0
$[ = 1;

print "Food at\@foods[1]: $foods[1]\n";
print "Food at\@foods[2]: $foods[2]\n";

# Merging arrays
# embedded arrays become part of main array
@numbers = (1,3,(4,5,6));
print "numbers = @numbers\n";

@odd = (1,3,5);
@even = (2,4,6);

@numbers = (@odd, @even);
print "numbers = @numbers\n";

# selecting elements from lists
# extracting single element
$var = (5,4,3,2,1)[4];

print "Value of var = $var\n";

# extracting slice
@list = (5,4,3,2,1)[1..3];

print "Value of list = @list\n";

# Hashes
#
# made using %
%data = ('John Paul', 45, 'Lisa', 30, 'Kumar', 40);

print "\$data{'John Paul'} = $data{'John Paul'}\n";
print "\$data{'Lisa'} = $data{'Lisa'}\n";
print "\$data{'Kumar'} = $data{'Kumar'}\n";

# hashes can be created 2 ways
# item by item basis
$data{'John Paul'} = 45;
$data{'Lisa'} = 30;
$data{'Kumar'} = 40;

# or by a list
# basic method
%data = ('John Paul', 45, 'Lisa', 30, 'Kumar', 40);

# using => alias
%data = ('John Paul' => 45, 'Lisa' => 30, 'Kumar' => 40);

# or with keys prefixied by '-'
%data = (-JohnPaul => 45, -Lisa => 30, -Kumar => 40);

# no spaces can be used in the '-' format and values are accesed by:
$val1 = %data{-JohnPaul}
$val2 = %data{-Lisa}

# accessing hash elements
%data = ('John Paul' => 45, 'Lisa' => 30, 'Kumar' => 40);

print "$data{'John Paul'}\n"; # will display 45
print "$data{'Lisa'}\n"; # will display 30
print "$data{'Kumar'}\n"; # will display 40

# extracting slices
%data = (-JohnPaul => 45, -Lisa => 30, -Kumar => 40);

@array = @data{-JohnPaul, -Lisa};

print "Array : @array\n";

# extracting hash keys and values
# getting the keys using keys %HASH
%data = ('John Paul' => 45, 'Lisa' => 30, 'Kumar' => 40);

@names = keys %data;

print "$names[0]\n"; # will display John Paul
print "$names[1]\n"; # will display Lisa
print "$names[2]\n"; # will display Kumar

# getting the values using values %HASH
%data = ('John Paul' => 45, 'Lisa' => 30, 'Kumar' => 40);

@ages = values %data;

print "$ages[0]\n"; # will display 45
print "$ages[1]\n"; # will display 30
print "$ages[2]\n"; # will display 40

# checking if a key exists
%data = ('John Paul' => 45, 'Lisa' => 30, 'Kumar' => 40);

if( exists($data{'Lisa'} ) ) {
   print "Lisa is $data{'Lisa'} years old\n";
} else {
   print "I don't know age of Lisa\n";
}

# getting size of has
# size can be found by using scalar context on either keys or values of hash
%data = ('John Paul' => 45, 'Lisa' => 30, 'Kumar' => 40);

@keys = keys %data;
$size = @keys;
print "1 - Hash size:  is $size\n";

@values = values %data;
$size = @values;
print "2 - Hash size:  is $size\n";

# adding and removing elements from hash
%data = ('John Paul' => 45, 'Lisa' => 30, 'Kumar' => 40);
@keys = keys %data;
$size = @keys;
print "1 - Hash size:  is $size\n";

# adding an element to the hash;
$data{'Ali'} = 55;
@keys = keys %data;
$size = @keys;
print "2 - Hash size:  is $size\n";

# delete the same element from the hash;
# to delete an element, the delete keyword must be used
delete $data{'Ali'};
@keys = keys %data;
$size = @keys;
print "3 - Hash size:  is $size\n";
