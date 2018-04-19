#!/usr/bin/perl

use LWP::UserAgent;

open ( SITES, "<domains.txt" ) ||
  die "Cannot open domains.txt: $!\n";

my $ua = LWP::UserAgent->new;
$ua->agent("Perl-libwww");
$ua->requests_redirectable(undef);

my $nua = LWP::UserAgent->new;
$nua->agent("Perl-libwww");

foreach my $site (<SITES>)  {
  chomp $site;

  my $req = HTTP::Request->new( GET => 'http://' . $site );
  my $res = $ua->request( $req );

  if ($res->is_redirect) {
    my $target = $res->header('Location');
    if ( $target =~ m!https://$site! ) {
      print "$site forwards to $target... skipping...\n";
    }
    else {
      print "ERROR: $site forwards to $target.\n";
    }
    next;
  }

  $res = $nua->request( $req );
  my $unsec = $res->content;

  $req = HTTP::Request->new( GET => 'https://' . $site );
  $res = $nua->request( $req );

  my $sec = $res->content;

  print "$site ";

  if ( length( $unsec ) eq length( $sec ) ) {
    print "matches http and https\n";
  }
  else {
    print "ERROR: " . length( $unsec ) . " vs " . length( $sec ) . "\n";
  }

}

exit 0;
