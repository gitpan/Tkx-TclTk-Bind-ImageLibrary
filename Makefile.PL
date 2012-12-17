use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'Tkx::TclTk::Bind::ImageLibrary',
    VERSION_FROM      => 'lib/Tkx/TclTk/Bind/ImageLibrary.pm', # finds $VERSION
    PREREQ_PM         => { Tkx::TclTk::Bind => 0 },
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT  => 'Load and binding for Tcl/Tk Img-Library',
       AUTHOR         => 'Jürgen von Brietzke <brietzkej@(none)>') : ()),
);
