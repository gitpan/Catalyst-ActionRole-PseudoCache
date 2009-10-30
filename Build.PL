
use strict;
use warnings;

use Module::Build;

my $build = Module::Build->new(
  module_name   => 'Catalyst::ActionRole::PseudoCache',
  license       => 'perl',
  dist_abstract => "Super\ simple\ caching\ for\ Catalyst\ actions",
  dist_name     => "Catalyst\-ActionRole\-PseudoCache",
  dist_author   => [
"Arthur\ Axel\ \"fREW\"\ Schmidt\ \<frioux\+cpan\@gmail\.com\>",
  ],
  requires      => {
    "parent" => '0',
    "Catalyst::Plugin::Static::Simple" => '0',
    "autodie" => '0',
    "File::Spec" => '0',
    "Catalyst::Runtime" => '5.80013',
    "Catalyst::Controller::ActionRole" => '0.12',
  },
  build_requires      => {
    "Test::More" => '0.88',
    "FindBin" => '0',
    "Test::WWW::Mechanize::Catalyst" => '0',
    "Catalyst::Test" => '0',
  },
  script_files => [ qw() ],
);

$build->create_build_script;
