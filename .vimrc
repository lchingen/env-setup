" encoding
set encoding=utf-8

" syntax highlighting
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
        \ set filetype=python sw=4 tabstop=4 softtabstop=4 shiftwidth=4 textwidth=150 expandtab autoindent fileformat=unix

" C++ Syntax HL
au BufNewFile,BufRead *.cpp,*.ci.*.h
        \ set filetype=cpp sw=4 tabstop=4 softtabstop=4 shiftwidth=4 textwidth=150 expandtab autoindent fileformat=unix

" Verilog/System Verilog Syntax HL
au BufNewFile,BufRead *.v,*.sv 
        \ set filetype=systemverilog sw=4 tabstop=4 softtabstop=4 shiftwidth=4 textwidth=150 expandtab autoindent fileformat=unix

" Matlab Syntax HL
au BufNewFile,BufRead *.m
        \ set filetype=matlab sw=4 tabstop=4 softtabstop=4 shiftwidth=4 textwidth=150 expandtab autoindent fileformat=unix

" Markdown Syntax HL
au BufNewFile,BufRead *.md,*.markdown
        \ set filetype=markdown sw=4 tabstop=4 softtabstop=4 shiftwidth=4 textwidth=150 expandtab autoindent fileformat=unix

" split file
set splitright

" ESC remapping (deprecated since remapped CapLock to ESC)
" inoremap kj <ESC>
" vnoremap kj <ESC>

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

" jk for up/down selection for auto-complete
inoremap <expr> j ((pumvisible())?("\<C-n>"):("j"))
inoremap <expr> k ((pumvisible())?("\<C-p>"):("k"))

" accept auto-complete
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"

" saving
nnoremap <C-s> :w<CR>:echom "Saved :)"<CR>
inoremap <C-s> <Esc>:w<CR>:echom "Saved :)"<CR>
nnoremap <C-q> :q!<CR>
inoremap <C-q> <Esc>:q!<CR>

" cancel highlights
nnoremap \ :noh<return>
nnoremap \\ :set nospell<return>

" normal mode let cursor reach end of line
set virtualedit=onemore

" lazy Ctrl+v 
inoremap <C-v> <Esc><C-v>

" cool cursor line
" set cursorline
" set cursorcolumn

" ctrl-z remapping
nnoremap zz <C-z>
inoremap zz <C-z>

" ctrl-w remapping
nnoremap ww <C-w>
inoremap ww <C-w>

" python ipdb insertion
nnoremap <F12> oimport ipdb; ipdb.set_trace(context=30)<ESC>0w
inoremap <F12> <ESC>oimport ipdb; ipdb.set_trace(context=30)<ESC>0w

" vim spellcheck
nnoremap cc :setlocal spell spelllang=en_us<return>

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

" NerdTree
let g:NERDTreeNodeDelimiter = "\u00a0"
map mm :NERDTreeToggle<CR>

" Vim status bar
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

" Map <leader> to space
let mapleader = "\<Space>"
filetype plugin on

" Multiple-line cursor exit
let g:multi_cursor_quit_key = 'kj'

" Code folding
set foldmethod=indent
set foldlevel=99
nnoremap fd za

" Show tag bar
nmap <F8> :TagbarToggle<CR>

" You complete me settings
let identifiers_from_tags_files = 1 " Let YCM read tags from Ctags file
let g:ycm_seed_identifiers_with_syntax = 1 " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1 " Completion in comments
let g:ycm_complete_in_strings = 1 " Completion in string

let g:ycm_key_list_select_completion = ['<C-j>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-k>', '<Up>']
let g:ycm_key_accept_completion = 'Enter'

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
