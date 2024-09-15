
"terminal config 

" need configuration
"name of the terminal used
"set term=bash

"alias for term
"set tty=bash

"check builtin termcaps first
set tbi "notbi

"ttyfast terminal connection is fast
"set tf notf

"xtermcodes request terminal key codes when xterm is detected
"set xtermcodes noxtermcodes
set xtermcodes

"weirdinvert terminal that requires extra redrawing
"set nowiv wiv

"what keyboard protocol to use for which teminal
"set kpc=kitty:kitty,foot:kitty,wezterm:kitty,xterm:mok2

"recognize keys that start with esc in insert mode
"set ek noek

"scroll jump minimal number of lines to scrollat a time
"set sj=1

"ttyscroll maximum number of lines to use scrolling instead of redrawing
"set tsl=999

"guicursor specifies what the cursor looks like in different modes
"set gcr=n-v-c:block-Cursor/lCursor,ve:ver35-Cursor,o:hor50-Cursor,i-ci:ver25-Cursor/lCursor,r-cr:hor20-Cursor/lCursor,sm:block-Cursor-blinkwait175-blinkoff150-blinkon175

