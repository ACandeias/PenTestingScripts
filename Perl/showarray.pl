#!/usr/bin/perl

@shows = ("Show 1",
			"Show 2",
			"Show 3",
			"Show 4",
			"Show 5",
			"Show 6",
			"Show 7");
			
			
#define network
$network = "TWiT";

#Pick a number
$selected = 3;

print "Subscribe to $shows[$selected], a fine $network show!\n";

print "Subscribe to \"$shows[$selected]\", a fine $network show!\n";

print "Subscribe to \" " , $shows[$selected] , "\" , a fine $network show!\n";

print 'Subscribe to "$shows[$selected]", a fine $network show!\n';


exit;
			