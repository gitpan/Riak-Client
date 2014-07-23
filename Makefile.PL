
use strict;
use warnings;

use 5.010;

use ExtUtils::MakeMaker 6.30;



my %WriteMakefileArgs = (
  "ABSTRACT" => "Fast and lightweight Perl client for Riak",
  "AUTHOR" => "Damien Krotkine <dams\@cpan.org>",
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
    "AnyEvent" => 0,
    "AnyEvent::Handle" => 0,
    "Carp" => 0,
    "Const::Fast" => 0,
    "Google::ProtocolBuffers" => 0,
    "IO::Socket::Timeout" => 0,
    "JSON::XS" => 0,
    "Moo" => 0,
    "Time::Out" => 0,
    "Type::Params" => 0,
    "Types::Standard" => 0
  },
  "TEST_REQUIRES" => {
    "File::Spec" => 0,
    "IO::Handle" => 0,
    "IPC::Open3" => 0,
    "Test::Differences" => 0,
    "Test::Exception" => 0,
    "Test::More" => 0
  },
  "VERSION" => "1.94",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "AnyEvent" => 0,
  "AnyEvent::Handle" => 0,
  "Carp" => 0,
  "Const::Fast" => 0,
  "File::Spec" => 0,
  "Google::ProtocolBuffers" => 0,
  "IO::Handle" => 0,
  "IO::Socket::Timeout" => 0,
  "IPC::Open3" => 0,
  "JSON::XS" => 0,
  "Module::Build" => "0.3601",
  "Moo" => 0,
  "Test::Differences" => 0,
  "Test::Exception" => 0,
  "Test::More" => 0,
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



