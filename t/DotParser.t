use strict;
use warnings;

use Test::More tests => 4;

BEGIN { use_ok('DotParser'); }

require_ok('DotParser');

my $g = DotParser::parse('');
isa_ok($g, 'HASH', 'Empty string');

$g = DotParser::parse('graph G');
is($g->{name}, 'G', 'Empty graph');

done_testing();
