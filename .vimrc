" encoding
set encoding=utf-8

" syntax highlighting
"let python_highlight_all=1
syntax on
colorscheme monokai
set number
set hlsearch
hi Search ctermbg=LightYellow
hi Search ctermfg=DarkRed
hi Pmenu ctermfg=19 ctermbg=7 cterm=NONE guifg=NONE guibg=#64666d gui=NONE
hi PmenuSel ctermfg=NONE ctermbg=24 cterm=NONE guifg=NONE guibg=#204a87 gui=NONE

au BufNewFile,BufRead *.py,*.cpp,*.h,*.rst
        \ set sw=4 tabstop=4 softtabstop=4 shiftwidth=4 textwidth=150 expandtab autoindent fileformat=unix

au BufNewFile,BufRead *.v,*.sv 
        \ set filetype=systemverilog sw=4 tabstop=4 softtabstop=4 shiftwidth=4 textwidth=150 expandtab autoindent fileformat=unix

" split file
set splitright

" cursor movement
nnoremap <S-RIGHT> <right><right><right><right>
nnoremap <S-LEFT> <left><left><left><left>
nnoremap <S-UP> <up><up><up><up>
nnoremap <S-DOWN> <down><down><down><down>
inoremap <S-RIGHT> <right><right><right><right>
inoremap <S-LEFT> <left><left><left><left>
inoremap <S-UP> <up><up><up><up>
inoremap <S-DOWN> <down><down><down><down>

" saving
nnoremap <C-s> :w<CR>:echom "Saved :)"<CR>
inoremap <C-s> <Esc>:w<CR>:echom "Saved :)"<CR>
nnoremap <C-q> :q!<CR>
inoremap <C-q> <Esc>:q!<CR>

" cancel highlight
nnoremap \ :noh<return>

" normal mode let cursor reach end of line
set virtualedit=onemore

map bb <C-o>
inoremap qw <Esc>
inoremap wq <Esc>
vnoremap wq <Esc>
vnoremap qw <Esc>

inoremap <C-v> <Esc><C-v>

set cursorline
set cursorcolumn
