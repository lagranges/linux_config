PS1=$PS1'[\d - \A]\n$ '
function _go {
	cd `find /mnt/d/Programming/ -name *$1* -okdir realpath {} \; -quit` 
}
alias go=_go
alias lrt="ll -alh"
PATH=~/.local/bin/:$PATH
export LINUX_CONFIG=/home/lc888093/linux_config/
function _synch_vim {
	local pwd=`pwd`;
	cd $LINUX_CONFIG && rsync -a --update ~/.vim/ .vim && cd $pwd 
	cd $LINUX_CONFIG && rsync -a --ignore-existing ~/.vim/ .vim && cd $pwd 
}
alias synch_vim=_synch_vim
alias gcfg="cd $LINUX_CONFIG"
alias rs="source ~/.bashrc"
alias gg="git pull --rebase && git push"
export PATH="/home/lc888093/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
