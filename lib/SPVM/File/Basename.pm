package SPVM::File::Basename;

our $VERSION = '0.04';

1;

=head1 Name

SPVM::File::Basename - Parsing File Path into Directory and Base Name.

=head1 Description

C<SPVM::File::Basename> is the C<File::Basename> class in L<SPVM> language.

This class parses a file path into a directory and a base name.

=head1 Usage

  use File::Basename;
  
  my $path = "dir/a.txt";
  
  # fileparse
  {
    my $ret =File::Basename->fileparse($path);
    
    # a.txt
    my $base_name = $ret->[0];
    
    # dir/
    my $dir_name = $ret->[1];
  }
  
  # basename
  {
    # a.txt
    my $base_name =File::Basename->basename($path);
  }

  # dirname
  {
    # dir
    my $dir_name =File::Basename->dirname($path);
  }

=head1 Interfaces

=over 2

=item * L<File::Basename::Interface|SPVM::File::Basename::Interface>

=back

=head1 Class Methods

=head2 fileparse

  static method fileparse : string[] ($path : string);

=head2 basename

  static method basename : string ($path : string);

=head2 dirname

  static method dirname : string ($path : string);

=head1 Object Oriented Classes

C<File::Basename> is implemented using the following classes.

=over 2

=item L<File::Basename::Instance::Unix|SPVM::File::Basename::Instance::Unix>

=item L<File::Basename::Instance::Win32|SPVM::File::Basename::Instance::Win32>

=back

=head2 

=head1 See Also

=head2 File::Basename

C<SPVM::File::Basename> is a Perl's L<File::Basename> porting to L<SPVM>.
  
=head1 Repository

L<SPVM::File::Basename - Github|https://github.com/yuki-kimoto/SPVM-File-Basename>

=head1 Author

Yuki Kimoto C<kimoto.yuki@gmail.com>

=head1 Copyright & License

Copyright (c) 2023 Yuki Kimoto

MIT License

