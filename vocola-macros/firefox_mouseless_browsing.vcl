# 
# These commands require the mouseless browsing extension.
# 
# Plug-in configuration:
# 
#   General->not execute automatically without pressing enter
#   ID-types->all modifiers = Ctrl+alt
##  Keys->Postfix key to open link in new tab = MULTIPLY (press num pad star)
#   Keys->blur active element                 = ctrl+DIVIDE 
#                                                  (press control num pad slash)
#
# Also, remove Dragon's use of MULTIPLY and DIVIDE
# 

Blur()   := {ctrl+NumKey/};
Toggle() := {NumKey.};

<pick> := (        pick = {shift}{enter} | go pick = {shift} or
          | push   pick = {shift}{ctrl+enter}    # stay but open new tab w/ link
          | tab    pick = {shift}{ctrl+shift+enter}
          | window pick = {shift}{shift+enter}
      );

<pick> 0..9           = {alt+ctrl+$2}                           $1;
<pick> 0..9 0..9      = {alt+ctrl+$2}{alt+ctrl+$3}              $1;
<pick> 0..9 0..9 0..9 = {alt+ctrl+$2}{alt+ctrl+$3}{alt+ctrl+$4} $1;


show    numbers = Blur() Toggle();
refresh numbers = Blur() Toggle() Toggle();


# 
# These commands use the built-in quick find link:
# 

       link <_anything> = Blur() "'$1" {enter};
new    link <_anything> = Blur() "'$1" {ctrl+enter};
window link <_anything> = Blur() "'$1" {shift+enter};