# Alex's Environment Setup for Ubuntu 16.04
Be a true engineer: use Linux, use Vim and customize them to improved your efficiency.

## Basic Package Setup
```console
# Clone repository
>> git clone https://github.com/lchingen/env-setup

# Install dependencies (if not already installed)
>> sudo apt-get install terminator
>> sudo apt-get install vim

# Install virtual environment (optional)
>> sudo apt-get install python3-pip
>> sudo pip3 install virtualenv
```

## Vim Setup
```console
# Copy repository contents to root
>> cp -a <root-to-repo>/env-setup/* ~/

# Clone pathogen and amazing Vim bundles
>> mkdir -p ~/.vim/autoload ~/.vim/bundle && \
>> curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

>> git clone https://github.com/scrooloose/nerdtree .vim/bundle/nerdtree
>> git clone https://github.com/craigemery/vim-autotag .vim/bundle/vim-auto-tag
>> git clone https://github.com/octol/vim-cpp-enhanced-highlight .vim/vim-cpp-enhanced-highlight
>> git clone https://github.com/terryma/vim-multiple-cursors .vim/vim-multiple-cursors
>> git clone https://github.com/itchyny/lightline.vim .vim/lightline.vim
>> git clone https://github.com/scrooloose/nerdcommenter .vim/nerdcommenter
```

## Input Setup
``` Console
# GoogleKeyboard Pinyin input (optional)
>> sudo apt-get install fcitx fcitx-googlepinyin im-config
>> im-config
>> # select icitx
>> # restart system
```

### Ubuntu Mobility
* Ctrl+Alt+t: open terminial (terminator)
* Super+w: expand all applications; use arrow keys to navigate
* Super+s: show all workspaces; use arrow keys to navigate
* Super+Ctrl+left: position application window in left half of the screen
* Super+Ctrl+right: position application window in right half of the screen
* Super+Ctrl+up: maxzimize application window


### Notes:
```
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
```
<Ctrl-N> select on word; <Shift-I> to edit, <c> to cut and start insert mode
<Space><cc> comment selected section
<Space><cu> umcommet selected section
