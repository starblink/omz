#!/bin/bash

#安装zsh
apt update
apt install -y zsh

#安装oh my zsh
rm -rf $HOME/.oh-my-zsh
rm -f $HOME/.zshrc*
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


#安装zsh-autosuggestions插件
git clone git://github.com/zsh-users/zsh-autosuggestions $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions
sed -i 's/fg=8/fg=10/' $HOME/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

#安装zsh-autosuggestions插件
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $HOME/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

cp $HOME/omz/ubuntu_zshrc $HOME/.zshrc

cd
source $HOME/.zshrc

