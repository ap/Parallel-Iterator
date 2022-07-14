use 5.008; use strict; use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME          => 'Parallel::Iterator',
    AUTHOR        => 'Andy Armstrong <andy@hexten.net>',
    LICENSE       => 'perl',
    VERSION_FROM  => 'lib/Parallel/Iterator.pm',
    ABSTRACT_FROM => 'lib/Parallel/Iterator.pm',
    PL_FILES      => {},
    PREREQ_PM     => {
        'Test::More' => 0,
        'Storable'   => 0,
        'IO::Handle' => 0,
        'IO::Select' => 0,
        'Config'     => 0,
    },
    MIN_PERL_VERSION => '5.008',
);

sub MY::postamble { -f 'META.yml' ? return : <<'' }
create_distdir : MANIFEST
distdir        : MANIFEST
MANIFEST :
	( echo MANIFEST ; git ls-files ) | sort -f > MANIFEST

