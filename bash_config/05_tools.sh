function _mark() {
	pwd &> ~/.mark_$1
}
alias m="_mark"
function _go_to_mark () {
	cd $(cat ~/.mark_$1)
}
alias gm="_go_to_mark"
_copy_clipboard () {
	if command -v clip.exe &> /dev/null; then
		cat $1 | clip.exe
	else
		cat $1 | xclip
	fi
}
alias cpc="_copy_clipboard"
