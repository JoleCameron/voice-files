include lastpass.vcl;
include firefox_mouseless_browsing.vcl; 
#include google.vcl;

# Voice commands for firefox

New e-mail message for <_anything> = $1;
 
new (window | win)		= {ctrl+n};
new tab				= {ctrl+t};

Go (backward | back )			= {alt+left};
Go (backward | back ) 2..99 [times]	= Repeat($2, {alt+left} Wait(10));
go forward				= {alt+right};

Copy address	= {Ctrl+l} {Ctrl+c};
paste address	= {Ctrl+l} {Ctrl+v} {Enter};
address bar	= {Ctrl+l};

# Find in page.

find				= {Ctrl+f};
find again 			= {ctrl+g};


# Tab commands.

Tab groups [view]		= {ctrl + shift + E};
close tab 1..99			= 0 $1 {Enter}{ctrl+w};
close tab			= {ctrl+w};
close 2..99 tabs           	= Repeat($1, {ctrl+w});
tab 1..99			= {Ctrl+0$1} {Enter};
next tab 			= {Ctrl+Tab};
previous tab			= {Ctrl+Shift+Tab};
undo [close] tab		= {Ctrl+Shift+t};
restore all tabs		= {alt + S} wait 10 R;
last tab			= {Ctrl+9};


# Search bar
close tab
search bar			= {ctrl+k};
search for <_anything>		= {ctrl+k} $1 {enter};
search in new tab for <_anything>	= {Ctrl+t} Wait(10) {ctrl+k} $1 {enter};
search add			= {ctrl+k} {right} {space};
search Gmail for <_anything>		= {Ctrl+l} Gmail.com {Enter} WaitForWindow("*Gmail*") / Wait(10) $1 {Enter};


Options				= {alt + T} Wait(10) O;
Add-ons				= {ctrl + shift + a};
downloads			= {ctrl + j};
bookmarks			= {Ctrl+Shift+b};

Library:
	new folder	= {Alt+o} Wait(0) o;

Restore previous section	= {alt + S} Wait(10) R {enter};

Gmail:
	compose = {c};
	compose in new window = {shift+c};
	search = {/} ;
	(move up | newer) 	= {k} ;
	move up 1..15		= Repeat($1, k);
	(move down | older)	= {j} ;
	move down 1..15 	= Repeat($1, j);
	next message = {n} ;
	previous message = {p} ;
	open = {o} ;
	return to list = {u} ;
	(archive|"remove star"|"remove label") = {y} ;
	select = {x} ;
	star that = {s} ;
	report spam = {!} ;
	reply = {r} ;
	reply all = {a} ;
	forward = {f} ;
	send [message] = {Tab + enter} ;
	archive and next = {y}{o} ;
	go to all mail = {g}{a} ;
	go to starred [messages] = {g}{s} ;
	go to contacts = {g}{c} ;
	go to drafts = {g}{d} ;
	go to inbox = {g}{i} ;

Remember the Milk:
	add [task]	= t;
	complete	= c;
	postpone	= p;
	due date	= d;
	repeat		= f;
	time estimate	= g;
	tags		= s;
	URL		= u;
	location	= l;
	add note	= y;
	rename		= r;
	undo		= Z;

	Move down		= j;
	move down 1..15		= Repeat($1, j);
	move-up			= k;
	move up 1..15		= Repeat($1, k);
	select all		= a;
	select none		= n;
	select item		= i;
	select down 1..15	= Repeat($1, i j);