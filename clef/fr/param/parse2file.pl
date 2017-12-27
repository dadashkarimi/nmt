use strict;
use warnings;

my $query_file;
$query_file = $ARGV[0];
my $query_trec = "$query_file.trec";
open(my $trec, '>', $query_trec) or die "Could not open file '$query_trec' $!";

open(my $fh, $query_file);

print $trec "<parameters>\n";
while (my $row = <$fh>) {
  chomp $row;
  $row =~ s/#q/<query>\n<type>indri<\/type>\n<number>/g;
  $row =~ s/=#sum/<\/number>\n<text>\n\#combine/g;
  $row =~ s/\)\;/\)\n<\/text>\n<\/query>/g;
  my @words = split /\//, $row;
  if(scalar @words==2){
   $row = "$words[1] $words[0]";
  }
  print $trec "$row\n";
}
print $trec "<\/parameters>\n";

