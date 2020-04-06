# ~/.bashrc: executed by bash(1) for non-login shells.

# Note: PS1 and umask are already set in /etc/profile. You should not
# need this unless you want different defaults for root.
# PS1='${debian_chroot:+($debian_chroot)}\h:\w\$ '
# umask 022

# You may uncomment the following lines if you want `ls' to be colorized:
# export LS_OPTIONS='--color=auto'
# eval "`dircolors`"
# alias ls='ls $LS_OPTIONS'
# alias ll='ls $LS_OPTIONS -l'
# alias l='ls $LS_OPTIONS -lA'
#
# Some more alias to avoid making mistakes:
# alias rm='rm -i'
# alias cp='cp -i'
# alias mv='mv -i'

#aliasDebianToolkit
alias ls=' lsd '
alias hash-id=' python3 /root/DebianToolkit/box/hash-identifier/hash-id.py '

#prompt
export PS1="\[\033[38;5;196m\][\[$(tput sgr0)\]\[$(tput bold)\]\[\033[38;5;46m\]\u\[$(tput sgr0)\]\[\033[38;5;11m\]:\[$(tput sgr0)\]\w\[$(tput sgr0)\]\[\033[38;5;196m\]]\[$(tput sgr0)\]\[\033[38;5;46m\]🡆\[$(tput sgr0)\] \[$(tput sgr0)\]"
