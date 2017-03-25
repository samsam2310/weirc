#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

_exitcode() {
	if [[ $? == 0 ]]; then
		echo -ne "\e[32;1m^_^"
	else
		echo -ne "\e[31;1m>_<($?)"
	fi
	echo -ne "\e[0m"
}
export PS1='\e[33;1m\u@ \h\e[35;1m($0): \e[34;1m\w\n$(_exitcode)(\@)\$ '
export ENV='~/.bashrc'
