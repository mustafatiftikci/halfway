#!usr/bin/perl

use utf8;

$nl_char = chomp ( @arr = <STDIN> ) ;
#chomp(@arr );

@arr2 = (10..20);
$temp = shift (@arr );
unshift (@arr, 10 / 3 );
#swap
($arr[0], $arr[1]) = ($arr[1], $arr[0]);

#@arr = sort { $a <=> $b } @arr;

print "@{arr}\n", $nl_char ;

