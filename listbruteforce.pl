    #!/usr/bin/perl
    use strict;
    
     
    my $file = $ARGV[0] or die "Need to get CSV file on the command line\n";
     
    my $sum = 0;
    open(my $data, '<', $file) or die "Could not open '$file' $!\n";
     
    while (my $line = <$data>) {
      chomp $line;
     
      

      $sum += +1;
    
  }
  print "$sum\n";