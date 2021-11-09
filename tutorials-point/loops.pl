#!usr/bin/perl

# Loops

# while loop
$a = 10;

# while loop execution
while( $a < 20 ) {
   printf "Value of a: $a\n";
   $a = $a + 1;
}
# prints Value of a: for values 10..19

# until loop
# loop body is skipped if expression is true
$a = 5;

# until loop execution
until( $a > 10 ) {
   printf "Value of a: $a\n";
   $a = $a + 1;
}
# prints Value of a: for values 5..10

# for loop
# declaration and initialization can be done in init block
for( $a = 10; $a < 20; $a = $a + 1 ) {
   print "value of a: $a\n";
}
# prints value of a: for values 10..19

# foreach loop
@list = (2, 20, 30, 40, 50);

# foreach loop execution
foreach $a (@list) {
   print "value of a: $a\n";
}
# prints each value in the list @list

# do..while loop
$a = 10;

# do...while loop Vexecution
do{
   printf "Value of a: $a\n";
   $a = $a + 1;
}while( $a < 20 );
# prints Value of a: for values 10..19

# nested loops

# nested for loop
# for ( init; condition; increment ) {
#    for ( init; condition; increment ) {
#       statement(s);
#    }
#    statement(s);
# }

# nested while loop
# while(condition) {
#    while(condition) {
#       statement(s);
#    }
#    statement(s);
# }

# nested do..while loop
# do{
#    statement(s);
#    do{
#       statement(s);
#    }while( condition );
# }while( condition );

# nested until loop
# until(condition) {
#    until(condition) {
#       statement(s);
#    }
#    statement(s);
# }

# nested foreach loop
# foreach $a (@listA) {
#    foreach $b (@listB) {
#       statement(s);
#    }
#    statement(s);
# }

# nested loop example
$a = 0;
$b = 0;

# outer while loop
while($a < 3) {
   $b = 0;
   # inner while loop
   while( $b < 3 ) {
      print "value of a = $a, b = $b\n";
      $b = $b + 1;
   }
   $a = $a + 1;
   print "Value of a = $a\n\n";
}

# Loop conditional statements

# next statement
# starts the next iteration of the loop
# a label can be provided to go to the next iteration of the label loop
# next inside a nested loop while go to nearest loop if label not specified
# if there is a continue block on the loop, it is always executed just before the condition is about to be evaluated.
$a = 10;
while( $a < 20 ) {
   if( $a == 15) {
      # skip the iteration.
      $a = $a + 1;
      next;
   }
   print "value of a: $a\n";
   $a = $a + 1;
}

# next with labels
$a = 0;
OUTER: while( $a < 4 ) {
   $b = 0;
   print "value of a: $a\n";
   INNER:while ( $b < 4) {
      if( $a == 2) {
         $a = $a + 1;
         # jump to outer loop
         next OUTER;
      }
      $b = $b + 1;
      print "Value of b : $b\n";
   }
   print "\n";
   $a = $a + 1;
}

# last statement
# when used, loop immediately terminates and executes next line after loop
# label can be provided like with next
# can be used inside nested loop, will be applied to nearest loop unless label specified
# if there is any continue block on the loop, then it is not executed.
$a = 10;
while( $a < 20 ) {
   if( $a == 15) {
      # terminate the loop.
      $a = $a + 1;
      last;
   }
   print "value of a: $a\n";
   $a = $a + 1;
}

# last with labels
$a = 0;
OUTER: while( $a < 4 ) {
   $b = 0;
   print "value of a: $a\n";
   INNER:while ( $b < 4) {
      if( $a == 2) {
         # terminate outer loop
         last OUTER;
      }
      $b = $b + 1;
      print "Value of b : $b\n";
   }
   print "\n";
   $a = $a + 1;
}

# continue statement
# always evaluated just before conditional is evaluated again
# can be used with while and foreach loops
# can be used with block of code, interpreted as flow control in this case

# continue with while loop
$a = 0;
while($a < 3) {
   print "Value of a = $a\n";
} continue {
   $a = $a + 1;
}

# continue with foreach loop
@list = (1, 2, 3, 4, 5);
foreach $a (@list) {
   print "Value of a = $a\n";
} continue {
   last if $a == 4;
}

# redo statement
# restarts block without evaluating conditional again
# labels can be used
# can be used inside nested loop, will be applied to nearest loop unless label specified
# if there is a continue, then it will not be executed bfore evaluating condition
while($a < 10) {
   if( $a == 5 ) {
      $a = $a + 1;
      redo;
   }
   print "Value of a = $a\n";
} continue {
   $a = $a + 1;
}
# prints Value of a = for values 0..9 excluding 5

# goto statement

# goto LABEL
# goto LABEL form jumps to the statement labeled with LABEL and resumes execution from there.

# goto EXPR
# goto EXPR form is just a generalization of goto LABEL. It expects the expression to return a label name and then jumps to that labeled statement.

# goto &NAME
# substitutes a call to the named subroutine for the currently running subroutine.

# goto example using goto LABEL
LOOP:do {
   if( $a == 15) {
      # skip the iteration.
      $a = $a + 1;
      # use goto LABEL form
      goto LOOP;
   }
   print "Value of a = $a\n";
   $a = $a + 1;
} while( $a < 20 );

# goto example using goto EXPR
# concats the values $str1 and $str2, forming a label and jumping to that label
$a = 10;
$str1 = "LO";
$str2 = "OP";

LOOP:do {
   if( $a == 15) {
      # skip the iteration.
      $a = $a + 1;
      # use goto EXPR form
      goto $str1.$str2;
   }
   print "Value of a = $a\n";
   $a = $a + 1;
} while( $a < 20 );
