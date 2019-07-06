#! /bin/sh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install asdf version manager
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.2
mkdir -p $HOME/github
git clone https://github.com/vasuadari/.zshrc.git $HOME/github
cp -r $HOME/github/.profile.d $HOME/
ln -n $HOME/github/.zshrc $HOME/.zshrc

