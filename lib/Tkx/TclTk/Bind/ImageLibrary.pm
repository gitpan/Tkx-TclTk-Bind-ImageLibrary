package Tkx::TclTk::Bind::ImageLibrary;

# ##############################################################################
# # Script     : Tkx::TclTk::Bind::ImageLibrary.pm                             #
# # -------------------------------------------------------------------------- #
# # Sprache    : PERL 5                                (V)  5.8.xx  -  5.16.xx #
# # Standards  : Perl-Best-Practices                       severity 1 (brutal) #
# # -------------------------------------------------------------------------- #
# # Autoren    : Jürgen von Brietzke                                   JvBSoft #
# # Version    : 1.0.00                                            17.Dez.2012 #
# # -------------------------------------------------------------------------- #
# # Aufgabe    : Bindet die TclTk 'Img1.4.0.4' Bibliothek an Perl::Tkx         #
# #              ------------------------------------------------------------- #
# #              Erstellen der Image-Bibliothek:                               #
# #              a) Download ActiveTcl 8.4.xx.x und installieren               #
# #              b) Erzeugen eines TAR-Balls 'image.tar' mit folgenden Inhalt  #
# #                 1) Verzeichnis 'Img1.4.0.4'                                #
# #              c) TAR-Ball unter '.../lib/Tkx/TclTk/Bind/TAR installieren    #
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

our $VERSION = q{1.0.00};

use Tkx::TclTk::Bind qw{ &load_library };

sub BEGIN {

   my $path_to_image_library;

   my $temp_dir = load_library('image');

   # --- Steuervariablen belegen -----------------------------------------------
   $path_to_image_library = File::Spec->catfile( $temp_dir, 'Img1.4.0.4' );

   # --- Image-Library in Tkx binden -------------------------------------------
   Tkx::lappend( '::auto_path', $path_to_image_library );

}    # end of sub BEGIN

# ##############################################################################
# #                                   E N D                                    #
# ##############################################################################
1;
__END__

=pod

=head1 NAME

Tkx::TclTk::Bind::ImageLibrary - Load and binding for 'Img'-Library (4.0.4)

=head1 VERSION

This is version 1.0.00

=head1 SYNOPSIS

   use Tkx::TclTk::Bind::ImageLibrary;
   ...
   Tkx::package_require('img::png');
	Tkx::package_require('img::jpeg');
   ...

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
