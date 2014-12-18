package Qudo::Driver::DBI::DBD::Pg;
use strict;
use warnings;
use Data::Dumper;

sub last_insert_id { warn Dumper $_[2]; $_[2]->{mysql_insertid} || $_[2]->{insertid} }

sub sql_for_unixtime {
    return "extract(epoch from now())::int";
}

1;
