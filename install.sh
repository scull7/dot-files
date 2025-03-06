#!/usr/bin/env bash

# Install Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Install Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install NeoVim
brew install neovim

# Install Rust Utilities
# exa: 		`ls` replacement - https://github.com/ogham/exa
# bat:		`cat` replacement - https://github.com/sharkdp/bat
# zellij:	`tmux` alternative - https://github.com/zellij-org/zellij
# tokei:	code line counter - https://github.com/XAMPPRocky/tokei
# procs:	`ps` alternative - https://github.com/dalance/procs
# ripgrep:	`grep` alternative -https://github.com/BurntSushi/ripgrep
# starship:	Alternative Prompt - https://github.com/starship/starship
# tealdeer:	TLDR man pages - https://github.com/tealdeer-rs/tealdeer

cargo install exa && \
	cargo install bat && \
	cargo install zellij && \
	cargo install tokei && \
	cargo install procs && \
	cargo install ripgrep && \
	cargo install tealdeer && \
	brew install cmake && cargo install starship


