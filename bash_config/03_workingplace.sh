function go {
	cd `find $WORKING_DIR -name *$1* -okdir realpath {} \; -quit` 
}
