#!usr/bin/perl

# with -keys- or -values- keywords,
# hashes could be disintegrated..
## also to extract a value,
## $<name of hash>{<key>} -> value
## perl keeps some big hashes such as
## enviroment values in example...
foreach (sort keys %ENV){
	print "$_ = $ENV{$_}\n";
}
