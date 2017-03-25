#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'


_get_ps1() {
	local ec=$?
	local c1='\[\e[31;1m\]'
	local c2='\[\e[32;1m\]'
	local c3='\[\e[33;1m\]'
	local c4='\[\e[34;1m\]'
	local c5='\[\e[35;1m\]'
	local nc='\[\e[0m\]'
	echo -n "${c3}\u@ \h${c5} ($0): ${c4}\w\n"
	if [[ $ec == 0 ]]; then
		echo -ne "${c2}^_^"
	else
		echo -ne "${c1}>_<($?)"
	fi
	echo -n "${nc}(\@)\$ "
}
export PROMPT_COMMAND='PS1=$(_get_ps1)'
export ENV='~/.bashrc'
