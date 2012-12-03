# Voice commands for gvim

include language_vocola.vch:
include keys.vch;


Edit vim RC		= {Esc} ":e ~\.vimrc" {Enter};
reload			= {Esc} ":source \$MYVIMRC" {Enter};


(sub | substitute) line	= {Esc} S;
normal mode 		= {ESC};

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

Line 1..999 = {Esc} :$1 {Enter};


Change line			= {Esc} C;
Change word			= {Esc} cw;


Back till <key>		= {Esc} T $1;
Till <key>		= {Esc} t $1;

Search <_anything>	= {Esc} / $1;

window close = {ESC}{Ctrl+w} c;

<surround> := ( par = "()" | bar = "||" | quote = "" );

insert 		= {ESC} i;
insert begin	= {Esc} I;
substitute	= {Esc} s;
change		= {Esc} C;
append		= {Esc} a;
append line	= {Esc} A;
open above	= {Esc} O;
open down	= {Esc} o;

destroy line = {Esc} dd;
destroy word = {Esc} dw;


Surround <surround> = $1{Left};

.rb:
	new method <_anything>	= "def " Ruby.to_method($1);
	class <_anything>	= Ruby.classify($1);
	method <_anything>	= Ruby.to_method($1);
	variable <_anything>	= Ruby.to_method($1); 

	Directory		= Dir;
	change directory	= chdir;
