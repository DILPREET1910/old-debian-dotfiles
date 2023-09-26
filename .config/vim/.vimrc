" change cursor mode for different vim modes
augroup myCmds
au!
autocmd VimEnter * silent !echo -ne "\e[2 q"
augroup END
let &t_SI = "\e[5 q"
let &t_EI = "\e[1 q"

" enables relative numbering
:set number relativenumber

" / search tweaks
:set ignorecase
:set smartcase

 " remaps the :noh command to disable the search highlighting to <\>
nnoremap \ :noh<return> 

" fast two keystrokes of j to remap to <Esc>
imap jj <Esc>

" copy to system clipborad
:set clipboard=unnamedplus

" allows mouse usage in vim
:set mouse=a
