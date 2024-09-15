for f in glob('~/.vim/config/**.vim', 1, 1)
    exec 'source' f
endfor

"basic settings {{{

set viminfo+=

"paste mode 
"set nopaste

"key sequence to toggle paste mode
"set pt=

"set runtimepath
"set rtp=path,path2

"list of dirs for plugin packages
"set pp=path,path

"help file path
"set hf=path

"wrapping lines command
"set ww=b,s

" jump command move to first char of line 
" set sol nosol

"don't know how it works but has something to do with paras
"set para=

"list of directory names used for file searching
"path=

"ignore specific subdirs
set wildignore+=**/node_modules/**

"list of directory names used for cd
"set cd=,,

"change pwd of shell in buffer
"set ws nows

"incsearch is option which searches as you type
"set nois is

"select reg exp engine
"set re=0

"case a what method to use  to change case of letters
"set cmp=internal,keepascii

"maximum amount of memory used for pattern matching 
"set mmp=1000

"define pattern for macro defination line 
"set def=
"don't know how it works

"include pattern for include file need to see how it works 
"set inc=

"expression used to transform include line to a file name
"set inex=

"use binary searching in tags files 
"set tbs notbs 

"number of significant chars in tag name
"set tl=0

"list of file names to search for tags
"set tag=./tags,tags

"how to handle case when searching in tag files
set tc=followic

"file names in a tags file are relative to the tags file 
" set tr notr

" tag command will use tagstack
" set tgst notgst

"function to be used to perform tag searching 
" set tfu=

" command to execute cscope 
" set csprg=cscope

" using cscope for tag commands
" set cst nocst

" the order in which cscope performs search
" set csto=0 or 1

" give messages when adding a cscope database
" set nocsverb csverb

" how many components of the path to show 
" set cspc=0

" when to open quickfix window for cscope
" set csqf=

" cscope file names are relative to file 
" set nocsre csre

" }}}

"diff mode {{{

" color scheme for diff mode ""{{{

" diffadd background background and foreground colour
"highlight DiffAdd ctermbg=gray
"highlight DiffAdd ctermfg=white

" diffchange background and foreground colour
"highlight DiffChange ctermbg=lightgray
"highlight DiffChange ctermbg=white

" diffdelete background and foreground colour
"highlight DiffDelete ctermbg=cyan
"highlight DiffDelete ctermbg=white

" }}}

"set nodiff diff
"set diff

"set dip=internal,filler,closeoff

"diffexpr expression used to obtain diff file
"set dex=

"patchexpr expression used to patch a file
"set pex=

" }}}

"mapping {{{

"maxmapdepth maximum depth of mapping 
"set mmd=1000

"remap recognize mappings in mapped keys
"set remap noremap

"timeout allow timing out halfway into a  mapping
"set to noto
set to

"ttimeout allow timing out halfway into a keycode
"set nottimeout ttimeout

"timeoutlen time in msec for timeout
set tm=1000

"ttimeoutlen time in msec for ttimeout
"set ttm=-1

"}}}

"system specific {{{

"shellslash use forward slashes in file names; for unix like shells
"set nossl ssl

"completeslash specifies slash/backslash used for completion
"set csl=

"}}}

