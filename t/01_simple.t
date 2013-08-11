use strict;
use warnings;
use utf8;
use Test::More;
use Perl6::PVIP;

my $node = Perl6::PVIP->new->parse_string('say(1)');
isa_ok($node, 'Perl6::PVIP::Node');
is($node->type, PVIP_NODE_STATEMENTS);
note $node->as_sexp;
is($node->name, 'statements');
isa_ok($node->value, 'ARRAY');

done_testing;

