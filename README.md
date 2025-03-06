dot-files
=========

A collection of my fancy dot files

Installation
------------
1. Install Neovim Packer Plugin Manager - https://github.com/wbthomason/packer.nvim
2. Install Rust
```sh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```
3. Install Homebrew
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```
4. Install Neovim
```sh
brew install neovim
```
5. Install Packer (Neovim Package Manager)
```sh
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
``
6. Install Rust Utilities
- bat:		`cat` replacement - https://github.com/sharkdp/bat
- du-dust:	`du` replacement - https://github.com/bootandy/dust
- exa: 		`ls` replacement - https://github.com/ogham/exa
- git-delta	Git pager / diff - https://github.com/dandavison/delta
- procs:	`ps` alternative - https://github.com/dalance/procs
- ripgrep:	`grep` alternative -https://github.com/BurntSushi/ripgrep
- starship:	Alternative Prompt - https://github.com/starship/starship
- tealdeer:	TLDR man pages - https://github.com/tealdeer-rs/tealdeer
- tokei:	code line counter - https://github.com/XAMPPRocky/tokei
- zellij:	`tmux` alternative - https://github.com/zellij-org/zellij


```sh
cargo install exa # ls replacement - https://github.com/ogham/exa  && \
cargo install bat # cat replacement - https://github.com/sharkdp/bat  && \
cargo install zellij # tmux alternative - https://github.com/zellij-org/zellij  && \
cargo install tokei # code line counter - https://github.com/XAMPPRocky/tokei  && \
cargo install procs # ps alternative - https://github.com/dalance/procs  && \
brew install cmake && \
cargo install starship 
```

### NPM Completion
For NPM command completion happiness run this command from your terminal
```bash
npm completion >> ~/.bash_profile
```

### Vim (not Neovim) Configuration
1. Install [vim-plug](https://github.com/junegunn/vim-plug)
2. issue the following command from within the cloned directory of this project:
```bash
ln -s .vim ~/.vim
ln -s .vimrc ~/.vimrc
ln -s .bash_profile ~/.bash_profile
```

Resources
---------
Web sites that I used to find plugins

* [Joyent Node Wiki](https://github.com/joyent/node/wiki/Vim-Plugins)
* [Oliver Caldwell's blog](http://oli.me.uk/2013/06/29/equipping-vim-for-javascript/)
* [Joel Hooks](http://joelhooks.com/blog/2013/04/23/5-essential-vim-plugins/)
* [Today I learned: Vim](http://tilvim.com/2013/08/21/js-autocomplete.html)

Plugins
-------
* [vim-sensible](https://github.com/tpope/vim-sensible.git)
* [vim-sleuth](https://github.com/tpope/vim-sleuth.git)
* [vim-surround](https://github.com/tpope/vim-surround.git)
* [syntastic](https://github.com/scrooloose/syntastic.git)
* [YouCompleteMe](https://github.com/Valloric/YouCompleteMe.git)
* [TernJS](https://github.com/marijnh/tern_for_vim.git)
* [node](https://github.com/moll/vim-node.git)
* [vim-javascript-syntax](https://github.com/jelera/vim-javascript-syntax.git)
* [vim-javascript](https://github.com/pangloss/vim-javascript.git)
* [vim-indent-guides](https://github.com/nathanaelkane/vim-indent-guides.git)
* [vim-coffee-script](https://github.com/tpope/vim-coffee-script.git)
* [vim-jade](https://github.com/digitaltoad/vim-jade.git)
* [vim-gitgutter](https://github.com/airblade/vim-gitgutter.git)


Node Modules
------------
[Node Debugger](https://github.com/sidorares/node-vim-debugger)
