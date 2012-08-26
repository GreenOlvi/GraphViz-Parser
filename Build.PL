use strict;
use warnings;
use Module::Build;

my $build = Module::Build->new(
   module_name => 'DotParser',
   license     => 'perl',
   dist_author => 'Piotr Szulc <szulo123@gmail.com>',
   requires    => {
      'Parse::RecDescent' => '1.967009'
   },
);

$build->create_build_script();
