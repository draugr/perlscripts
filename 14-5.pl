#! /usr/bin/perl - w
#Regul�re uttrykk er nyttige i mange sammenhenger og veldig
#fleksible n�r man �nsker � skrive programmer som leter etter et spesielt
#innhold eller spesielle m�nstre i tekstfiler. Lag et regul�rt uttrykk som
#matcher alle linjer av typen $line = "Time 3 Proc 4";
use strict;
my $line = "Time 3 Proc 4"; 
my($en, $to) = ($line =~ /(\d+)/g);
print "\$en: $en\t\$to: $to\n";