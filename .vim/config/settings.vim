" set leader key
let mapleader=" "

" Imp options
" set nocompatible
set nocp

" settings to make backspace work properly
set backspace=indent,eol,start

" syntax highlighting
syntax on

"insert mode as default
"set im noim "tried didn't like it 

" line number settings
" set line number
set number
set relativenumber

syntax on

" tell if when moving left should wrap to next line and same for rightc
" b for left s for right
set ww=b,s

"path list of directories used for file searching
set pa=.

"cdhome commadn behavious
"set nocdh cdh
" cd without argument goes to home directory
set cdh

"incsearch is option which searches as you type
"set nois is
" incremently match the search
set incsearch

" search settings to ignore case when searching and use smartcase to not
" ignore case when capital letters used
"ignore case when searching 
"set noic ic
set ignorecase 

"smartcase is better option as applies ignore case only when no case is
"applied or all chars are small
"set scs noscs
set smartcase

" enable search highlighting
set hlsearch

" when changing a word show $ to show upto where being changed
set cpoptions=ces$

" tag options
" show full tag
set sft
" when completing tags in insert mode show more info
set nosft "sft

" command line height adjust
set ch=1

" set column width
" set co=110

" number of lines to scroll with ctrl-f and ctrl-b
set window=10

" syntax hilghligting and spelling options
" background colour brightness
set bg=dark

" tell vim to always show status line even for single window
set laststatus=2
 
" when changing buffer save first error should not show up mean buffer is
" allowed to go in background
set hidden

"mouse movement in vim
set mouse=a
 
" hide mouse while typing
set mousehide

" show current command in lower right corner location specified by showcmdloc
set showcmd

" show current mode
set showmode

" show current location
set ru

" max number of changes that  can be undone
 set ul=100

" use undofile to store undo hist
set udf

" undo settings
set undodir=~/.vim/undo_dir
       
" backspace behaviour in insert mode
" set bs

" tabs and indenting options
" tab and shift width
set tabstop=4
set shiftwidth=4  

" set indent of newline automatically
set ai

" smart  indenting
set si

" load plugin scripts
set lpl
 
" file type settings
filetype plugin on
filetype indent on

" allowing backspace over indent, eol and start of an insert
set backspace=2

" allow cursor to go to invalid places
" set virtualedit=all
 
" to change use of forward slash instead of backslash
" set shellslash

" when page scrolls keep the cursor these many lines away from top and bottom
set scrolloff=4

" make command line completion better
set wildmenu

" set gui options
set guioptions=acg

" These commands open folds means when in insert mode open folds or when
" searching something or  undoing and so on
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo

" where should completion commands look for completions
" default here . means current buffer w is buffers in other windows b means
" all buffers u means unloaded buffers t means tags 
set complete=.,w,b,u,t

" Add the unnamed register to the clipboard
" set clipboard+=unnamed

" Automatically read a file that has changed on disk
set autoread

" command to be used for grep command in vim
set grepprg=rg\ -nH\ $*

" Types of files to ignore when autocompleting things
set wildignore+=*.o,*.class,*.git,*.svn

" show end of the line 
"set list

" number of columns used for line number
set nuw=4

" change how backslashes are used in search (nice option need to see how it
" works)
" instead of using / anything like * or $ or + can be used in search patterns
" set magic
"change how backslashes are used in search (nice option need to see how it
"works)
set magic "nomagic


" Various characters are "wider" than normal fixed width characters, but the
" default setting of ambiwidth (single) squeezes them into "normal" width, which
" sucks.  Setting it to double makes it awesome.
" set ambiwidth=single

" to set colorscheme
" Some GUI stuff
" let g:lightTheme = 'lakesidelight'
" let g:darkTheme = 'xoria256'
" command! Light :execute ':colorscheme ' . g:lightTheme . ' | set background=light'
" command! Dark  :execute ':colorscheme ' . g:darkTheme . ' | set background=dark'

" ruler format change
" set ruf=

" size of terminal window
" set tws=

"list of directory names used for file searching
"path=../, "this is not working

" make 0 move to the first non blank char of line
" set sol
" or make ^ and 0 move to first char 
" set nosol

" what is treated as paragraph separator
" \r sets paragraphs divided by enter
" set para=\r

" setline
" section separator
" set sect=

" list of directory names used for cd
" set cd=..,..,

" change dir to file dir in buffer
" set noacd acd
" change directory of file in buffer
" set acd


" case map what method to use for changing case of letters
" set cmp=internal,keepascii

"chars that can cause line break
" set brk=\ \

" terminal options
" name of used terminal
" set term=

" alias for term
" set tty=

" key protocoal to use for which terminall
" set kpc=kitty:kitty,

" minimal number of lines to scroll
" set sj=1

" specify how cursor looks like
" set guicursor=

" show title
" set title

" title len
" set titlelen=20

" set icon
" set iconc
   
" right button is used for extent popup or popup_setpos
 set mousem=popup


" gui options
" font to be  used
" set  gfn=

" pixels space between chars
" set lsp=1


" messages and info options
" where to show showcmd
" set sloc=last

" prefered language for finding help
set hlg=En

" text selection options
" how selecting text behaves old, inclusive, exclusive
" set sel=

" select mode starts mouse, key, cmd
" set slm=
 
" clipboard use unnamed to use * register and autoselect to put in clipboard
" set cb

" folding options
" folding type
" manual, indent, expr, marker, syntax, diff
" set fdm=syntax

" foldexpr used to fold
" set fde=

" fold merker
" set fdm={{{,}}}}

" command line options
" commands history
" set hi=50

" key that triggers wildmenu
" wc=


"other options
" getting rid of sill chars
" default values are eob:~,fold:-,vert:|,msgsep:‾
" eob for end of line fold for fols vert for vertical window split and msgep
" for message separator line 
" set fillchars=vert:\|,fold:,eob:~,msgsep:‾
set fillchars=""

" Start NERDTree when Vim starts with a directory argument.
"autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif
" Exit Vim if NERDTree is the only window remaining in the only tab.
" autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif

" enable hardmode by default
" autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

