#! /usr/bin/env perl -w

=head1 NAME

garmin_simpletext_parser - Perl script to convert a Garmin simple text 
                           logfile into a CSV file for GPS Visualiser

=head1 SYNOPSIS

  garmin_simpletext_parser [options] <inputfile>
  
  where valid options are 
  	--o <fname> - force output file name
  	--help      - display this help
  	--debug     - print debug messages
  
  # Convert the file using the default outputfile
  garmin_simpletext_parser log1.txt
  
=head1 DESCRIPTION

This script is converts a logfile written in the Garmin simpletext 
format into a comma separated value file that can be used to
plot a map on GPS Visualiser.

By default the outputfile name is equal to the input filename, but the
extension is changed to 'csv'. 

If the output file exists, the output of the script is appended to the 
existing files.

Resources:
  Garmin simple text format: http://www.garmin.com/support/text_out.html
  GPS Visualiser:            http://www.gpsvisualizer.com/

=cut

use strict;
use Getopt::Long;
use Pod::Usage;

# Get paramters from command line
my $output_file;
my $help;
my $man;
my $debug;

GetOptions('o|outputfile' => \$output_file,
		   'debug'        => \$debug,
		   'help|?|h'     => \$help,
		   'man'          => \$man) or pod2usage(2);
pod2usage(1) if ($help || !$ARGV[0]);
pod2usage(-exitstatus => 0, -verbose => 2) if ($man);

my $input_file = $ARGV[0];

# Set the output filename if it was not defined
if (!$output_file) {
	$output_file = $input_file;
	# Replace the extension by '.csv'
	$output_file =~ s/\.(.)+$/\.csv/;
}

print "Opening '$input_file' for reading and '$output_file' for writing.\n" if ($debug);

open(INFILE, "<$input_file") || die ("Could not open '$input_file': $!");
open(OUTFILE, ">$output_file") || die ("Could not open '$output_file': $!");

print OUTFILE "time,lat,lon\n";

while (<INFILE>){
	if (/@(\d{12})([NS]\d{7})([EW]\d{8})/){
		my $time = $1;
		my $lat  = $2;
		my $lon  = $3;
		print "Time: $time - Lat: $lat - Lon: $lon\n" if ($debug);
		
		# Some reformatting on the time/date input
		my @time_split = unpack("(A2)*", $time);
		$time = sprintf("20%02i-%02i-%02i %02i:%02i:%02i", @time_split);
		
		# Add decimal point to lat/lon strings
		substr($lat, 5, 0) = '.';
		substr($lon, 6, 0) = '.';
		
		print OUTFILE "$time, $lat, $lon\n"; 
	}
}

close (INFILE);
close (OUTFILE);

print "Wrote '$output_file', visit http://www.gpsvisualizer.com and upload the file to plot the map.\n";

exit(0);


=head1 BUGS/LIMITATIONS

This script assumes the log was made in the year 2000 or later. It prepends '20' 
before the date generated by the GPS.

If the outputfile exists, it is overwritten.

=head1 SEE ALSO

Project website: http://electronics.lika.be/

=head1 AUTHOR

Lieven Hollevoet

=head1 COPYRIGHT

Copyright (C) 2010 by Lieven Hollevoet

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself, either Perl version 5.8.8 or,
at your option, any later version of Perl 5 you may have available.

=cut