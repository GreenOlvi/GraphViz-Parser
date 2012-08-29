use strict;
use warnings;

use Test::More tests => 4;
use Test::Exception;

use Data::Dumper;

BEGIN { use_ok('DotParser'); }

require_ok('DotParser');

my $g;

dies_ok { $g = DotParser::parse('') } 'Empty string';

$g = DotParser::parse('graph G { }');
is($g->{name}, 'G', 'Empty graph');

done_testing();
