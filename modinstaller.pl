#!/usr/bin/perl
use strict;
my @modrinthMods = ('lithium', 'c2me-fabric', 'starlight', 'lazydfu', 'debugify', 'smoothboot-fabric', 'sodium', 'ebe', 'memoryleakfix','krypton','vmp-fabric','ferrite-core','exordium','fastload','ImmediatelyFast', 'modmenu', 'mouse-wheelie','multiconnect');
my @curseforgeMods = ('fabric-api','litematica', 'minihud', 'tellme', 'tweakeroo', 'worldedit', 'carpet','xaeros-world-map','xaeros-minimap-fair-play-edition');

for(@modrinthMods){
	system("packwiz mr install $_ -y");
}

for(@curseforgeMods){
	system("packwiz cf install $_ -y");
}


