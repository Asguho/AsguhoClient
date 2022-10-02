#!/usr/bin/perl
use strict;

sub getMCVersion(){
    open FILE, '<', ".minecraft/pack.toml" || die $!;
    my $file=join('',<FILE>);
    close FILE;

    if ($file=~/minecraft = "([^"]+)"/) {
        return $1; 
    }
}
sub getModPackVersion(){
    my previousversion = ARGV[1];
}


sub isItNew(){
    open FILE, '<', ".minecraft/AsguhoClient-1.0.0.mrpack" || die $!;
        my $file1=join('',<FILE>);
    close FILE;

    open FILE, '<', "AsguhoClient-1.0.0.mrpack" || die $!;
        my $file2=join('',<FILE>);
    close FILE;
    return !compare_text($file1, $file2)
}

if($ARGV[0] == 'isitnew'){
    print "::set-output name=$ARGV[0]::"+isItNew();
}

if($ARGV[0] == 'modpackversion'){
    print "::set-output name=$ARGV[0]::"+getModPackVersion();
}

if($ARGV[0] == 'mcversion'){
    print "::set-output name=$ARGV[0]::"+getMCVersion();
}


