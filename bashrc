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
