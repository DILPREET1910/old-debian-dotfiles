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

" SOME BEAUTIFUL INSIGHTS
" 1) vim terminal cannot remap backspace
" you can remap in other gui based apps with <Bs>

" move lines with ctrl-j and ctrl-k
nnoremap <c-j> :m .+1<CR>==
nnoremap <c-k> :m .-2<CR>==
inoremap <c-j> <Esc>:m .+1<CR>==gi
inoremap <c-k> <Esc>:m .-2<CR>==gi
vnoremap <c-j> :m '>+1<CR>gv=gv
vnoremap <c-k> :m '<-2<CR>gv=gv but on terminal it simply does not work
