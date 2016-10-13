use strict;
use warnings;

my $data = do {
  open my $fh, '<', 'password.txt' or die $!;
  local $/;
  <$fh>;
};

my $count = 5;
while ($data =~ /(\S+)/g ) {
  my $word = $1;
  ++$count;
  printf "%2d: %s\n", $count, $word;
  if($count>82176)
  {

  	print "$count";
  	exit;
  }
}