
# Aliases
alias gs='git status'
alias gl='git log'
alias gc='git commit -m'
alias gca='git commit -am'
alias ga='git add'
alias gaa='git add .'
alias g-wip='gaa && gc "wip"' 



# Funtions

function commit {
	gaa && gc $1
}