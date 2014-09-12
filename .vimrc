
execute pathogen#infect()
syntax on
set number
filetype plugin indent on

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
autocmd BufNewFile,BufReadPost *.coffee setl tabstop=2 expandtab
autocmd BufNewFile,BufReadPost *.js setl shiftwidth=4 expandtab
autocmd BufNewFile,BufReadPost *.js setl tabstop=4 expandtab
