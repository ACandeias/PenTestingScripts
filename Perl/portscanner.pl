#!/usr/bin/perl
 
# TCP Port scanner
 
use IO::Socket;
 
# flush the print buffer immediately
$| = 1;
 
# Take input from user - hostname, start port , end port
print "Enter Target/hostname : ";
 
# Need to chop off the newline character from the input
chop ($target = <stdin>);
print "Start Port : ";
chop ($start_port = <stdin>);
print "End Port : ";
chop ($end_port = <stdin>);
 
# start the scanning loop
foreach ($port = $start_port ; $port <= $end_port ; $port++) 
{
    #\r will refresh the line
    print "\rScanning port $port";
     
    #Connect to port number
    $socket = IO::Socket::INET->new(PeerAddr => $target , PeerPort => $port , Proto => 'tcp' , Timeout => 1);
     
    #Check connection
    if( $socket )
    {
        print "\r = Port $port is open.\n" ;
    }
    else
    {
        #Port is closed, nothing to print
    }
}
 
print "\n\nFinished Scanning $target\n";
 
exit (0);