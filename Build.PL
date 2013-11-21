
use strict;
use warnings;

use Module::Build 0.3601;


my %module_build_args = (
  "build_requires" => {
    "Module::Build" => "0.3601"
  },
  "configure_requires" => {
    "ExtUtils::MakeMaker" => "6.30",
    "Module::Build" => "0.3601"
  },
  "dist_abstract" => "Fast and lightweight Perl client for Riak",
  "dist_author" => [
    "Damien Krotkine <dams\@cpan.org>",
    "Tiago Peczenyj <tiago.peczenyj\@gmail.com>",
    "Ivan Kruglov <ivan.kruglov\@yahoo.com>"
  ],
  "dist_name" => "Riak-Client",
  "dist_version" => "0.11",
  "license" => "perl",
  "module_name" => "Riak::Client",
  "recommends" => {
    "JSON::XS" => 0
  },
  "recursive_test_files" => 1,
  "requires" => {
    "Carp" => 0,
    "Const::Fast" => 0,
    "Google::ProtocolBuffers" => 0,
    "JSON" => 0,
    "Moo" => 0,
    "Time::Out" => 0,
    "Type::Params" => 0,
    "Types::Standard" => 0,
    "perl" => "v5.12.0"
  },
  "script_files" => [],
  "test_requires" => {
    "File::Spec" => 0,
    "IO::Handle" => 0,
    "IPC::Open3" => 0,
    "Test::Exception" => 0,
    "Test::MockModule" => 0,
    "Test::MockObject" => 0,
    "Test::More" => 0,
    "Test::TCP" => 0
  }
);


my %fallback_build_requires = (
  "File::Spec" => 0,
  "IO::Handle" => 0,
  "IPC::Open3" => 0,
  "Module::Build" => "0.3601",
  "Test::Exception" => 0,
  "Test::MockModule" => 0,
  "Test::MockObject" => 0,
  "Test::More" => 0,
  "Test::TCP" => 0
);


unless ( eval { Module::Build->VERSION(0.4004) } ) {
  delete $module_build_args{test_requires};
  $module_build_args{build_requires} = \%fallback_build_requires;
}

my $build = Module::Build->new(%module_build_args);

$build->create_build_script;
