git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir -p ~/.vim/colors
cd ~/.vim/colors
curl -O https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim
echo "so ~/linux_config/vim/vimrc" >> ~/.vimrc
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle && git clone --depth=1 https://github.com/vim-syntastic/syntastic.git
