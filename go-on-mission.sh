
copyConfigs(){
 cp .vimrc ~/
 cp .bash_profile ~/
 cp .bashrc ~/
 cp .bash_prompt ~/
 cp .bash_aliases ~/

 cp -r .emacs.d ~/
}

installPathogen(){
  mkdir -p ~/.vim/autoload ~/.vim/bundle && \
 curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
}

installDotfiles() {
 copyConfigs
 git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
 
 git clone https://github.com/altercation/vim-colors-solarized ~/.vim/bundle/vim-colors-solarized

 installPathogen
}

configureGitDiff(){

 echo "|=============================================|"
 echo "| [info] : Installing .git config.            |"
 echo "|=============================================|"

 #sudo touch /usr/local/bin/git_diff_wrapper
 sudo tee -a /usr/local/bin/git_diff_wrapper  >/dev/null << 'EOF'
				#!/bin/sh
				vimdiff "$2" "$5"
EOF
 sudo chmod 777 /usr/local/bin/git_diff_wrapper
}

installVundleDeps(){
 echo "|===================================================|"
 echo "| [info] : Installing dotfiles vundle dependencies. |"
 echo "|===================================================|"

  vim +BundleInstall +qall

 echo ""
 echo "[info] : Installing dotfiles vundle deps seems successful."
 echo ""

}


onInit() {
 installDotfiles
 installVundleDeps 
}

onInit
