# Created by newuser for 5.2
#
bindkey -v

# autoload -U promptinit; promptinit
# prompt pure

autoload -U compinit && compinit
zmodload -i zsh/complist

# My fancy command aliases
alias cnt='clear ; npm test'
alias xgrep='grep -n -r --exclude-dir=node_modules --exclude-dir=.git --color=auto'

alias demo-day='cd /Users/scull7/code/scull7/demo-day-vegas'


declare -a INFLUENTIAL_PROJECTS
INFLUENTIAL_PROJECTS=(
  'api-influencer'
  'awesomize'
  'bro-lytics'
  'bro-flow-lytics'
  'command-listener'
  'generator-influential'
  'got-couch'
  'jigawatt'
  'kuss'
  'kvasir'
  'mine-all-the-things'
  'node-api'
  'node-web-client'
  'pimp-my-sql'
  'rusty-bro-lytics'
  'social-zombie'
  'social-hoarder'
)
declare -R INFLUENTIAL_PROJECTS

for project in $INFLUENTIAL_PROJECTS; do
  alias $project="cd /Users/scull7/code/InfluentialPublishers/${project}"
done


# Rust toolchain setup.
export PATH="$HOME/.cargo/bin:$PATH"
export RUST_SRC_PATH=~/.multirust/toolchains/nightly-x86_64-apple-darwin/lib/rustlib/src/rust/src

eval "$(starship init zsh)"
