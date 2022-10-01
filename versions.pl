#!/usr/bin/perl
use strict;

open FILE "pack.toml" || die "cant find pack.toml";
my $file=join('',<FILE>);
close FILE;

if ($file=~/minecraft = "([^"]+)"/) {
    my $mcversion = $1; 
}

print "::set-output name=zz::$mcversion";
