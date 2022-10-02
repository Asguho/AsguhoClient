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

if($ARGV[0] == 'isitnew'){
    print "::set-output name=$ARGV[0]::"+isItNew();
}

if($ARGV[0] == 'modpackversion'){
    print "::set-output name=$ARGV[0]::"+getModPackVersion();
}

if($ARGV[0] == 'mcversion'){
    print "::set-output name=$ARGV[0]::"+getMCVersion();
}

