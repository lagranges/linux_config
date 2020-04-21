sudo apt install python
sudo apt-get update
sudo apt install pip
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
			 libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
			 xz-utils tk-dev libffi-dev liblzma-dev python-openssl git
curl https://pyenv.run | bash
pyenv install 3.7.0
pyenv virtualenv 3.7.0 py370
pyenv shell py370
        
        
        
        
        
