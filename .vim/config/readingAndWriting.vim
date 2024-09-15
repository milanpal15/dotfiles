
"reading and writing file 

"modeline enablel using settings from modelines when reading a file
"set ml noml

"modelineexpr allow setting expression options from a modeline
"set nomle mle

"modelines number of lines to check for modelines 
"set mls=5

"binary binary file editing
"set nobin bin

"endofline last linein file has end of line
"set eol noeol
"set noeol 

"endoffile last line in file followed by ctrl-z
"set noeof eof
"set noeof

"fixedendofline fixes missing endofline at end of text file
"set fixeol nofixeol
" set nofixeol

"bomb prepend a byte order mark to the file
"set nobomb bomb

"fileformat end of line format ods, unix, mac
"set ff=unix

"fileformats list of  file formats to look for when editing a file
"set ffs=dos,unix

"textmode obsolete, use fileformat
"set tx notx

"textauto obsolete use fileformats
"set ta nota

"write writing files is allowed
"set write nowrite

"writenbackup write a backup file before overwriting a file
"set wb nowb

"backup keep a backup after overwriting a file 
"set nobk bk

"backupskip patterns that specify for which fiels a backup is not made
"set bsk=/node_modules/**

"backupcopy whether to make a backup as a copy to rename the existing
"file
"set bkc=auto

"backupdir list of directories to put backup file in
"set bdir=~/.local/backup

"backuptext file name extension for the backup file 
"set bex=~

"autowrite automatically write a file when leaving a modified buffer
"set noaw aw

"autowriteall as autowrite but works with more commands
"set noawa awa

"writeany always write without asking for confirmation 
"set nowa wa

"autoread automatically read a file when it was modified outside of vim
"set noar ar

"patchmode keep oldest version of a file; specifies file name extension
set pm=

"fsync forcibly sync the file to disk after writing it 
"set nofs fs

"shortname use 8.3 file names
"set nosn sn

"cryptmethod encryption method for file writing: zip, blowfish or blowfish2
"set cm=blowfish2

"}}}
