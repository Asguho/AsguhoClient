#!/usr/bin/perl
use strict;
my @modrinthMods = ('fabric-api','lithium', 'c2me-fabric', 'starlight', 'lazydfu', 'debugify', 'smoothboot-fabric', 'sodium', 'ebe', 'memoryleakfix','krypton','vmp-fabric','ferrite-core','exordium','fastload', 'modmenu', 'mouse-wheelie');
my @curseforgeMods = ('litematica', 'minihud', 'tellme', 'tweakeroo', 'worldedit', 'carpet');

for(@modrinthMods){
	system("packwiz mr install $_ -y");
}

for(@curseforgeMods){
	system("packwiz cf install $_ -y");
}


