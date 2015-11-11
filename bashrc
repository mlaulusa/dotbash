set_prompt (){
	Last_Command=$?
	bldblk='\e[1;30m' # Black - Bold
	bldred='\e[1;31m' # Red
	bldgrn='\e[1;32m' # Green
	bldylw='\e[1;33m' # Yellow
	bldblu='\e[1;34m' # Blue
	bldpur='\e[1;35m' # Purple
	bldcyn='\e[1;36m' # Cyan
	bldwht='\e[1;37m' # White
	Blue='\[\e[01;34m\]'
	White='\[\e[01;37m\]'
	Red='\[\e[01;31m\]'
	Green='\[\e[01;32m\]'
	Reset='\[\e[00m\]'
	FancyX='\342\234\227'
	Checkmark='\342\234\223'
	IBlack='\e[0;90m'       # Black
	IRed='\e[0;91m'         # Red
	IGreen='\e[0;92m'       # Green
	IYellow='\e[1;93m'      # Yellow
	IBlue='\e[0;94m'        # Blue
	IPurple='\e[0;95m'      # Purple
	ICyan='\e[0;96m'        # Cyan
	IWhite='\e[0;97m'       # White

	if [[ $Last_Command == 0  ]]
	then
		PS1="$Green$Checkmark$Reset "
	else
		PS1="$Red$FancyX$Reset "
	fi

	if [[ $EUID == 0  ]]; then
		PS1+="$Red\\h \d \@ [\u]-[\h] ❯ [\w]\n  ➝  "
	else
		PS1+="$IPurple\d \@ $Reset[$bldcyn\u$Reset]-[$IBlue\h$Reset] ❯ [$Green\w$Reset]\n  ➝  "
	fi
}
PROMPT_COMMAND='set_prompt'

source ~/.bash/alias

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad
alias ls="ls -GFh"

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH
