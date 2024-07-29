" set leader key
let mapleader=" "

" Imp options
" set nocompatible
set nocp

" settings to make backspace work properly
set backspace=indent,eol,start

" syntax highlighting
syntax on


" line number settings
" set line number
set number


" search options moving options and patterns

" tell if when moving left should wrap to next line and same for rightc
" b for left s for right
set ww=b,s

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

"path list of directories used for file searching
" set pa=..,..

" cd without argument goes to home directory
" set cdh

" list of directory names used for cd
" set cd=..,..,

" change directory of file in buffer
" set acd

" search commands wrap around the end when reaches end of file start searching
" from top
set ws
  
" incremently match the search
set incsearch
 
" instead of using / anything like * or $ o + can be used in search patterns
" set magic

" regex engine to be used
" set re=0

" search settings to ignore case when searching and use smartcase to not
" ignore case when capital letters used
set ignorecase 
set smartcase
   
" case map what method to use for changing case of letters
" set cmp=internal,keepascii

" maximum amount of memory to be used for search in kbyte
" set mmp=1000

" enable search highlighting
set hlsearch

" when changing a word show $ to show upto where being changed
set cpoptions=ces$
 

" tabwidth or text length after which vim wraps

" tag options
" show full tag
set sft

" displaying text options scroll options
" numer of lines to scroll with ctrl-u and ctrl-d
set scr=5

" number of lines to show around cursor
" set so=0

" wrap long lines
set wrap

" wrap lines as linebreak
set nolbr

" preserve indent in wrapped txt
set bri

"chars that can cause line break
" set brk=\ \

" char to put before wrapped text line 
set sbr=~

" number of chars to scroll sideways or colums to scroll horizontally
" set ss=0

" number of columns to keep on left and right of cursor
" set siso=0

" command line height adjust
set ch=1

" set column width
" set co=80

" number of lines to scroll with ctrl-f and ctrl-b
set window=24

" don't redraw screen while executing macros
" set lazydraw
       
" key press delay settings in Milliseconds
" set timeoutlen=500
     
" show end of the line 
" set list

" number of columns used for line number
" set nuw=4
     

" syntax hilghligting and spelling options
" background colour brightness
set bg=dark

" set filetype
" set ft=

" highlight cursor column
" set nocuc

" highlight cursor line 
" set nocul

" which area cursor line highlights
" set culopt=both

" highlight spell mistakes
" set spell

" spell checking file
" set spf=


"multiple window options
" status line options and command line options
" set status line as you like it 
" set stl=

" tell vim to always show status line even for single window
set laststatus=2
  
" when adding or closing windows make them of equal size
" set ea

" in which dir ea works hor or ver
" set ead=both

" minimal lines used for win height
" set wh=1

" window width
" set wiw=20

" minimall win height
" set wmh=1

" minimal width
" set wmw=1

" window fix width
" set wfw

" for height
" set wfh

" help window height
" set hh=20
 
" when changing buffer save first error should not show up mean buffer is
" allowed to go in background
set hidden
     
" useopen or split to use when jumping buffer
" set swb=

" how to split new window
" for vertical
" set sb 

" for horizontal
" set spr

" size of terminal window
" set tws=

" termwindowkey which preseeds vim commands to terminal window
" set twk=

" termwinscroll for number of lines to keep
" set twsl=10000


" multiple tab pages options
" show tab pAGES line
" set stal=0

" max tab pages
" set tpm=10

" custom tab pages line
" set tal=

" custom tab label for gui
" set gtl=

" custom tab page for tooltip
" set gtt=


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

" show tittle
" set title

" title len
" set titlelen=20

" set icon
" set iconc


" mouse options
"mouse movement in vim
set mouse=a
 
" hide mouse while typing
set mousehide
 
" allow mouse scroll
" set scf
    
" right button is used for extent popup or popup_setpos
" set mousem=popup


" gui options
" font to be  used
" set  gfn=

" pixels space between chars
" set lsp=1


" messages and info options
" show current command in lower right corner location specified by showcmdloc
set showcmd

" where to show showcmd
" set sloc=last

" show current mode
set showmode

" show current location
set ru

" ruler format change
" set ruf=

" ring a bell when command fails
" set eb

" do not irng bell for these reasong
" set belloff=

 " visual bell settings beeping sound
set vb

" prefered language for finding help
set hlg=En


" text selection options
" how selecting text behaves old, inclusive, exclusive
" set sel=

" select mode starts mouse, key, cmd
" set slm=
 
" clipboard use unnamed to use * register and autoselect to put in clipboard
" set cb


" editing text
" max number of changes that  can be undone
set ul=1000

" use undofle to store undo hist
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


" getting rid of sill chars
" default values are eob:~,fold:-,vert:|,msgsep:‾
" eob for end of line fold for fols vert for vertical window split and msgep
" for message separator line 
" set fillchars=vert:\|,fold:,eob:~,msgsep:‾
set fillchars=""
 

" keep history upto
" set history=100

" when page scrolls keep the cursor these many lines away from top and bottom
" set scrolloff=8


" make command line completion better
set wildmenu

" including paths
" set path+=


" set gui options
set guioptions=acg

" These commands open folds means when in insert mode open folds or when
" searching something or  undoing and so on
set foldopen=block,insert,jump,mark,percent,quickfix,search,tag,undo

" where should completion commands look for completions
" default here . means current buffer w is buffers in other windows b means
" all buffers u means unloaded buffers t means tags 
" set complete=.,w,b,u,t

" Add the unnamed register to the clipboard
" set clipboard+=unnamed

" Automatically read a file that has changed on disk
set autoread

" command to be used for grep command in vim
set grepprg=rg\ -nH\ $*

" Types of files to ignore when autocompleting things
set wildignore+=*.o,*.class,*.git,*.svn

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

" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') |
    \ execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif

" enable hardmode by default
autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

