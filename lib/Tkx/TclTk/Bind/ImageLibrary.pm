package Tkx::TclTk::Bind::ImageLibrary;

# ##############################################################################
# # Script     : Tkx::TclTk::Bind::ImageLibrary.pm                             #
# # -------------------------------------------------------------------------- #
# # Sprache    : PERL 5                                (V)  5.8.xx  -  5.16.xx #
# # Standards  : Perl-Best-Practices                       severity 1 (brutal) #
# # -------------------------------------------------------------------------- #
# # Autoren    : Jürgen von Brietzke                                   JvBSoft #
# # Version    : 1.2.01                                            16.Jun.2013 #
# # -------------------------------------------------------------------------- #
# # Aufgabe    : Bindet die TclTk 'Img1.4.0.4' Bibliothek an Perl::Tkx         #
# # -------------------------------------------------------------------------- #
# # Pragmas    : strict, warnings                                              #
# # -------------------------------------------------------------------------- #
# # Module     : Tkx::TclTk::Bind                               Private-Module #
# # -------------------------------------------------------------------------- #
# # Copyright  : Frei unter GNU General Public License bzw. Artistic License   #
# # -------------------------------------------------------------------------- #
# # TODO       : POD - Documentation                                           #
# ##############################################################################

use strict;
use warnings;

our $VERSION = q{1.2.01};

use Tkx::TclTk::Bind qw{ &load_library };

sub BEGIN {

   my $path_to_image_library;

   my $temp_dir = load_library( 'image', 'Img1.4.0.4' );

   # --- Steuervariablen belegen -----------------------------------------------
   $path_to_image_library = File::Spec->catfile( $temp_dir, 'Img1.4.0.4' );

   # --- Image-Library in Tkx binden -------------------------------------------
   Tkx::lappend( '::auto_path', $path_to_image_library );
   Tkx::package_require('img::bmp');
   Tkx::package_require('img::gif');
   Tkx::package_require('img::ico');
   Tkx::package_require('img::jpeg');
   Tkx::package_require('img::pcx');
   Tkx::package_require('img::pixmap');
   Tkx::package_require('img::png');
   Tkx::package_require('img::ppm');
   Tkx::package_require('img::ps');
   Tkx::package_require('img::sgi');
   Tkx::package_require('img::sun');
   Tkx::package_require('img::tga');
   Tkx::package_require('img::tiff');
   Tkx::package_require('img::window');
   Tkx::package_require('img::xbm');
   Tkx::package_require('img::xpm');

} # end of sub BEGIN

# ##############################################################################
# #                                   E N D                                    #
# ##############################################################################
1;
__END__

=pod

=head1 NAME

Tkx::TclTk::Bind::ImageLibrary - Bind the Tcl/Tk B<'Img4.0.4'>-library to Tkx.
(4.0.4)

=head1 VERSION

This is version 1.2.01

=head1 SYNOPSIS

   use Tkx::TclTk::Bind::ImageLibrary;
   ...
   $mw = Tkx::widget->new(q{.});
   $mw->Tkx::wm_title('Test');
   ...
   Tkx::image_create_photo( 'image', -file => $file_path_name );
   my $label = $mw->new_label( -compound => "left",
	   -image => 'image_gif',
		-text => "Label",
	);
   ...
   Tkx::grid( $label, -column => 0, -row => 0 );
   ...
   Tkx::MainLoop();

=head1 DESCRIPTION

This modul load the B<Img4.0.4>-library in the 'User-TEMP-Directory' and
binding the library on B<Tkx>. The modul ship the iwidget library as TAR-Ball
for the OS-System B<MSWin32>, B<Linux> and B<Mac OS X>.

This modul provide support for 'ActiveState PerlApp'. You can import library as
TAR-Ball from directory B<.../lib/Tkx/TclTk/Bind/TAR/...> over 'Bound files' in
PerlApp.

When program will ending, the modul delete all files from 'User-TEMP'-Directory.

=head1 PRAGMAS

=over 3

=item strict

=item warnings

=back

=head1 MODULE

=over 3

=item Tkx::TclTk::Bind

=back

=head1 AUTHOR

Juergen von Brietzke <juergen.von.brietzke@t-online.de>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) by Juergen von Brietzke.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
