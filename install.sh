#!/bin/bash 
# Would have been cooler in ZSH but I know only bash 🤷
EXECUTION_PATH=$(pwd)

brew install starship fzf nvim pyenv pyenv-virtualenv direnv fnm jq

if [[ ! -d ~/.zsh ]]; then
	mkdir ~/.zsh 
fi

cd ~/.zsh
! git clone https://github.com/zsh-users/zsh-syntax-highlighting.git && ! git clone https://github.com/zsh-users/zsh-autosuggestions.git && ! git clone https://github.com/zsh-users/zsh-completions.git
cd - 1>/dev/null

echo ""
echo "$EXECUTION_PATH/.zshrc -> ~/.zshrc"
ln -s $EXECUTION_PATH/.zshrc ~/.zshrc
echo "$EXECUTION_PATH/.zprofile -> ~/.zprofile"
ln -s $EXECUTION_PATH/.zprofile ~/.zprofile

if [[ ! -d ~/.scripts ]]; then
	mkdir -p ~/.scripts/
fi

for script in $EXECUTION_PATH/.scripts/*.sh; do
	[ -e "$script" ] || continue
	SCRIPTNAME=${script##*/}
	echo "$script -> ~/.scripts/$SCRIPTNAME"
	ln -s $script ~/.scripts/$SCRIPTNAME
done

if [[ ! -d ~/.config/nvim ]]; then
	mkdir -p ~/.config/nvim
fi
for nvim_config in $EXECUTION_PATH/.config/nvim/*; do
	[ -e "$nvim_config" ] || continue
	CONFIGNAME=${nvim_config##*/}
	echo "$nvim_config -> /.config/nvim/$CONFIGNAME"
	ln -s $nvim_config ~/.config/nvim/$CONFIGNAME
done

echo "$EXECUTION_PATH/.config/starship.toml -> ~/.config/starship.toml"
ln -s $EXECUTION_PATH/.config/starship.toml ~/.config/starship.toml 
