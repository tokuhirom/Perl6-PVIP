package builder::MyBuilder;
use strict;
use warnings;
use utf8;

use parent qw(Module::Build);
use File::Copy;
use Config;

sub new {
    my ( $self, %args ) = @_;
    $self->SUPER::new(
        %args,
        include_dirs => [qw(pvip/src/)],
        extra_linker_flags => '-Lpvip -lpvip',
    );
}

sub ACTION_code {
    my ($self) = @_;
    {
        my $cwd = Cwd::getcwd();
        chdir 'pvip';
        $self->do_system($Config{make});
        chdir $cwd;
    }
    $self->SUPER::ACTION_code();
}

sub ACTION_clean {
    my ($self) = @_;
    {
        my $cwd = Cwd::getcwd();
        chdir 'pvip';
        $self->do_system($Config{make}, 'clean');
        chdir $cwd;
    }
}

1;

