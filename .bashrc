git_branch () { git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'; }
short_location () { pwd | sed "s#\(/[^/]\{1,\}/[^/]\{1,\}/[^/]\{1,\}/\).*\(/[^/]\{1,\}/[^/]\{1,\}\)/\{0,1\}#\1_\2#g"; }

TIME='\e[37m\t\e[m ' # light grey
USER='\e[35m\u\e[m ' # magenta
HOST='\e[36m\h\e[m ' # cyan
LOCATION='\e[34m$(short_location)\e[m ' # blue
BRANCH='\e[00;33m$(git_branch)\e[m\n\$ ' # yellow
PS1=$TIME$USER$HOST$LOCATION$BRANCH
PS2='\[\033[01;36m\]>'
