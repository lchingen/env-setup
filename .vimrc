" encoding
set encoding=utf-8
set nocompatible

" lazy redraw for faster scrolling
set lazyredraw

" Map <leader> to space
let mapleader = "\<Space>"

" Allow status bar highlight
filetype plugin on

" Syntax highlighting
syntax on
colorscheme monokai
set number
set hlsearch
hi Search ctermbg=LightYellow
hi Search ctermfg=DarkRed
hi Pmenu ctermfg=19 ctermbg=7 cterm=NONE guifg=NONE guibg=#64666d gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=24 cterm=NONE guifg=NONE guibg=#204a87 gui=NONE

" Python Syntax HL
au BufNewFile,BufRead *.py,*.rst,*.bin,
        \ set filetype=python sw=4 tabstop=4 softtabstop=4 shiftwidth=4 textwidth=80 expandtab autoindent fileformat=unix

" C++ Syntax HL
au BufNewFile,BufRead *.cpp,*.ci.*.h
        \ set filetype=cpp sw=4 tabstop=4 softtabstop=4 shiftwidth=4 textwidth=80 expandtab autoindent fileformat=unix

" Verilog/System Verilog Syntax HL
au BufNewFile,BufRead *.v,*.sv 
        \ set filetype=systemverilog sw=4 tabstop=4 softtabstop=4 shiftwidth=4 textwidth=80 expandtab autoindent fileformat=unix

" Matlab Syntax HL
au BufNewFile,BufRead *.m
        \ set filetype=matlab sw=4 tabstop=4 softtabstop=4 shiftwidth=4 textwidth=80 expandtab autoindent fileformat=unix

" Markdown Syntax HL
au BufNewFile,BufRead *.md,*.markdown,*.txt
        \ set filetype=markdown sw=4 tabstop=4 softtabstop=4 shiftwidth=4 textwidth=80 expandtab autoindent fileformat=unix

" set line boundary marker
set colorcolumn=80

" split file
set splitright

" ESC remapping (deprecated since remapped CapLock to ESC)
inoremap jj <ESC>

" Set backspace to delete
set backspace=2 

" Set insert mode backspace alias
inoremap <C-h> <BS>

" cursor movement (arrows)
nnoremap <S-RIGHT> <right><right><right><right>
nnoremap <S-LEFT> <left><left><left><left>
nnoremap <S-UP> <up><up><up><up>
nnoremap <S-DOWN> <down><down><down><down>
inoremap <S-RIGHT> <right><right><right><right>
inoremap <S-LEFT> <left><left><left><left>
inoremap <S-UP> <up><up><up><up>
inoremap <S-DOWN> <down><down><down><down>

" cursor movement(hjkl)
vnoremap <S-l> <right><right><right><right>
vnoremap <S-h> <left><left><left><left>
vnoremap <S-k> <up><up><up><up>
vnoremap <S-j> <down><down><down><down>
nnoremap <S-l> <right><right><right><right>
nnoremap <S-h> <left><left><left><left>
nnoremap <S-k> <up><up><up><up>
nnoremap <S-j> <down><down><down><down>


" accept auto-complete by using enter (deprecated with YCM)
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"

" saving
nnoremap <F8> :w<CR>:echom "Saved :)"<CR>
inoremap <F8> <Esc>:w<CR>:echom "Saved :)"<CR>
nnoremap <F9>  :q!<CR>
inoremap <F9> <ESC>:q!<CR>

" cancel highlights
nnoremap \ :noh<return>
nnoremap <F10> :set nospell<return>

" normal mode let cursor reach end of line
set virtualedit=onemore

" lazy Ctrl+v 
inoremap <C-v> <Esc><C-v>

" cool cursor line (deprecated for speed)
" set cursorline
" set cursorcolumn

" newline in normal mode
nmap <CR> o<Esc>

" ctrl-z remapping
nnoremap zz <C-z>
inoremap zz <C-z>

" ctrl-w remapping
"nnoremap ww <C-w>
"inoremap ww <C-w>

" split window navigation
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>
nnoremap <C-\> <C-w>|


" python ipdb insertion
nnoremap <F12> oimport pudb; pudb.set_trace()<ESC>0w
inoremap <F12> <ESC>oimport pudb; pudb.set_trace()<ESC>0w
"nnoremap <F12> oimport ipdb; ipdb.set_trace()<ESC>0w
"inoremap <F12> <ESC>oimport ipdb; pudb.set_trace()<ESC>0w

" vim spellcheck
nnoremap <F7> :setlocal spell spelllang=en_us<return>

" vim macro call
map <F6> 1@q

" ctags preview remapping
" map gg <C-w>]
map gg <C-]>
map bb <C-t>

" resize split windows
map <F2> <Esc>:vertical resize +10<CR>
map <F3> <Esc>:vertical resize -10<CR>

" set ctags path
set autochdir
set tags=tags;

" Pathogen
execute pathogen#infect()


" CtrlP
map mm :CtrlP<CR>
set wildignore+=*/tmp/*,*.so,*.swp,*.zip

" Vim status bar
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }


" Multiple-line cursor exit
"let g:multi_cursor_quit_key = 'Esc'
let g:multi_cursor_exit_from_visual_mode=1
let g:multi_cursor_exit_from_insert_mode=1

" Code folding
set foldmethod=indent
set foldlevel=99
nnoremap fd za

" You complete me settings
let identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string

"let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
"let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
let g:ycm_key_list_select_completion = ['<Tab>', '<Down>'] " tab cycling is faster
let g:ycm_key_accept_completion = '<Enter>'
let g:ycm_key_list_stop_completion = ['<ESC>', 'kj']

let g:ycm_semantic_triggers = { 'c': [ 're!\w{2}'  ]  }
let g:ycm_python_binary_path = 'python3'
let g:ycm_server_python_interpreter = 'python3'
let g:ycm_autoclose_preview_window_after_completion=1

let g:ycm_filetype_specific_completion_to_disable = {
      \ 'gitcommit': 1
\}

let g:ycm_filepath_blacklist = {
      \ 'txt': 1,
      \ 'md': 1,
\}

" Yapf formatter
map <C-Y> :call yapf#YAPF()<cr>
let g:yapf_style = "google""
autocmd BufWritePre *.py 0,$!yapf

"Show tag bar
"nmap <F8> :TagbarToggle<CR>

" NerdTree (deprecated for fuzzy search-CtrlP)
"let g:NERDTreeNodeDelimiter = "\u00a0"
"map mm :NERDTreeToggle<CR>

" jk for up/down selection for auto-complete (deprecated with YCM)
"inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
"inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))
