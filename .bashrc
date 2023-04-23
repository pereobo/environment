# Rob's bashrc.

set -o emacs

umask 0007

PS1='\h:\W'

TMP_ID=`id | awk '{ print $1 }'`

if [ $TMP_ID == "uid=0(root)" ]; then
	PS1="$PS1# "
else
	PS1="$PS1$ "
fi


# 1. Aliases.
#
# Wipe any existing aliases.

unalias -a

# Modifications of existing commands.

alias cp='cp -i'
alias dirs='dirs -v'
alias emacs='emacs -nw'
alias mv='mv -i'
alias rm='rm -i'

# New commands.

alias cx='chmod +x'
alias fddp='find . -print'
alias h='fc -l -20'
alias igrep='grep -i'
alias l1='ls -1'
alias la='ls -a'
alias ll='ls -la'
alias llrt='ls -lrta'
alias lsd='ls -al | grep "^d"'
alias wimip='curl ifconfig.me; echo'

# 2. Environment

export EDITOR=vi
export HISTCONTROL=ignoredups
export PAGER=less
export PATH=~/bin:$PATH

