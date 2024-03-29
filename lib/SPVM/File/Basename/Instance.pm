package SPVM::File::Basename::Instance;

1;

=head1 Name

SPVM::File::Basename::Instance - Object-Oriented File::Basename

=head1 Description

The SPVM::File::Basename::Instance class of L<SPVM> has the methods for Object-Oriented L<File::Basename|SPVM::File::Basename>.

=head1 Usage

  use File::Basename::Instance;
  
  my $fb = File::Basename::Instance->new;
  
  my $path = "dir/a.txt";
  
  # fileparse
  {
    my $ret = $fb->fileparse($path);
    
    # a.txt
    my $base_name = $ret->[0];
    
    # dir/
    my $dir_name = $ret->[1];
  }
  
  # basename
  {
    # a.txt
    my $base_name = $fb->basename($path);
  }

  # dirname
  {
    # dir
    my $dir_name = $fb->dirname($path);
  }

=head1 Class Methods

=head2 new

  static method new : File::Basename::Instance ();

=head1 Instance Methods

=head2 fileparse

  method fileparse : string[] ($path : string);

=head2 basename

  method basename : string ($path : string);

=head2 dirname

  method dirname : string ($path : string);

=head1 Well Known Child Classes

=over 2

=item L<File::Basename::Instance::Unix|SPVM::File::Basename::Instance::Unix>

=item L<File::Basename::Instance::Win32|SPVM::File::Basename::Instance::Win32>

=back

=head1 Copyright & License

Copyright (c) 2023 Yuki Kimoto

MIT License

