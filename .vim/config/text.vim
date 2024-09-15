
"editing text

"undolevels maximum number of changes that can be undone
set ul=1000

"undofile automatically save and restore undo history
"set noudf udf
set udf

"undodir list of directories for undo files
set udir=.

"undorelod maximum number lines to save for undo on a buffer reload
set ur=1000

"modified changes have been made and not written to a file
"set nomod mod

"readonly buffer is not be written
"set noro ro
set ro

"modifiable changes to the text are possible
"set ma noma
set ma

"textwidth line length above which to break a line
"set tw=0

"wrapmargin margin from the right  in which to break a line
"set wm=0

"backspace specifies what <BS> CTRL-W etc can do in insert mode
"set bs=

"comments definition of what comment lines look like
"	(local to buffer)

" 	set com=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
"formatoptions	list of flags that tell how automatic formatting works
"	(local to buffer)
" 	set fo=tcq
"formatlistpat	pattern to recognize a numbered list
"	(local to buffer)
" 	set flp=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
"formatexpr	expression used for "gq" to format lines
"	(local to buffer)
" 	set fex=
"complete	specifies how Insert mode completion works for CTRL-N and CTRL-P
"	(local to buffer)
	set cpt=.,w,b,u,t,i

"completeopt whether to use popup menu for insert mode completion
set cot=menu,preview
"completepopup options for the insert mode completion info popup
"set cpp=
"pumheight maximum height of the popup  menu
"set ph=0
"pumwidth minimum width of the popup menu
"set pw=15
"completefunc user defined function for the Insert mode completion 
"set cfu=
"omnifunc function for filetype specific insert mode completion
"set ofu=
"dictionary list of dictionary files for keyword completion
"set dict=
"thesaurus list of thesaurus files for keyword completion
"set tsr=
"thesaurusfunc function used for thesaurus completion
"set tsrfu=
"infercase adjust case of a keyword completion match
"set noinf inf
"digraph enable entering digraphs with c1 <BS> c2
"set nodg dg
"tildeop the "~" command behaves like an operator
"set notop top
"operator func function called for the g@ operator 
"set opfunc=
"show match ehrn inserting a bracket, briefly jump to its match
"set nosm sm
"matchtime tenth of a second to show a match for showmatch
"set mat=5
"matchpairs list of pairs that match for the % command
set mps=(:),{:},[:]
"joinspaces use two spaces after '.' when joining a line
set js "nojs
"nrformats alpha octal hex bin and or unsigned number formats recognized for
"ctrl-a and ctrl-x commands
"set nf=bin,octal,hex

