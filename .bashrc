git_branch () { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'; }
short_location () { pwd | sed "s#\(/[^/]\{1,\}/[^/]\{1,\}/[^/]\{1,\}/\).*\(/[^/]\{1,\}/[^/]\{1,\}\)/\{0,1\}#\1_\2#g"; }

# Variables below are P for prompt to avoid overriding environment vars used by other processes
PTIME='\[\033[37m\]\t \[\033[m\]' # light grey
PUSER='\[\033[35m\]\u \[\033[m\]' # magenta
PHOST='\[\033[36m\]\h \[\033[m\]' # cyan
PLOCATION='\[\033[34m\]$(short_location) \[\033[m\]' # blue
PBRANCH='\[\033[33m\]$(git_branch)\[\033[m\]\n\$ ' # yellow
PS1=$PTIME$PUSER$PHOST$PLOCATION$PBRANCH
PS2='\[\033[01;36m\]>'
