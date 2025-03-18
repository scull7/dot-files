call plug#begin('~/.vim/plugged')

" Respect editorconfig files.
Plug 'editorconfig/editorconfig-vim'

" Language Server Installation
" https://github.com/reasonml-editor/vim-reason-plus

Plug 'reasonml-editor/vim-reason-plus'

Plug 'autozimu/LanguageClient-neovim', {
  \ 'branch': 'next'
  \ }

Plug 'w0rp/ale'

" Deoplete is required for the LanguageServer to work.
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Display function signatures
Plug 'Shougo/echodoc.vim'

" Git Plugins
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-rhubarb'

" Plugin outside ~/.vim/plugged with post-update hook.
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'jremmen/vim-ripgrep'

Plug 'sheerun/vim-polyglot'

Plug 'jparise/vim-graphql'

Plug 'ElmCast/elm-vim'

Plug 'reasonml-editor/vim-reason-plus'

Plug 'pangloss/vim-javascript'

Plug 'rust-lang/rust.vim'

" Theme stuff
Plug 'dracula/vim'
Plug 'rakr/vim-one'

call plug#end()

syntax on
filetype plugin on
set number
set colorcolumn=80
set softtabstop=0
set expandtab
set shiftwidth=2
set smarttab
set cursorline
set cursorcolumn

"Highlight the current line number when active
augroup BgHighlight
  autocmd!
  autocmd WinEnter * set cul
  autocmd WinLeave * set nocul
augroup END

" True color support for vim-one
" https://github.com/rakr/vim-one#true-color-support
if (has("nvim"))
"For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif
"For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
"Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
" < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
if (has("termguicolors"))
  set termguicolors
endif

if ($TMUX)
  set t_8b=[48;2,%lu;%lu;%lum
  set t_8f=[38;2;%lu;%lu;%lum
endif

color one
set background=dark

noremap gr :grep <cword> *<CR>
noremap Gr :grep <cword> %:p:h/*<CR>
noremap gR :grep '\b<cword>\b' *<CR>
noremap GR :grep '\b<cword>\b' %:p:h/*<CR>

noremap <C-J> <C-W><C-J>
noremap <C-K> <C-W><C-K>
noremap <C-L> <C-W><C-L>
noremap <C-H> <C-W><C-H>

autocmd CompleteDone * pclose
autocmd Filetype gitcommit spell textwidth=72

" Language Client configuration
let g:LanguageClient_serverCommands = {
 \ 'rust': [ 'rustup', 'run', 'stable', 'rls' ],
 \ 'reason': [ '/usr/local/bin/reason-language-server.exe' ],
 \ 'ocaml': [ 'ocaml-language-server', '--stdio' ],
 \ 'javascript': [ 'flow-language-server', '--stdio' ],
 \ 'javascript.jsx': ['flow-language-server', '--stdio' ],
 \ }

let g:LanguageClient_autoStart=1
let g:LanguageClient_autoStop=1

let g:ale_fixers = {
\ 'javascript': ['prettier'],
\ 'javascript.jsx': ['prettier'],
\ 'css': ['prettier'],
\ 'graphql': ['prettier'],
\ 'json': ['prettier'],
\ 'markdown': ['prettier'],
\}

noremap <silent> gd :call LanguageClient_textDocument_definition()<cr>
noremap <silent> gf :call LanguageClient_textDocument_formatting()<cr>
noremap <silent> <cr> :call LanguageClient_textDocument_hover()<cr>

let g:javascript_plugin_jsdoc =1
let g:javascript_plugin_flow = 1
let g:rustfmt_autosave = 1
let g:ale_fix_on_save = 1
" Setting this to 1 so that the plugin doesn't use the `--write-mode` option.
" The `--write-mode` option is no longer supported.
" https://github.com/rust-lang-nursery/rustfmt/issues/2832#issuecomment-403317829
let g:rustfmt_emit_files = 1

" echodoc
set cmdheight=2
let g:echodoc#enable_at_startup = 1
let g:echodoc#type = 'signature'

" FZF + Ripgrep

" https://github.com/BurntSushi/ripgrep/issues/425
set grepprg=rg\ --vimgrep\ --no-heading\ --smart-case

set rtp+=/.fzf
map <leader><tab> <plug>(fzf-maps-n)
noremap <C-p> :Files<cr>

" --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --no-ignore: Do not respect .gitignore, etc...
" --hidden: Search hidden files and folders
" --follow: Follow symlinks
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
" --color: Search color options
command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --follow --glob "!.git/*" --glob "!node_modules/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)

let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" enable autocomplete
let g:deoplete#enable_at_startup = 1
