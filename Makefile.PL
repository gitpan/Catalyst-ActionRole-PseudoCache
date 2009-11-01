
use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  DISTNAME  => 'Catalyst-ActionRole-PseudoCache',
  NAME      => 'Catalyst::ActionRole::PseudoCache',
  AUTHOR    => "Arthur\ Axel\ \"fREW\"\ Schmidt\ \<frioux\+cpan\@gmail\.com\>",
  ABSTRACT  => "Super\ simple\ caching\ for\ Catalyst\ actions",
  VERSION   => '0.093050',
  EXE_FILES => [ qw() ],
  (eval { ExtUtils::MakeMaker->VERSION(6.31) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {
  (eval { ExtUtils::MakeMaker->VERSION(6.55_01) } ? () : (
    "Test::More" => '0.88',
    "FindBin" => '0',
    "Test::WWW::Mechanize::Catalyst" => '0',
    "Catalyst::Test" => '0',
  )),
    "parent" => '0',
    "Catalyst::Plugin::Static::Simple" => '0',
    "autodie" => '0',
    "File::Spec" => '0',
    "Catalyst::Runtime" => '5.80013',
    "Catalyst::Controller::ActionRole" => '0.12',
  },
(eval { ExtUtils::MakeMaker->VERSION(6.55_01) } ? (
  BUILD_REQUIRES    => {
    "Test::More" => '0.88',
    "FindBin" => '0',
    "Test::WWW::Mechanize::Catalyst" => '0',
    "Catalyst::Test" => '0',
  },
) : ()),
  test => {TESTS => 't/*.t'}
);

