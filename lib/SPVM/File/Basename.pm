package SPVM::File::Basename;

our $VERSION = "0.044";

1;

=head1 Name

SPVM::File::Basename - Parsing File Path into Directory and Base Name

=head1 Description

File::Basename class in L<SPVM> has methods to parse a file path into a directory part and a base name.

=head1 Usage

  use File::Basename;
  
  my $path = "dir/a.txt";
  
  # fileparse
  {
    my $ret = File::Basename->fileparse($path);
    
    # a.txt
    my $base_name = $ret->[0];
    
    # dir/
    my $dir_name = $ret->[1];
  }
  
  # basename
  {
    # a.txt
    my $base_name = File::Basename->basename($path);
  }

  # dirname
  {
    # dir
    my $dir_name = File::Basename->dirname($path);
  }

=head1 Class Methods

=head2 fileparse

C<static method fileparse : string[] ($path : string);>

Divides a file path into its directory part and base name and returns them as an array.

The index 0 of the returned array is a base name.

The index 1 of the returned array is a directory part.

See L<File::Basename/"fileparse"> for details.

=head2 basename

C<static method basename : string ($path : string);>

Returns the base name of the path $path.

See L<File::Basename/"basename"> for details.

=head2 dirname

C<static method dirname : string ($path : string);>

Returns the directory part of the path $path.

See L<File::Basename/"dirname"> for details.

=head1 See Also

=over 2

=item * L<File::Basename::Instance|SPVM::File::Basename::Instance>

=back

=head1 Porting

C<SPVM::File::Basename> is a Perl's L<File::Basename> porting to L<SPVM>.

=head1 Repository

L<SPVM::File::Basename - Github|https://github.com/yuki-kimoto/SPVM-File-Basename>

=head1 Author

Yuki Kimoto C<kimoto.yuki@gmail.com>

=head1 Copyright & License

Copyright (c) 2023 Yuki Kimoto

MIT License

