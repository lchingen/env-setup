# Alex's Environment Setup for Ubuntu 16.04
> Be a true engineer; use Linux, use Vim.
> Customize your tools to constantly improve efficiency.

## Basic Package Setup
```console
# Clone repository
>> git clone https://github.com/lchingen/env-setup

# Install dependencies (if not already installed)
>> sudo apt-get install python3-pip
>> sudo apt-get install terminator
>> sudo apt-get install vim

# Install fuzzy search (FZF)
>> git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
>> ~/.fzf/install

# Install packages
>> pip install -t requirements.txt
```

## Vim Setup
```console
# Copy repository contents to root
>> cp -a <root-to-repo>/env-setup/* ~/

# Clone pathogen and amazing Vim bundles
>> mkdir -p ~/.vim/autoload ~/.vim/bundle && \
>> curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

>> cd .vim/bundle
(deprecated) >> git clone https://github.com/scrooloose/nerdtree
>> git clone https://github.com/craigemery/vim-autotag
>> git clone https://github.com/octol/vim-cpp-enhanced-highlight
>> git clone https://github.com/terryma/vim-multiple-cursors
>> git clone https://github.com/itchyny/lightline.vim
>> git clone https://github.com/scrooloose/nerdcommenter
>> git clone https://github.com/jiangmiao/auto-pairs
>> git clone https://github.com/majutsushi/tagbar
>> git clone https://github.com/ctrlpvim/ctrlp.vim

# Install YouCompleteMe
>> git clone https://github.com/Valloric/YouCompleteMe
>> git submodule update --init --recursive
>> python3 install.py    

# Install Yapf (automatic Python formatter - Google coding style)
>> git clone https://github.com/google/yapf
>> mkdir .vim/bundle/yapf
>> cp -a yapf/plugins/autoload .vim/bundle/yapf/
>> cp -a yapf/plugins/plugin .vim/bundle/yapf/
```

## Saving Your Pinky
```console
# Remapping CapLock to ESC
>> sudo apt install gnome-tweak-tool
>> # Typing > Cap Lock key behavior > Make Caps Lock an additional ESC
```

## Input Setup
``` Console
# GoogleKeyboard Pinyin input (optional)
>> sudo apt-get install fcitx fcitx-googlepinyin im-config
>> im-config
>> # select icitx
>> # restart system
```

## Tips for Mobility in Ubuntu
* Ctrl+Alt+t: open terminial (terminator)
* Super+w: expand all applications; use arrow keys to navigate
* Super+s: show all workspaces; use arrow keys to navigate
* Super+Ctrl+left: position application window in left half of the screen
* Super+Ctrl+right: position application window in right half of the screen
* Super+Ctrl+up: maxzimize application window

## Tips for Debugging
* Python: ipdb, pudb (the support for multithreading is limited)
```python
# Use like a breakpoint
>> import ipdb; ipdb.set_trace()
>> import pudb; pudb.set_trace()
```
