# Voice commands for notepad

#include language_vocola.vcl:
include keys.vch;

save file = {ctrl+s};

.vcl | .vch:
	Control  	= Ctrl;
	wait 0..1000 	= "Wait(" $1 ")";
	wait for window = "WaitForWindow(" ")" {Left};
	char <key>	= $1;

	#Range 0.

	Insert             <key> = {$1       Wait(0) }; 
	Insert       <mod> <key> = {$1+$2    Wait(0) };
	Insert <mod> <mod> <key> = {$1+$2+$3 Wait(0) };