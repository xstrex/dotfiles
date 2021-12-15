## Zsh
install zsh

### Install oh-my-zsh

```sh
wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh
sh install.sh
```
### Download zsh conf
```wget https://raw.githubusercontent.com/xstrex/dotfiles/main/.zshrc -O ~/.zshrc```

### Download zsh theme
```wget https://raw.githubusercontent.com/xstrex/dotfiles/main/darkblood2.zsh-theme -O ~/.oh-my-zsh/themes/darkblood2.zsh-theme```

### Source env
```source ~/.zshrc```

## Tmux
install tmux

### Download tmux conf
```wget https://raw.githubusercontent.com/xstrex/dotfiles/main/.tmux.conf -O ~/.tmux.conf```

### Install TPM
```git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm```

### Download tmux theme
```sh
wget https://raw.githubusercontent.com/xstrex/dotfiles/main/tender.tmux -O ~/.tmux/plugins/tender.tmux
chmod 755 ~/.tmux/plugins/tender.tmux
```

## VI
install vim

### Install Vim-plug
```curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim```

### Install VIm Pathogen
```mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim```

### Download vimrc
```wget https://raw.githubusercontent.com/xstrex/dotfiles/main/vimrc -O ~/.vim/vimrc```

### Launch vim
run: :PlugInstall
