colorscheme desert 
call pathogen#infect()
call pathogen#helptags()
set nocompatible      " We're running Vim, not Vi!
set nowrap
set expandtab
set shiftwidth=2
set softtabstop=2
syntax on             " Enable syntax highlighting
filetype on           " Enable filetype detection
filetype indent on    " Enable filetype-specific indenting
filetype plugin on    " Enable filetype-specific plugins
autocmd vimenter * NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeWinSize=45

" Ruby Hax {{{
" " Prawn files are includes for a pdf rendering library
" au BufNewFile,BufRead *.prawn set filetype=ruby
"
" " This is specific to rails apps, but I will not bind it to a particular
" " filetype
function! TwoSpace()
    setlocal ts=2
    setlocal sw=2
endfunction
au FileType ruby call TwoSpace()
au FileType coffee call TwoSpace()
au FileType vim call TwoSpace()
au BufNewFile,BufRead *.erb call TwoSpace()
" }}}
