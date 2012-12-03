# Voice commands for iexplore

Address = {Alt+d};
(Copy=c | Paste=v) (Address|URL) = {Alt+d}{Ctrl+$1};

# Tab commands.

close 2..99 tabs           	= Repeat($1, {ctrl+w});

Go (Back=Left | Forward=Right)      = {Alt+$1};
Go (Back=Left | Forward=Right) 1..9 = {Alt+$1_$2};
Go Home = {Alt+Home};
Refresh = {Alt+v}r;

New Window = {Ctrl+n};
Open Window = ButtonClick(2,1) {Down_2}{Enter};
View Source = {Alt+v}c;


search for <_anything>		= {ctrl+e} $1 {enter};


(Show|Hide|Kill) Favorites = {Ctrl+i};

Small Text = {Alt+v}xs;
