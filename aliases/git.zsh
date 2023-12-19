
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
	branch = $1
	git checkout branch
	if [ $? -eq 0 ]; then
		echo "checkout $1"
	else
		echo "Branch não existe, deseja criar y/n"
		read "Do you wish to install this program? " yn
		case $yn in
        	[Yy]* ) echo "yes";;
        	[Nn]* ) exit;;
        	* ) exit;;
		esac
	
	fi
}