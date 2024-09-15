
"executing external commands 

"shell name of the shell program used for external commands
set sh=/bin/zsh

"shellquote characters to enclose a shell command in 
"set shq=

"shellxquote like shellquote but  include the redirection
"set sxq=

"shellxescape characters to escape when shellxquote is 
"set sxe=\"&\|<>()@^

"shellcmdflag argument for shell to execute a command
"set shcf=/c

"shellredir used to redirect command output to a file
"set srr=>%s\ 2>&1

"shelltemp use a temp file for shell commands instead of using a pipe
"set stmp nostmp

"equalprg program use for = command
"set ep=

"formatprg program used to format lines with gq command
"set fp=

"keywordprg program used for the k command
"set kp=:help

"warn warn when using a shell command and a buffer has changes
"set warn nowarn
set warn

"errorfile name of the file that contains error messages
"set ef=errors.er

"errorformat list of formats for error messages
"set efm=%f(%l):\ %t%*\\D%n:\ %m,%f(%l\\,%c):\ %t%*\\D%n:\ %m,%f(%l)\ \\=:\ %t%*\\D%n:\ %m,%*[^\"]\"%f\"%*\\D%l:\ %m,%f(%l)\ \\=:\ %m,%*[^\ ]\ %f\ %l:\ %m,%f:%l:%c:%m,%f(%l):%m,%f:%l:%m,%f\|%l\|\ %m

"makeprg program used for the :make command
"set mp=make

"shellpipe string used to put the output of :make in the error file
"set sp=>%s\ 2>&1

"makeef name of the error file for the makeprg command
"set mef=

"grepprg program used for the :grep command
set gp=rg\ /n

"grepformat list of formats for output of grepprg
"set gfm=%f:%l:%m,%f:%l%m,%f\ \ %l%m

"makeencoding encoding of the :make and :grep output
"set menc=

"quickfixtextfunc function to display text in the quickfix window
"set qftf=


