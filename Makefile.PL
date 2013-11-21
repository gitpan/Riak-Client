
use strict;
use warnings;

use 5.012000;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Fast and lightweight Perl client for Riak",
  "AUTHOR" => "Damien Krotkine <dams\@cpan.org>, Tiago Peczenyj <tiago.peczenyj\@gmail.com>, Ivan Kruglov <ivan.kruglov\@yahoo.com>",
  "BUILD_REQUIRES" => {
    "Module::Build" => "0.3601"
  },
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => "6.30",
    "Module::Build" => "0.3601"
  },
  "DISTNAME" => "Riak-Client",
  "EXE_FILES" => [],
  "LICENSE" => "perl",
  "NAME" => "Riak::Client",
  "PREREQ_PM" => {
    "Carp" => 0,
    "Const::Fast" => 0,
    "Google::ProtocolBuffers" => 0,
    "JSON" => 0,
    "Moo" => 0,
    "Time::Out" => 0,
    "Type::Params" => 0,
    "Types::Standard" => 0
  },
  "TEST_REQUIRES" => {
    "File::Spec" => 0,
    "IO::Handle" => 0,
    "IPC::Open3" => 0,
    "Test::Exception" => 0,
    "Test::MockModule" => 0,
    "Test::MockObject" => 0,
    "Test::More" => 0,
    "Test::TCP" => 0
  },
  "VERSION" => "0.11",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "Carp" => 0,
  "Const::Fast" => 0,
  "File::Spec" => 0,
  "Google::ProtocolBuffers" => 0,
  "IO::Handle" => 0,
  "IPC::Open3" => 0,
  "JSON" => 0,
  "Module::Build" => "0.3601",
  "Moo" => 0,
  "Test::Exception" => 0,
  "Test::MockModule" => 0,
  "Test::MockObject" => 0,
  "Test::More" => 0,
  "Test::TCP" => 0,
  "Time::Out" => 0,
  "Type::Params" => 0,
  "Types::Standard" => 0
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



