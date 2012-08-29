package DotParser;

use strict;
use warnings;

use Parse::RecDescent;

$DotParser::VERSION = '0.1';

$::RD_AUTOSTUB = 1;

my $grammar = q {
   graph: ('graph' | 'digraph') ID '{' statement(s? /;/) '}' { return { name => $item{ID}, statements => $item{statement1} } }
   ID: /\S+/
};

sub parse {
   my $text = shift;

   my $parser = Parse::RecDescent->new($grammar) or die "Bad grammar!";

   my $graph = $parser->graph($text);
   die "Bad input!" unless defined $graph;

   return $graph;
}

1;
