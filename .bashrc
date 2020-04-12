function _go {
	cd `find /mnt/d/Programming/ -name *$1* -okdir realpath {} \; -quit` 
}
alias go=_go
PATH=~/.local/bin/:$PATH
export PATH="/home/lc888093/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
