#! /usr/bin/perl - w
use strict;
#deklarere funksjon
sub OKbruker
{
    #sjekker at det bare er ett argument
    if(scalar @ARGV == 1)
    {
        open(PASS, "/etc/passwd");
        while(<PASS>)
        {
            chomp;
            #s�ker etter argumentet i starten av hver linje i fila, etterfulgt av et kolon. om den finner det, slutter den � s�ke, og returnerer true
            if($_ =~ /^($ARGV[0]):/){
                return "true\n";
                last;
            }
        }
        return "false\n";
        close PASS;
    }
}
print &OKbruker("aylar");
