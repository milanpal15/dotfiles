
"language specific 

"isfname specifies the characters in a file name
"set isf=@,48-57,/,\\,.,-,_,+,,,#,$,%,{,},[,],:@-@,!,~,=

"insident specifies the characters in an identifier set
"isi=@,48-57,_,128-167,224-235

"iskeyword specifies the characters in a keyword
"set isk=@,48-57,_,192-255

"isprint specifies  printable characters
"set isp=@,~-255

"quoteescape specifies escape characters in a string
"set qe=\\

"rightleft display the buffer right to left 
"set norl rl

"rightleftcmd when to edit the command line right to left
"set rlc=search

"revins insert chars backwards
"sete nori ri

"allowrevins allow ctrl-_ in insert and commandline mode to toggle revins
"set noari ari

"aleph the ascii code for the first letter of the hebrew alphabet 
"set al=224

"hkmap use hebrew keyboard mapping 
"set nohk hk

"hkmapp use phonetic hebrew keyboard mapping
"set nohkp hkp

"arabic prepare for editing arabic text
"set noarab arab

"arabicshape perform shaping of arabic chars
"set arshape noarshape

"termbidi terminal will perform bidi handling 
"set tbidi notbidi

"keymap name of a keyboard mapping
"set kmp=

"langmap list of chars that are translated in normal mode
"set lmap=

"langremap apply langmap to mapped chars
"set lrm nolrm

"iminsert	in Insert mode: 1: use :lmap; 2: use IM; 0: neither
""	(local to window)
" 	set imi=0

"imstyle	input method style, 0: on-the-spot, 1: over-the-spot
" 	set imst=0

"imsearch	entering a search pattern: 1: use :lmap; 2: use IM; 0: neither
"	(local to window)
" 	set ims=-1


