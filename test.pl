# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl test.pl'

#########################

# change 'tests => 1' to 'tests => last_test_to_print';

use Test;
BEGIN { plan tests => 1 };
use Data::Iter qw(:all);
ok(1); # If we made it this far, we're ok.

#########################

# Insert your test code below, the Test module is use()ed here so read
# its man page ( perldoc Test ) for help writing this test script.

use strict;

my @days = qw/Mon Tue Wnd Thr Fr Su So/;
	
	foreach ( iter \@days )
	{		
		printf "Day: %s [%s]\n", VALUE, counter;
	}

	foreach my $i ( iter \@days )
	{		
		printf "Day: %s [%s]\n", $i->VALUE, $i->counter;
	}

my %numbers = ( 1 => 'one', 2 => 'two', 3 => 'three', 4 => 'four' );

	foreach ( iter \%numbers )
	{	
		printf "%10s [%10s] %10d\n", key, value, counter;
	}

	foreach my $i ( iter \%numbers )
	{	
		printf "%10s [%10s] %10d\n", $i->key, $i->value, $i->counter;
	}

print "\nagain..\n\n";

	foreach ( iter \%numbers )
	{	
		printf "%10s [%10s] %10d\n", KEY, VALUE, counter;
	}

