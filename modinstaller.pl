#!/usr/bin/perl
use strict;
my @modrinthMods = ('sodium','exordium');
my @curseforgeMods = ('litematica', 'minihud', 'tellme', 'tweakeroo','item-scroller', 'worldedit', 'carpet','xaeros-world-map','xaeros-minimap-fair-play-edition');
my @curseforgeModsNeededReason = ('fabric-api','c2me-fabric','debugify','enhanced-block-entities','fastload','ferritecore-fabric','ImmediatelyFast','krypton','lazydfu','lithium','starlight','smooth-boot','memoryleakfix','vmp-fabric', 'modmenu', 'mouse-wheelie','no-chat-reports','multiconnect','yosbr');

for(@modrinthMods){
	system("packwiz mr install $_ -y");
}

for(@curseforgeMods){
	system("packwiz cf install $_ -y");
}

for(@curseforgeModsNeededReason){
	system("packwiz cf install $_ -y");
}


