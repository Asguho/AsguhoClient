#!/usr/bin/perl
use strict;
my @modrinthMods = ('exordium', 'fabric-api','c2me-fabric','debugify','ebe','fastload','ferritecore-fabric','carpet','ImmediatelyFast','krypton','lazydfu','lithium','starlight','smoothboot-fabric','vmp-fabric', 'modmenu', 'mouse-wheelie','memoryleakfix','no-chat-reports','multiconnect', 'sodium','mixintrace', 'mixin-conflict-helper', 'notenoughcrashes');
my @curseforgeMods = ('litematica', 'minihud', 'tellme', 'tweakeroo','item-scroller', 'worldedit','xaeros-world-map','xaeros-minimap-fair-play-edition', 'yosbr');

for(@modrinthMods){
	system("packwiz mr install $_ -y");
}

for(@curseforgeMods){
	system("packwiz cf install $_ -y");
}


