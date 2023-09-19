#!/usr/bin/perl
use strict;
my @performance = (
    "More Culling",
    "ImmediatelyFast",
    "Cloth Config API",
    "Sodium",
    "Entity Culling",
    "Enhanced Block Entities",
    "Indium",
    "Fabric API",
    "Concurrent Chunk Management Engine (Fabric)",
    "Lithium",
    "ModernFix",
    "No Chat Reports",
    "FerriteCore",
    "ThreadTweak",
    "Very Many Players (Fabric)"
);
my @modrinthMods = ('carpet', 'modmenu','reeses-sodium-options', 'mouse-wheelie','no-chat-reports', 'mixintrace', 'mixin-conflict-helper', 'xaeros-minimap', 'xaeros-world-map', 'yosbr', 'multiconnect', 'sodium-extra', 'why-am-i-on-fire');
my @curseforgeMods = ('litematica', 'minihud', 'tellme', 'tweakeroo','item-scroller', 'worldedit');
##'notenoughcrashes', 

#let elements = document.getElementsByClassName("project-title");
#let names = [];
#for (let name of elements) {
#    names.push(name.innerText)
#}
#names

for((@modrinthMods, @performance)){
	system("packwiz mr install $_ -y");
}

for(@curseforgeMods){
	system("packwiz cf install $_ -y");
}


