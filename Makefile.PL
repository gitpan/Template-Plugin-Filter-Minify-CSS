
use strict;
use warnings;



use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Template::Plugin::Filter::Minify::CSS',
                       'DISTNAME' => 'Template-Plugin-Filter-Minify-CSS',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.11'
                                               },
                       'AUTHOR' => 'Michael Schout <mschout@cpan.org>',
                       'BUILD_REQUIRES' => {},
                       'ABSTRACT' => 'CSS::Minifier filter for Template Toolkit',
                       'EXE_FILES' => [],
                       'VERSION' => '0.93',
                       'PREREQ_PM' => {
                                        'Template' => '2.0',
                                        'CSS::Minifier' => '0'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



