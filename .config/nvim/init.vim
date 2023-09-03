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
" but on terminal it simply does not work
