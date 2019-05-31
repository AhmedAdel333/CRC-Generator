# perl crc func


use strict;
use warnings;
use diagnostics;

use feature 'say';

use Digest::CRC;

my $text = "admin";

sub CRC_method{
	my $var = @_;
	my $crc_obb = Digest::CRC->new;
	$crc_obb->add($text);
	my $crc_out = $crc_obb->hexdigest;
	say $crc_out;
}

CRC_method($text)