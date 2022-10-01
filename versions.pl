#!/usr/bin/perl
use strict;

open FILE "pack.toml" || die "cant find pack.toml";
my $file=join('',<FILE>);
close FILE;

my $mcversion;

if ($file=~/minecraft = "([^"]+)"/) {
    $mcversion = $1; 
}

print "::set-output name=$@[0]::$mcversion";
