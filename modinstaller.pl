#!/usr/bin/perl
use strict;
my @modrinthMods = ('exordium', 'fabric-api','c2me-fabric','debugify','ebe','ferritecore-fabric','carpet','ImmediatelyFast','krypton','lazydfu','lithium','starlight','smoothboot-fabric','vmp-fabric', 'modmenu','reeses-sodium-options', 'mouse-wheelie','memoryleakfix','no-chat-reports', 'sodium','mixintrace', 'mixin-conflict-helper', 'notenoughcrashes', 'xaeros-minimap', 'xaeros-world-map', 'yosbr', 'multiconnect', 'sodium-extra', 'fastload', 'why-am-i-on-fire');
my @curseforgeMods = ('litematica', 'minihud', 'tellme', 'tweakeroo','item-scroller', 'worldedit');

for(@modrinthMods){
	system("packwiz mr install $_ -y");
}

for(@curseforgeMods){
	system("packwiz cf install $_ -y");
}


