
# Aliases
alias gs='git status'
alias gl='git log'
alias gc='git commit -m'
alias ga='git add'
alias gaa='git add .'
alias g-wip='gaa && gc "wip"' 



# Funtions

function commit {
	gaa && gc $1
}

function cbranch {
	git checkout $1
	if [ $? -eq 0 ]; then
		echo "checkout $1"
	else
		printf '\nBranch não foi encontrada, gostaria de criar-la (s/n)? '
		old_stty_cfg=$(stty -g)
		stty raw -echo ; answer=$(head -c 1) ; stty $old_stty_cfg # Careful playing with stty
		if [ "$answer" != "${answer#[Ss]}" ];then
			echo "\n"
		    git checkout -b $1
		else
		    echo "Branch não criada"
		fi
	
	fi
}