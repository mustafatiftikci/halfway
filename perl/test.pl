#!usr/bin/perl

foreach (sort values %ENV){
	print "$_ = $ENV{$_}\n";
}
