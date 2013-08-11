# NAME

Perl6::PVIP - Perl5 bindings for pvip

# SYNOPSIS

    use Perl6::PVIP;

    my $pvip = Perl6::PVIP->new();
    my $node = $pvip->parse_string('say(1)');
    say $node->as_sexp();

# DESCRIPTION

Perl6::PVIP is a wrapper module for PVIP. PVIP is a parser library for Perl6 syntax.

PVIP covers 32% of perl6 syntax. Current development status is here: http://hf.64p.org/list/perl6/pvip.

__This library is BETA quality. Any interface will change without notice__.

# METHODS

- my $pvip = Perl6::PVIP->new();

    Create new instance of this module.

- my $node = $pvip->parse\_string($code: Str) : Perl6::PVIP::Node

    Parse string and generate Perl6::PVIP::Node object.

- $pvip->errstr() : Str

    Get the error message from last parsing result.

# CONSTANTS

The constants named `PVIP_NODE_*` and `PVIP_CATEGORY_*` was exported by default.

# LICENSE

Copyright (C) tokuhirom.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# SEE ALSO

PVIP repository is here: [https://github.com/tokuhirom/pvip/](https://github.com/tokuhirom/pvip/)

# AUTHOR

tokuhirom <tokuhirom@gmail.com>
