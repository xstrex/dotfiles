## Zsh
install zsh

### Install oh-my-zsh

```sh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
### Download zsh conf
```sh
wget https://raw.githubusercontent.com/xstrex/dotfiles/main/.zshrc -O ~/.zshrc
```

### Download zsh theme
```sh
wget https://raw.githubusercontent.com/xstrex/dotfiles/main/morphx.zsh-theme -O ~/.oh-my-zsh/custom/themes/morphx.zsh-theme
```

### Source env
```source ~/.zshrc```

## Tmux
install tmux

### Download tmux conf
```sh
wget https://raw.githubusercontent.com/xstrex/dotfiles/main/.tmux.conf -O ~/.tmux.conf
```

### Install TPM
```sh
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
```

### Download tmux theme
```sh
wget https://raw.githubusercontent.com/xstrex/dotfiles/main/morphx.tmux -O ~/.tmux/plugins/morphx.tmux
chmod 755 ~/.tmux/plugins/morphx.tmux
```

## VI
install vim

### Install Vim-plug
```sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### Install VIm Pathogen
```sh
mkdir -p ~/.vim/autoload ~/.vim/bundle && curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
```

### Download vimrc
```sh
wget https://raw.githubusercontent.com/xstrex/dotfiles/main/vimrc -O ~/.vim/vimrc
```

### Launch vim
```:PlugInstall```
