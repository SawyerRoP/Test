use strict;
use warnings;

my $data = do {
  open my $fh, '<', 'data.txt' or die $!;
  local $/;
  <$fh>;
};

my $count = 0;
while ($data =~ /turret/g ) {
  my $word = $1;
  ++$count;
  printf "%2d: %s\n", $count, $word;
}