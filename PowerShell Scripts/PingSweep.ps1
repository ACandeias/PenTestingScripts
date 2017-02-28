1..255 | % {echo "10.0.2.$_";
ping -n 1 -w 100 10.0.2.$_ | Select-String ttl}