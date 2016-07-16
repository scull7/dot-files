call plug#begin('~/.vim/plugged')

"http://www.panozzaj.com/blog/2015/08/28/must-have-vim-javascript-setup/

Plug 'tpope/vim-sensible'

Plug 'tpope/vim-surround'

"fugitive.vim: a Git wrapper so awesome, it should be illegal
Plug 'tpope/vim-fugitive'

"Lean & mean status/tabline for vim that's light as air.
Plug 'vim-airline/vim-airline'

"A Vim plugin which shows a git diff in the 'gutter' (sign column).
Plug 'airblade/vim-gitgutter'

"A simple, easy-to-use Vim alignment plugin.
"vigpa (visual mode)
"gaip (motion/text object)
Plug 'junegunn/vim-easy-align'

"This is a Vim plugin that provides Tern-based JavaScript editing support.
Plug 'ternjs/tern_for_vim', { 'do': 'npm install' }

Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer --racer-completer' }

Plug 'moll/vim-node', { 'for': ['javascript', 'coffee'] }


Plug 'pangloss/vim-javascript', { 'for': ['javascript'] }

"This project adds CoffeeScript support to vim.
"It covers syntax, indenting, compiling, and more.
Plug 'kchmck/vim-coffee-script'

"Syntax file for JavaScript libraries.
Plug 'othree/javascript-libraries-syntax'

Plug 'scrooloose/syntastic'

Plug 'stephpy/vim-yaml'

Plug 'ElmCast/elm-vim'

call plug#end()

syntax on
set omnifunc=syntaxcomplete#Complete
set nocp
set number
set colorcolumn=80
set guifont=PT\ Mono:h14
set cursorline
colorscheme atom-dark-256
filetype plugin on
filetype plugin indent on

highlight SignColumn ctermbg=black
highlight SignColumn guibg=black
let g:indentLine_color_term=235
let g:indentLine_enabled=0

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers=['eslint']
let g:syntastic_coffee_checkers=['coffeelint', 'coffee']
let g:used_javascript_libs='ramda,react'

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

au BufRead,BufNewFile *.es6 setfiletype js

autocmd BufNewFile,BufReadPost *.coffee setl shiftwidth=2 expandtab
autocmd BufNewFile,BufReadPost *.coffee setl tabstop=2 expandtab
autocmd BufNewFile,BufReadPost *.elm setl shiftwidth=2 expandtab
autocmd BufNewFile,BufReadPost *.elm setl tabstop=2 expandtab
autocmd BufNewFile,BufReadPost *.js setl shiftwidth=2 expandtab
autocmd BufNewFile,BufReadPost *.js setl shiftwidth=2 expandtab
autocmd BufNewFile,BufReadPost *.es6 setl tabstop=2 expandtab
autocmd BufNewFile,BufReadPost *.es6 setl tabstop=2 expandtab
autocmd BufNewFile,BufReadPost *.json setl shiftwidth=2 expandtab
autocmd BufNewFile,BufReadPost *.json setl tabstop=2 expandtab
autocmd BufNewFile,BufReadPost *.rs setl shiftwidth=4 expandtab
autocmd BufNewFile,BufReadPost *.rs setl tabstop=4 expandtab
autocmd BufNewFile,BufReadPost *.jade setl shiftwidth=2 expandtab
autocmd BufNewFile,BufReadPost *.jade setl tabstop=2 expandtab
autocmd BufNewFile,BufReadPost *.styl setl shiftwidth=2 expandtab
autocmd BufNewFile,BufReadPost *.styl setl tabstop=2 expandtab
autocmd BufNewFile,BufReadPost *.sql setl shiftwidth=2 expandtab
autocmd BufNewFile,BufReadPost *.sql setl tabstop=2 expandtab
autocmd BufNewFile,BufReadPost *.html setl shiftwidth=2 expandtab
autocmd BufNewFile,BufReadPost *.html setl tabstop=2 expandtab

autocmd User Node
  \ if &filetype == "javascript" |
  \   nmap <buffer> <C-w>f <Plug>NodeVSplitGotoFile |
  \   nmap <buffer> <C-w><C-f> <Plug>NodeVSplitGotoFile |
  \ endif

" If you prefer the Omni-Completion tip window to close when a selection is
" made, these lines close it on movement in insert mode or when leaving
" insert mode
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
" Added in 7.4
" autocmd CompleteDone * pclose
