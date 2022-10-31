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
    my $previousversion = $ARGV[1];

    if($previousversion =~s/\.(\d+)$//){
        return $previousversion.'.'.($1+1);
    }
}


sub isItNew(){

    my $file1;
    if (-e '.minecraft/AsguhoClient-1.0.0.mrpack') {
        open FILE, '<', ".minecraft/AsguhoClient-1.0.0.mrpack" || die $!;
            $file1=join('',<FILE>);
        close FILE;
    } else {
        print ".minecraft/AsguhoClient-1.0.0.mrpack does not exist!\n";
    }

    my $file2;
    if (-e 'AsguhoClient-1.0.0.mrpackAsguhoClient-1.0.0.mrpack') {
        open FILE, '<', "AsguhoClient-1.0.0.mrpackAsguhoClient-1.0.0.mrpack" || die $!;
            $file2=join('',<FILE>);
        close FILE;
    } else {
        print "AsguhoClient-1.0.0.mrpack does not exist!\n";
    }
# && -e '.minecraft/AsguhoClient-1.0.0.mrpack' && -e 'AsguhoClient-1.0.0.mrpackAsguhoClient-1.0.0.mrpack'
    if($file1 eq $file2){
        return 'false';
    }else {
        return 'true';
    };
}

if($ARGV[0] eq 'isitnew'){
    print '"{'+$ARGV[0]+'}={'+isItNew()+'}" >> $GITHUB_OUTPUT';
}

if($ARGV[0] eq 'modpackversion'){
    print '"{'+$ARGV[0]+'}={'+getModPackVersion()+'}" >> $GITHUB_OUTPUT';
}

if($ARGV[0] eq 'mcversion'){
    print '"{'+$ARGV[0]+'}={'+getMCVersion()+'}" >> $GITHUB_OUTPUT';
}

