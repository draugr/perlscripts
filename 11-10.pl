#! /usr/bin/perl -w
$line = "haugerud:x:285:100:H�rek Haugerud:/iu/nexus/ud/haugerud:/bin/bash";
@arr=split(":",$line);
print "Brukeren ".$arr[0]." heter ".$arr[4]." og kj�rer ".$arr[$#arr].".\n"