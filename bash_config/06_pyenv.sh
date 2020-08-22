PYENV_BIN_DIR=/home/$USER/.pyenv/bin
if [ -d "$PYENV_BIN_DIR" ]; then
	export PATH="$PYENV_BIN_DIR:$PATH"
	eval "$(pyenv init -)"
	eval "$(pyenv virtualenv-init -)"
fi
