#安装zsh
apt update
apt install -y zsh

#安装oh my zsh
rm -rf ~/.oh-my-zsh
rm -f ~/.zshrc*

sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#安装zsh-autosuggestions插件
rm -rf ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions.git ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
sed -i 's/fg=8/fg=10/' ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

#安装zsh-autosuggestions插件
rm -rf ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting

#为vi-mode插件设置 快捷键 ^d ^y ^o ^k
sed -i -e '/bindkey .* end-of-line/{n;N;/delete-char/!r ./bindkeys-for-vi-mode.txt' -e '}' ~/.oh-my-zsh/plugins/vi-mode/vi-mode.plugin.zsh

cp ~/omz/ubuntu_zshrc ~/.zshrc

source ~/.zshrc
