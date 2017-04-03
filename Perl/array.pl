#!/usr/bin/perl

@C101 = ("Padre", "Snubs", "Bryan");
print "Here are the values in the array 'C101':\n";

print "$C101[0]\n";
print "$C101[1]\n";
print "$C101[2]\n";

<STDIN>;

@coding = @C101;

print "The values of 'C101' have been coppied into the array 'coding'\n\n";

print "Here are the values in the array 'coding':\n";

print "$coding[0]\n";
print "$coding[1]\n";
print "$coding[2]\n";


<STDIN>;

print "I am now changing the value of the third element in 'C101' from 'Bryan' to 'Cranky Hippo'\n";

$C101[2] = "Cranky Hippo";

print "$C101[0]\n";
print "$C101[1]\n";
print "$C101[2]\n";

print "In the meantime, the array 'coding' stays the same\n";

print "$coding[0]\n";
print "$coding[1]\n";
print "$coding[2]\n";

<STDIN>;
