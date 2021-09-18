#!usr/bin/perl
use strict;
use warnings;

print "hi Mitchell\n";

=begin comment
This is all part of a multiline comment.
You can use as many lines as you like
These comments will be ignred by the
compiler until the next =cut is encountered.
=cut

=begin comment
How PERL interprets spacing
=cut

print			 "hi Mitchell\n";
print "Hi,
	Mitchell\n";

print 'Hi, Mitchell\n';

print "\n\n";

=begin comment
Single vs Double quotes
=cut

$a = 10;
print "Value of a = $a\n";
print 'Value of a = $a\n';

=begin comment
HERE document in PERL (for storing or printing multiline text)
=cut

my $var = <<"EOF";

This is the syntax for here document and it will continue
until it encounters a EOF in the first line.
This is case of double quote so variable value will be
interpolated. For example value of a = $a
EOF
print "$var\n";

my $var = <<'EOF';
This is case of single quote so variable value will not be
interpolated. For example value of a = $a
EOF
print "$var\n";

=begin comment
Escaping Characters (use \)
=cut

my $result = "This is \"number\"";
print "$result\n";
print "\$result\n";

=begin comment
Perl variable name starts with a '$', '@', or a '%' followed by
zero or more letters, underscores and digits

Punctuation characters are not allwed within identifiers (no '$', '@',
or '%' as well as '.' inside variable names)

Perl is case sensitive ($Kylo and $kylo are two different identifiers)
=cut
