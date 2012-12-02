# Voice commands for chrome

include lastpass.vcl;


# Address bar.

(Go | go to)  <_anything>	= {ctrl+l} $1 {Enter};
address [bar]			= {ctrl+l};
copy address			= {ctrl+l}{ctrl+c};
paste address			= {ctrl+l}{ctrl+v}{enter};