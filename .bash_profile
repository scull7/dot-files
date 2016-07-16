PATH=$PATH:/usr/local/sbin

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

function _ssh_completion(){
    perl -ne 'print "$1 " if /^Host (.+)$/' ~/.ssh/config
}
complete -W "$(_ssh_completion)" ssh

# https://github.com/mietek/halcyon
#eval "$( HALCYON_NO_SELF_UPDATE=1 "/app/halcyon/halcyon" paths )"

# git auto completion and command prompt
. /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash
. /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWCOLORHINTS=true
GIT_PS1_SHOWUPSTREAM="verbose name git"
GIT_PS1_DESCRIBE_STYLE="branch"

PROMPT_COMMAND='__git_ps1 "\u : \W" "\\\$"'


# OPAM configuration
. /Users/scull7/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true

alias xgrep='grep -n -r --exclude-dir=node_modules --exclude-dir=.git --color=auto'
alias node-api='cd /Users/scull7/code/InfluentialPublishers/node-api'
alias node-web-client='cd /Users/scull7/code/InfluentialPublishers/node-web-client'
alias social-zombie='cd /Users/scull7/code/InfluentialPublishers/social-zombie'
alias bro-lytics='cd /Users/scull7/code/InfluentialPublishers/bro-lytics'
alias cnt='clear ; npm test'
