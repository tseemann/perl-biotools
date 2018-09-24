#!/usr/bin/env perl
use 5.14.0;
use strict;
use FindBin;
use lib "$FindBin::RealBin/../perl5";
use Biotool::Getopt;
use Data::Dumper;

sub main {
  #print STDERR "$0 :: main(@_)\n";  
  my $opt = Biotool::Getopt->getopt( 
  {
    name => 'biotool',
    version => '0.0.1',
    desc => 'Helps do bio stuff easier and quicker',
  },
  {
    indir => { type=>'idir', default=>'/tmp' },   
    dbdir => { type=>'idir', need=>1 },   
    infile => { type=>'ifile', need=>1 },
    outdir => { type=>'dir', },
    outfile => { type=>'file', },
    myint => { type=>'int', default=>42, need=>1 },
    myfloat => { type=>'float', default=>'3.14' },   
    mybool => { type=>'bool', default=>0 },   
    myinc => { type=>'counter', default=>0 },   
  });
  print Dumper($opt);
}

exit main(@ARGV);
