use strict;
use warnings;
use Module::Build;

my $build = Module::Build->new(
   module_name => 'DotParser',
   license     => 'perl',
   dist_author => 'Piotr Szulc <szulo123@gmail.com>',
   dist_abstract => 'Module for parsing dot files into graph structure',
   requires    => {
      'Parse::RecDescent' => '1.967009',
      'Test::Exception'   => '0.31',
      'Test::More'        => '0.94',
   },
);

$build->create_build_script();
