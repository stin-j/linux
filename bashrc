#By default, Linux hides very sensitive files. One of them is bashrc located in the home directory of the Linux operating system. 
#A shell is a term used for interacting user interface with OS. A shell is a command interpreter (in some systems) that accepts user’s commands and runs them to execute operations.
#There are two major kinds of shells:
#C Shell – if you are using this type of shell, the % character is the default prompt.
#Bourne Shell – the main prompt for this kind of shell is $ character.
#The Bourne Shell has the following subcategories:
#Bourne Shell (sh)
#Bourne Again Shell (bash)
#Korn Shell (KSH)
#POSIX Shell (sh)
#1. Change the Color on bash Command
#If you wish to change the color of your shell prompt, type the following export command:
$ export
PS1=’’\e[0;31m[m[\u@\h \W]$
\e[m “

#One popular setting is to colorize the output of the "ls" command so that different file types show up differently.  There is already an option to do that:
ls --color=auto

#To make this happen whenever you run it, you can make it an alias:
alias ls="ls --color=auto"

#common prompt commands
\d    The date, in "Weekday Month Date" format (e.g., "Tue May 26").
\h    The hostname, up to the first ‘.’.
\H   The hostname.
\t   The time, in 24-hour HH:MM:SS format.
\T  The time, in 12-hour HH:MM:SS format.
\A  The time, in 24-hour HH:MM format.
\u  The username of the current user.
\w  The current working directory, with $HOME abbreviated with a tilde
\W The basename of $PWD, with $HOME abbreviated with a tilde.
\!   The history number of this command.
\$   If the effective uid is 0, #, otherwise $.

#MY BASH PROFILE
================
# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin
PS1="[\u@\h \W]\$"
EDITOR=nano
export PATH PS1

#MY BASHRC
==============
# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
# colorize ls"
alias ls="ls --color=auto"
# long listing in ls
alias ll="ls -l --color=auto"
