package Perl6::PVIP;
use 5.008005;
use strict;
use warnings;
use parent qw(Exporter);

our $VERSION = "0.01";

use Perl6::PVIP::_consts;

use XSLoader;
XSLoader::load(__PACKAGE__, $VERSION);

sub new {
    my $class = shift;
    return bless {
    }, $class;
}

sub parse_string {
    my ($self, $code) = @_;
    return Perl6::PVIP::_parse_string($code);
}

1;
__END__

=encoding utf-8

=head1 NAME

Perl6::PVIP - It's new $module

=head1 SYNOPSIS

    use Perl6::PVIP;

    my $pvip = Perl6::PVIP->new();
    my $node = $pvip->parse_string('say(1)');
    say $node->as_sexp();

=head1 DESCRIPTION

Perl6::PVIP is ...

=head1 LICENSE

Copyright (C) tokuhirom.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

tokuhirom E<lt>tokuhirom@gmail.comE<gt>

=cut

