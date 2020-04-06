function _go {
	cd `find /mnt/d/Programming/ -name *$1* -print -quit` 
}
alias go=_go
