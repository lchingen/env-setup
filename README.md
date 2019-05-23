# Alex's Environment Setup for Ubuntu 16.04
```console

# Clone repository
>> git clone https://github.com/lchingen/env-setup

# Install dependencies (if not already installed)
>> sudo apt-get install terminator
>> sudo apt-get install vim

# Install virtual environment (optional)
>> sudo apt-get install python3-pip
>> sudo pip3 install virtualenv

# Copy repository contents to root
>> cp -a <root-to-repo>/env-setup/* ~/

# Clone vim bundles
>> cd ~/.vim/bundle
>> git clone https://github.com/scrooloose/nerdtree
>> git clone https://github.com/craigemery/vim-autotag
>> git clone https://github.com/octol/vim-cpp-enhanced-highlight

# GoogleKeyboard Pinyin input (optional)
>> sudo apt-get install fcitx fcitx-googlepinyin im-config
>> im-config
>> # select icitx
>> # restart system

```
