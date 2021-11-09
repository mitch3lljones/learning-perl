#!usr/bin/perl

# Dates and Times

# Current dates and times

# localtime() function, returns 9 values
# sec - seconds of minutes from 0 to 61
# min - minutes of hours from 0 to 59
# hour - hours of day from 0 to 24
# mday - day of month from 1 to 31
# mon - month of year from 1 to 12
# year - year since 1900
# wday - days since Sunday
# yday - days since January 1st
# isdst - hours of daylight saving times

# example
@months = qw( Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec );
@days = qw(Sun Mon Tue Wed Thu Fri Sat Sun);

($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();
print "$mday $months[$mon] $days[$wday]\n";

# example in scalar context
$datestring = localtime();
print "Local date and time $datestring\n"; # will display DAY-OF-WEEK MON DAY-OF-MON HH:MM:SS YYYY

# gmttime() function, same as localtime() but returns values localized for standard Greenwich time zone
# when called in list context, $isdst is always 0
# Greenwich time zone is also known as GMT or UTC

# example of gmttime()
$datestring = gmtime();
print "GMT date and time $datestring\n";

# Formatting date and time
# calling localtime() in list format will allow you to use printf() to format
($sec,$min,$hour,$mday,$mon,$year,$wday,$yday,$isdst) = localtime();

printf("Time Format - HH:MM:SS\n");
printf("%02d:%02d:%02d", $hour, $min, $sec);

# epoch time
# use time() function to get epoch time, time is number of seconds since a date (Jan 1, 1970 in UNIX)
$epoc = time();

print "Number of seconds since Jan 1, 1970 - $epoc\n";

# formatting epoch time to date and time string
$datestring = localtime();
print "Current date and time $datestring\n";

$epoc = time();
$epoc = $epoc - 24 * 60 * 60;   # one day before of current date.

$datestring = localtime($epoc);
print "Yesterday's date and time $datestring\n";

# POSIX func strftime can be used as well
use POSIX qw(strftime);

$datestring = strftime "%a %b %e %H:%M:%S %Y", localtime;
printf("date and time - $datestring\n");

# or for GMT formatted appropriately for your locale:
$datestring = strftime "%a %b %e %H:%M:%S %Y", gmtime;
printf("date and time - $datestring\n");
