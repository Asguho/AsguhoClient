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

}


sub isItNew(){
    
}

print "::set-output name=isitnew::"+isItNew();

print "::set-output name=modpackversion::"+getModPackVersion();

print "::set-output name=mcversion::"+getMCVersion();


