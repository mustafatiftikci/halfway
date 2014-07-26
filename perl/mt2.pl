#!/usr/bin/perl

#$z = "aliye";
#$q = "z";
#$p = ["z", "b", "c", ["d", "e", ["f", "i"], $$q], "k"];
#print $$p[3][2][0] . "\n";
#$p->[3][2][1] = ["z", "y"];
#print "$p->[3][3]\n";

#@d = ("ali", "veli", 1..4);
#$a = "";
#OUTER:
#foreach (@d) {
#	$i = 1;
#	while ($i < 100) {
#		unless ($i % 2) {
#			next OUTER;;
#		}
#		$a = $a . "cb ";
#		last if($i > 9);
#		$i++;
#	}
#	$a = $a . $b ;
#}
#print "$a\n" ;	

#$y = 4 ; $x = 4 ;
#$s1 = sub { local $x ; $x = 5 ; print "$x $y\n" ; &s2 } ;
#&$s1 ;  @_ = ("veli") ; &s2 ;
#sub s2 { print "$y $x @_[0]\n" ; }

#print ">";
#while(<>){
#	$_ =~ s/([a-z])/\$\1/g;
#	$val = print eval $_ if ($_ !~ /=/);
#	eval $val ;
#	print ">";
#}

print ">";
while(<>){
	$_ =~ s/([a-z])/\$\1/g;
	$val = $_ . ";" if ($_ =~ /=/);
	eval $val . "print " . $_ . ";" if($_ !~ /=/);
	print ">";
}
