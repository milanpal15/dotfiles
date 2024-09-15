"folding options 

" fold colour and colour of text in fold {{{

" fold background
hi Folded ctermbg=black

"fold foreground or text colour
highlight Folded ctermfg=white

" column fold indicator background colour
highlight FoldColumn ctermbg=black

"coloumn fold text color 
highlight FoldColumn ctermfg=white

" }}}

"foldenable uset to display all folds open
"set fen nofen

"foldlevel folds witha  level higher then this number will be closed
"set fdl=1
" set fdl=0

"foldlevelstart value for foldlevel when startin to edit a file 
"set fdls=-1

"foldcolumn width of the column used to indicate folds 
set  fdc=1

"foldtext expression used to display the text of a closed fold
set fdt=foldtext()

"foldclose set to all to close a fold when the cursor leaves it 
"set fcl=

"foldopen specifies for which commands a fold will be opened
set fdo=block,hor,mark,percent,quickfix,search,tag,undo

"foldminlines minimum number of screen lines for a fold to be closed
"set fml=5

"commentstring template for comments; used to put  the marker in
"set cmd=/*%s*/ ""returned unknown option error

"foldmethod folding type: manual, indent, expr, marker
"syntax or  diff
set fdm=marker

"foldexpr expression used when foldmethod s expr
"set fde=0

"foldignore used to ignore lines when foldmethod is indent
"set fdi=#

"foldmarker marker used when foldmethod is marker
set fmr={{{,}}}

"foldnestmax maximum fold depth for when foldmethod is indent or syntax
"set fdn=20

