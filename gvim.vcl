# Voice commands for gvim


Edit vim RC		= {Esc} ":e ~\.vimrc" {Enter};
reload			= {Esc} ":source \$MYVIMRC" {Enter};


substitute line	= {Esc} S;
normal mode 	= {ESC};

Undo that		= {Esc} u;
undo that 1..99 times	= {Esc} Repeat($1, u);


save file 	= {ESC} :w {Enter};


Split window				= {Ctrl+w} s;
split window (vertically | vertical) 	= {Ctrl+w} v;
window left				= {Ctrl+w} h;
window right				= {Ctrl+w} l;
window up				= {Ctrl+w} k;
window down				= {Ctrl+w} j;
next window				= {Ctrl+w} w;



Change line			= {Esc} C;
Change word			= {Esc} cw;

Surround 

Till <key>		= {Esc} t $1;

Search <_anything>	= {Esc} / $1;

window close = {ESC}{Ctrl+w} c;

insert = {ESC} i;

destroy line = {Esc} dd;
destroy word = {Esc} dw;
# Defining these here allows using in command sequences
include keys.vch;

.rb:
	class <_anything>	= Ruby.classify($1);
	New method <_anything>	= Ruby.to_method($1);
	variable <_anything>	= Ruby.to_method($1); 

	Directory		= Dir;
	change directory	= chdir;

.vcl | .vch:
	Control  	= Ctrl;
	wait 0..1000 	= "Wait(" $1 ")";
	wait for window = "WaitForWindow(" ")" {Left};
	char <key>	= $1;

	#Range 0..1000 to 0..1000 = $1 \.. $2;

	Insert             <key> = {$1       Wait(0) }; 
	Insert       <mod> <key> = {$1+$2    Wait(0) };
	Insert <mod> <mod> <key> = {$1+$2+$3 Wait(0) };
