#!/usr/bin/perl
use strict;
my @performance = (
'BadOptimizations', 'Noisium', 'Entity Culling', 'ScalableLux', 'FerriteCore', 'Concurrent Chunk Management Engine (Fabric)', 'ThreadTweak', 'Lithium', 'Fabric API', 'Very Many Players (Fabric)', 'Sodium', 'No Chat Reports', 'ImmediatelyFast', 'Cloth Config API', 'More Culling', 'ModernFix
);
'
my @modrinthMods = ('axiom', 'carpet', 'modmenu','reeses-sodium-options', 'mouse-wheelie','no-chat-reports', 'mixintrace', 'mixin-conflict-helper', 'xaeros-minimap', 'xaeros-world-map', 'yosbr', 'multiconnect', 'sodium-extra', 'why-am-i-on-fire', "peek", "brb", 'litematica', 'minihud', 'tellme', 'tweakeroo','item-scroller');
#my @curseforgeMods = ();
#'notenoughcrashes', 

#let elements = document.getElementsByClassName("project-title");
#let names = [];
#for (let name of elements) {
#    names.push(name.innerText)
#}
#names

for((@modrinthMods, @performance)){
	system("packwiz mr install $_ -y");
}

# for(@curseforgeMods){
# 	system("packwiz cf install $_ -y");
# }


