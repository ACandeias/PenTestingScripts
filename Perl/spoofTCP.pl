#!/usr/bin/perl


use Net::RawIP;


$raw_net = new Net::RawIP({tcp =>{}});
$raw_net -> set (
			{
				ip => 
				{
					saddr => '192.168.1.1',
					daddr => '192.168.1.5',
				},
				  tcp => {
                            source => 3500,
                            dest   => 80,
                            psh    => 1,
                            syn    => 1,
                               },
				}
);
print "Starting Spoofed IP Traffic\n";
$raw_net -> send(1,10);

print "Completed - Press Enter\n";

<STDIN>
