#!/usr/bin/perl


use Net::RawIP;


$raw_net = new Net::RawIP({icmp =>{}});
$raw_net -> set (
			{
				ip => 
				{
					saddr => '192.168.1.1',
					daddr => '192.168.1.5',
				},
				icmp =>
				{
					type => 8,
					data => "41414141414141"
				}
			}
);
print "Starting Spoofed ICMP Traffic\n";
$raw_net -> send(1,10);

print "Completed - Press Enter\n";

<STDIN>
