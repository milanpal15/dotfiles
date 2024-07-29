noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

noremap <silent> <Leader>F :Files<CR>
noremap <silent> <Leader>f :Rg<CR>


"remap jj to Escape
inoremap <silent> jj <Esc> <CR>

" Nerd tree
noremap <Leader>b :NERDTreeToggle<CR>

" Edit the vimrc file
nmap <silent> <Leader>evs :e ~/.vim/config/settings.vim<CR>
nmap <silent> <Leader>evk :e ~/.vim/config/keymappings.vim<CR>
nmap <silent> <Leader>sv :so ~/.vimrc<CR>

" Make horizontal scrolling easier
" nmap <silent> <C-o> 10zl
" nmap <silent> <C-i> 10zh
