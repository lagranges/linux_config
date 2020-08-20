PS1=$PS1'[\d - \A]\n$ '
function _go {
	cd `find /mnt/d/Programming/ -name *$1* -okdir realpath {} \; -quit` 
}
alias go=_go
alias lrt="ls -lthr"
PATH=~/.local/bin/:$PATH
export LINUX_CONFIG=/home/$USER/linux_config/
function _synch_vim {
	local pwd=`pwd`;
	cd $LINUX_CONFIG && rsync -a --update ~/.vim/ .vim && cd $pwd 
	cd $LINUX_CONFIG && rsync -a --ignore-existing ~/.vim/ .vim && cd $pwd 
}
alias synch_vim=_synch_vim
alias gcfg="cd $LINUX_CONFIG"
alias rs="source ~/.bashrc"
alias gg="git pull --rebase && git push"
export PATH="/home/$USER/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
function _mark() {
	pwd &> ~/.mark_$1
}
function _go_to_mark () {
	cd $(cat ~/.mark_$1)
}
alias m="_mark"
alias gm="_go_to_mark"
_copy_clipboard () {
	cat $1 | clip.exe
}
alias cpc="_copy_clipboard"
alias psg="ps aux | grep "
