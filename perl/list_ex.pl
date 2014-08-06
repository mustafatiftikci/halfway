#!usr/bin/perl

#to take log of program to understand
#what is wrong throughly
##use diagnostics;

#or just see warnings
use warnings;


#to be able to use say subroutine
use 5.010;
#to be able to understand wide characters
use utf8;

#chomp removes trailing new line char..
##	in this case every entry will be 
##	recieved as a element so returning int,
##	which is the count of removed char,
##	will gives us number of elements...

#both initilization and subroutine ( chomp ) call
#can be made in single line.
$nl_char = chomp (@arr = <STDIN>);

#shift and unshift examples...
$temp = shift @arr ;
# qw is the subroutine for shorthand creation of lists
## created and pushed list is (&, 3.33333333)
unshift (@arr, (qw ! & lte !, $temp, 10/3));

# in array or expr , from this OFFSET , for this LENGTH , insert this LIST
splice (@arr, 1, 1, (1..3));

#swap
##	logic that makes this swap possible, 
##	is perl copies variable in new locations
##	does the requested job and then place them
##	back as a result...

#list initilization
#accessing element in an array
($arr[0], $arr[1]) = ($arr[1], $arr[0]);

# '#' char for last element of an array 
$arr[$#arr + 1] = 'last-element';

#push and pop example
$lastelement = pop @arr;
push @arr, '(!)_is_it?';

#say is similar to print but adds "\n" to the end
say "$lastelement $arr[$#arr]\n";

#sort	SUBROUTINE (if not given, sort to create lexicographic way) <=>
# 	then ARRAY to be sorted
@sorted_arr = sort { $a <=> $b } @arr;

#foreach example, loops for every element
#and puts them in scalar $element
foreach $element (@arr){
	#private and persistant variable example..
	##used in a block, cannot be accessed from outside (private)
	### to use only private variables use keyword "my"
	##value of variable will be persist and will be initialize once (persistant)
	state $count = 0;

	#gt is > , lt is <
	if ($element gt 0 && $element lt 9){
		$count++;
		say "$element is a number, count of numbers is $count";
	};
}

while ( my($index, $value) = each @arr){
	#local variable initialization with keyword "my"
	##multiple variable initialization and each keyword
	say "$index : $value";
}

print "\n@{arr} --", $nl_char, "user input count\n";
print "@sorted_arr --sorted version\n";

@reversed = reverse @sorted_arr;
print "@reversed --reversed version\n"
