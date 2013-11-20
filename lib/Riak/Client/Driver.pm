#
# This file is part of Riak-Client
#
# This software is copyright (c) 2013 by Damien Krotkine, Tiago Peczenyj.
#
# This is free software; you can redistribute it and/or modify it under
# the same terms as the Perl 5 programming language system itself.
#
## no critic (RequireUseStrict, RequireUseWarnings)
package Riak::Client::Driver;
{
  $Riak::Client::Driver::VERSION = '0.10';
}
## use critic

use English qw( -no_match_vars );
use Riak::Client::Connector;
use Moo;
use Types::Standard -types;

# ABSTRACT: Riak Driver, deal with the binary protocol

has socket => ( is => 'ro');
has connector => ( is => 'lazy');

sub _build_connector {
    Riak::Client::Connector->new( socket => shift()->socket );
}

sub perform_request {
    my ( $self, $request_code, $request_body ) = @_;
    $self->connector->perform_request(
      pack( 'c a*', $request_code, $request_body )
    );
}

sub read_response {
    my ($self)   = @_;
    my $response = $self->connector->read_response()
      or return { code => -1,
                  body => undef,
                  error => $ERRNO || "Socket Closed" };
    my ( $code, $body ) = unpack( 'c a*', $response );
    { code => $code, body => $body, error => undef };
}

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Riak::Client::Driver - Riak Driver, deal with the binary protocol

=head1 VERSION

version 0.10

=head1 DESCRIPTION

  Internal class

=head1 AUTHORS

=over 4

=item *

Damien Krotkine <dams@cpan.org>

=item *

Tiago Peczenyj <tiago.peczenyj@gmail.com>

=back

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2013 by Damien Krotkine, Tiago Peczenyj.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
